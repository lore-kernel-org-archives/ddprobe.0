Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7AAD15442C
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744676993; cv=none; b=FWz2eGDvcpC5ZvO8XZBRZFLXAEMwI7cGQ+d0dze0T9fqZ9zvArDq0eIv4JFL31IgQsznMVjdhQJ2BqTWpUYdseGUyOIsLoD30ySVFEyyV4IW5hxsU/orncFtXX4rocqIIM47x9Uv6IwiB7qijyLusSWWzVRWT7Nf1pALbisDaCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744676993; c=relaxed/simple;
	bh=2dAUlrjkoRYKSqMrrhjgRoB65+7Scw+BjBxeheKYB34=;
	h=To:Subject:From:Message-Id:Date; b=ZXaKozAuRG191TqjFL2GQhoheEzEutwsMRUeUkFb/jhuC4WF+Jgb+8Ib8Qrn0nuwS9MYDWvDIoYPoH5htFL2wBQ9fCBcP7m1lyuXG5JwWRJle/xipff6oX78QhB5l75DN5yXYHA7npKKVe89eCzb8R4K7vzNkWJ4RhAUU2YXiDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t57aIyHR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t57aIyHR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA4B0C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744676993;
	bh=2dAUlrjkoRYKSqMrrhjgRoB65+7Scw+BjBxeheKYB34=;
	h=To:Subject:From:Date:From;
	b=t57aIyHRAuDlxAqD7O9YqaHQkOGXxy9xQwK3kG0SvH8uZ4iT2B+iEzA+oo2U1zlEY
	 6ZDzMe7xfmkNXkjynQlqRPUqLpcB9EBJ43/D9VxnW4C9u+zO3aP8C0Go/XMYR8KSeh
	 jEqYEw8+SlDS9pevDKFkMNtoD8WVQAYpSEBtS/LKL3Gv0tJXQea89PODB0GhplnPOR
	 Ti8apqWirT+rVW6cg14bsnaldqyONwbd3W/s/m46pojBkI2tsD4G+LZOgNsnqYMoY9
	 gEIoi7Mflx+MfpFwHf9NK5Qyu2JV26chULNF+rzZpRGSu20vyfMUWjzpqgsvhuWcP3
	 o3H+iAxQ3sgfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E0BEC369B5
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174467699363.24650.435017009057307075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1daf7c48b98b8b3b205bc8db9d1200b8d15bfe0aa7079fbb79321e4da38fbd44
Date: Tue, 15 Apr 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744676993
