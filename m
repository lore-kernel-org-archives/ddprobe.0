Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0C8531770C
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755287393; cv=none; b=Eda+lFPBFulqONj8wZ8YGFNSJtplTGomoQ9DcD2+c3ttF1bXGujGibPQpv3f/nIvLyY/WfPI+j+EVMLm0SQVmm/qvqq9O+h6yzFDzJ2Wua1KRaOaprvx2dMhxCxaNUqYgiaZY3L0n66IZLsdSN4ha7K2u6UkzeZqJl12t2kCodI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755287393; c=relaxed/simple;
	bh=dxCNQWGJ+Rl3mjXq5v1pXVR+fmn1wrgmur2JfGADPCg=;
	h=To:Subject:From:Message-Id:Date; b=IHrcOTzzGo3yFSCciIPrK3xTey04k41W8zLGWxX9Y7aRYO6HHKywGwSlTkKubYqpoHwaRIrrpxivMnCcC9y475FNV1KgqKnXW6v8Y8pdmaM09lF7FaARUqzyLZ8eeURlnakXz0z8jaBAiwFdn4VCf9SVK9ObSB1h+OJOCqfSqNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IM2v+OcO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IM2v+OcO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0495C4AF0C
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755287393;
	bh=dxCNQWGJ+Rl3mjXq5v1pXVR+fmn1wrgmur2JfGADPCg=;
	h=To:Subject:From:Date:From;
	b=IM2v+OcOLjYuhfTTheLQiHCX6NJnyWjMoEn8391BeTN/R61ibS+Kp7gh306bYvFol
	 p5UWkmqTjGlgiMpfGKkVSdNU8yiPXDZYUNTU+m6fYfVHIsp/D/BdtQqiFkCqEw2Qra
	 W6W6d/o5BgFvEJ7/ahHrwGO6ZGLhqXZKhb1uB4GmDc0UlaTWLOx04y85zIC5vYuHjO
	 R16WL6GYnK5tgG8VYPuroiOKHB0vUMlrD/iNhEyMhrKpSYGmz6/QR5RMjGyop8vWbV
	 dSm5M/CQWtewSWjrsBLyCYnlcC+2VKWSeCLAkUSw09aM/sV3LxtCRfJsCVQtl55J8R
	 k/U5YV4PdYDMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F68ACA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175528739357.24701.6405187415362199172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbfd57f1aff4f37ade7ed0ae56b8881c82fda1de0c64df8ca055d2067e8a47f9
Date: Fri, 15 Aug 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755287393
