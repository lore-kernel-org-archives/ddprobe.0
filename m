Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07496154BF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765961634; cv=none; b=jK9ACozTS8hnez+Uj1ciOHxzGe7bx4iy2+2QqNje70UslJX5ByJWCRvUIh3qI1bAps3eUEh1XzFR8niHswNEDot45vD+9x0m9inNdn7ouLmU+CDK+M4lEnRDoRF9e2JgVNu3VZZEx28rwrZsXPGRVDuCgn47J7k5VkxlDp/ZCK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765961634; c=relaxed/simple;
	bh=GiqfxQbf3nnGIbD2Afluup1JF+Nxj5CmnjVoWAf4cug=;
	h=To:Subject:From:Message-Id:Date; b=E7BqV7ZIUjeuXOU5P1WpRZB5NonpGhN+uNhKb03y2pkaV2lKHGwlRFQEYTYs5eSZt5xJiA4LDgAvkGRVd8a+1OtW/h0tHtEj3+Ai9E0oA68UmN6wPdec6gRYdHTwELMZB0JprMSAbxgDEiPoqhKOvnmeByScuwZo2hko8MxMT/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VhCbGHst; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VhCbGHst"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3AFC19421
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765961633;
	bh=GiqfxQbf3nnGIbD2Afluup1JF+Nxj5CmnjVoWAf4cug=;
	h=To:Subject:From:Date:From;
	b=VhCbGHstCFjnhfO9sk+od2KgqveAewZUnkJgY9gpDm6nIIqsegtdT+QBC3TosPVuk
	 xHg7bMgNhmW3GTy8bPt1DHeSBCrwQ8KmuU5ZEnRXHnsdJujk5ev216PoxfOVBle3ti
	 TFAE7ATzaIGK2eA0pKfnIFE4ksBGPd8CDdVx2qZxi+fEwO31xwSIBz7X3XgFYjo8Ch
	 +3823FcWnli3QrEufSmETLsUTGaUn7pl1RpgYvXhJMfoqaJCfjqANxMg33ZbRD8feZ
	 M2LYKLt7efjUALINdwZszex/Jem4H2l3OZMbo1uNNU4tyb1mSGCP73O1rJfwdXfhvn
	 nGpAh90QZrrzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FB6D64096
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176596163358.28438.18293152961871151073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff572484fd7c83f6209b2b281bceec9c02dd1db13193553b384a6721d42f8128
Date: Wed, 17 Dec 2025 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765961633
