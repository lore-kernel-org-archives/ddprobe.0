Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B2218B1A
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725713154; cv=none; b=h73RW9gsdIIujwPh6Wh2jKq2mvz0cKuLfMfzu7Zgt86gSzo1GFprMjNaypECG7qu2wHA5Y4GO0HuqIQGhKYm5HAP37e6/WgLAkmp6+ZooZ+khRvI7ZRtQ96cY8+IjMTerDYRh2b7OwETu5Ucdd1pj+WnD0r3wyZnKTGjYhh3BgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725713154; c=relaxed/simple;
	bh=ptqjZ4sOgMchFeIbBAdVr8ZHbWPKQgD7RT9oLYOg3wQ=;
	h=To:Subject:From:Message-Id:Date; b=X4fdQEqHm8Cvf31xbG0mvK6ZHhqnQwEhgZk0Rl3gvdH/XGzrzWB7bDUfRbJCR2VzAYs5TkCYRHggaHJI/WaHxAX/ubCRR9JZXHLGQT2ZPg0tSlfIc1Zwotigm8+YorLIFhoQPGE4TejwKgw98EMhjm/vZA8hJNGfhj4idYEJiRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ikrXCskg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ikrXCskg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54F4C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725713153;
	bh=ptqjZ4sOgMchFeIbBAdVr8ZHbWPKQgD7RT9oLYOg3wQ=;
	h=To:Subject:From:Date:From;
	b=ikrXCskgz5ZgJm5027AxY1pl1nFJVzgS55Q1OhRFy8GRKWhzqlsweyqiPw6E9GmC9
	 Vvv6W2lfL2hCn2853C2OcBseaL7FauuqSUFobBsENR8H7oqx0ypfy3b/h+6GDhX5j2
	 cN6qSrsIQG8/TMIP3g/6080dYEG1FSxmechMEoTUJRRaisTnyn1gMX306PD8bhrWqG
	 uAKCSOfeA4f5hUH+8ndP6HxPOySbxsLecVNPrD9flLByrNaIEA6iC8b96ev4+ZgDnK
	 rJIfxq3KCcoNUZpqc2R5Tjpu/wUJra8GH7OTjH2ox+GrZH6/j7zeBNNYjNM5WOnAL0
	 sDBpJMb4QAFjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916E0E71080
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172571315357.6829.15252834278706289203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fd465043d093fe5091e76139e7cde8f8e2da50a137dca6a131b940f19050977
Date: Sat, 07 Sep 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725713153
