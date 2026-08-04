Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62E89377ECF
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785822034; cv=none; b=lPC7zkmj99KrjVRBB65GIYbQucI20ggdRLRoUl8rhsB3wVnTHPJ9KRUgmDpEo7XsPlu28a8LlgECpY9o3clD3zzAWqU2w8n3urcE11X7T7x+MLa76AoUkpydkVIxyoozPXlZkP3CGHI6EzloMA2l7vrtr1AgLc+LdqGEliPgtV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785822034; c=relaxed/simple;
	bh=NOumLiRROmtXRQTs9EFve2Is3j+JwToXLuUZ2fLDwsM=;
	h=To:Subject:From:Message-Id:Date; b=J+g6gsXDfBEslR3kAUdrrC26PfrXgEz+hLVbnr1CQh29S/2eXu/2Rg3cgmvyhCVZ96aRUnWO1/6t6sYM2AKhcmI80eTt8QtepDRNQD7j8CvHNWXopy27J754xYWGMjPgwy3iLpH3WwhW1sJcSwAjZcYmM9fGCbh8H2vzxCUtQ7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klvXzZyg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="klvXzZyg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B66C2BCF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785822033;
	bh=NOumLiRROmtXRQTs9EFve2Is3j+JwToXLuUZ2fLDwsM=;
	h=To:Subject:From:Date:From;
	b=klvXzZygxKYJoj9yFz2TwZELZTlaNiwnozD3bPgnUSex93XLczLLh1KtyJJesRnD5
	 SMc536c+6OYwXeffqL3q45UQFlihzwTdpgqVG0M5wy2EfXgLwH4HEI9VXU0sQjimd4
	 1MtvRiq8w6Zh4b6+QOOvWpVeH+QadrB0PYXWae1tzGEhNJY7qpm8jR2vlVhaUcWVwI
	 50fFC1AzGHvbZmyIm468b65MHRrFdFrm+g+dh+heBEideAlYyiyTl9i3RoH6d+jIqJ
	 ZYn1e+XlPTHmNOpBLs7yuRE/ujJjEMfTYuHBA2/vUYPX06uieCkGqEfQ7bw9itueWN
	 qnWu8S4zDsZAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9867C55822
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178582203368.29848.18049086243504774794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8394a34e222eb238b588e65f107b2ccbb4de7cc6e7d0233ca42266f7381d6024
Date: Tue, 04 Aug 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785822033
