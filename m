Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368CE8F49
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 18:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765564974; cv=none; b=gUvNKQx0eXhQNUepv8sxfuQ4aYuVcJwMxWXfqre+ITOrq35dQL8JUs61EJDTIO5V6ChCIqTsPzZrXaTWB7eSlg+9K2li31E/dNvSkaadMEVx9trdUYqgdmVmO8l6mjfHK0EYQ5B034CaUXcg6QMqAzGnt28FkhsWKpWWGRInVhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765564974; c=relaxed/simple;
	bh=n6WkYDVfu+9TGIwjD1o9Z9pbSzfLPwxodk11Q42ZLZI=;
	h=To:Subject:From:Message-Id:Date; b=tz9McM6c1OA6TJ/F3SIwvdnUVJwuqLudEAJVvsoWQp90WzB4si5ks963pYTssbdeUZ35kACtnkyuEhfBEU7ONOMjp9FF5meCQEbHexzv8QfbMYHw+G7zqc8vCpTSSgCYztxQuXKLaQUd4effi8iIBXwOzmyFN3FpkaHj77oLEcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WjvD4gHC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WjvD4gHC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D99C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 18:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765564973;
	bh=n6WkYDVfu+9TGIwjD1o9Z9pbSzfLPwxodk11Q42ZLZI=;
	h=To:Subject:From:Date:From;
	b=WjvD4gHCo3hYJhDVmnMPGnxHYqXGZcQ3+A7v02CpJeppyClts7Rg458MtSvr8EB6j
	 1RZ/i3ogc13zZ5WD2bXAqZ6FFOJRO44UjKEdZwCj124j3vDNl937UaymBOYzeSqM15
	 LNoSGntb3iulowQXFFPZNagMT79SjpW+uS1E1sTDq39QnT/BmJNmpsmFVDrqd0cOAi
	 CdVzKPPuZVdx0W4eVPY6Gsis1p9y4/MSkg0qH32w/lNJQXyEpDqDs51rRNmTfPy6ke
	 BHG+BPmYXnh8e3oLNyweL3hMeFc9P6iOY03FVPRM0s6G464LbSqwdNkfxEvpssahx6
	 sE9+hmV/UOveQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9275ED59D84
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 18:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176556497359.26096.13164604712102499911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d34d2ebd1efa644ca45b260efd6fcd00664d7dfd2ca63e0dd55f7d3ffcf51538
Date: Fri, 12 Dec 2025 18:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765564973
