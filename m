Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5CF297B9B
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747306194; cv=none; b=YwEzQX90ogJRkZPfOKvWVzYqsbloIoCf+EjCJeVsriBvCRT51aviwX7ezG2V/G6TNSos9ry+Wr4hCyTtvA+B4ttovoMEd4JYB6kkk7UN4si+RgyIvQz0gu2vkAXKK5BihGefRToeL+cLAzKXiw/57Jr50WCy5O+roEQltSuKeek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747306194; c=relaxed/simple;
	bh=pgU8jgjPVnpSVcy2u9VB6JOY5MycE/huN/VFNyLn5QA=;
	h=To:Subject:From:Message-Id:Date; b=FTaPbbBB4WbLEq+0dCl201dxB/2qrjs0KF4zTi5yGbyiEeIbr5vW7nzNBlmYxSS1McTruw/GcswD4lDyrTVNWK1ubGx2kFIm2dqkIlQWMs6pcfmzlAo6D8agYAToRtzE3llBNM2rncyvBwosxNnfnLWYbGlGzNXoUT0k1fdS/vU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IbyRNwDv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IbyRNwDv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F893C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747306193;
	bh=pgU8jgjPVnpSVcy2u9VB6JOY5MycE/huN/VFNyLn5QA=;
	h=To:Subject:From:Date:From;
	b=IbyRNwDvayh34sBEGL+uuLIvxgK3H8UuqhvOtEbw4sNaGNEvFOv6sydegxHQGLzUe
	 gApNTvXcNT+QmTFtBVfUgKfg4oZ2aVHGk+yvcuWrGVe10H9v+uvq4tDyDT7PK63ukR
	 Q0AoWQsk+9sR1dvtRWFd+B373LoGDtuVs9SDrw6VSHMEvsCCIfCexQ+0LzsFhktyRV
	 cSmulkacyGkdqAgT0DU6Ru9Tn0WtorIPXu1S8SFsestob3nIjBEOtrCXw/t1A6fDzb
	 8aEU15Ldz7dN80np8k1YauVfiMtYMrmEdm3gG+EWuKUnwi3LZPbYTy4x8FveEq7CXj
	 ZM3gROdx9yyCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90062C3ABC9
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174730619358.31702.11153399467987573383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9062d12fac24a30f01ca0f3744708ba1292f5f8931ca3c61ef9327dcf12b1c16
Date: Thu, 15 May 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747306193
