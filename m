Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3298E155321
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735838754; cv=none; b=RyDr+icuoyr7/mgCQXGVYC577AcIDS5Uwc40KrKzb+TmDec+E67EZYgU1FpAeDp+hexpLqJZ62Xzsomijkb9gvV5JXCr36UXSU5rMu+6Dp/cfiGa+BFaJGCgzJvko+c4JixR38tQXECQOSl6B9YxOZlhQnOoKyclEBqdBeWsvxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735838754; c=relaxed/simple;
	bh=0GVpsSS8a4aQczKvZq7UnOQRj5hT7szMx3PYv9SLCM4=;
	h=To:Subject:From:Message-Id:Date; b=QJPiZIUMK0nD4qxIgRF418bSZdSYtUclu2OJ+p5Ht7rZqTrRBuQUs1ayuoYgxoXAm1xOPIWmJCeMWyMAlse+CkAmhlF4ozuouZH7Nyn3zruQPrvAOBwPHmqTwsLulZSiQ0AXYamfehEbYJrGq28h3z8ASw66UACz2jVuRRKZs3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfqBz0Oj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfqBz0Oj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B032FC4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735838753;
	bh=0GVpsSS8a4aQczKvZq7UnOQRj5hT7szMx3PYv9SLCM4=;
	h=To:Subject:From:Date:From;
	b=sfqBz0Oj60cY6zVYX1w0+uik5d7NlCt80ugRsuov9q9W7JCbPOOQ9sYAHBJedV9A+
	 qi5Df1uqw4pDvxApnGDsER6zNMJMRBwDppObRVr4uOFURtdNdJjJICPesg2C72wrnP
	 l/nQFUAdqygLPQJWVVRhs2pXwVRpylQ58cpYZzZNR8A9h51lVVMFDuhlwxPWMr3zo2
	 t2AU4G9L05bivgAcoSj5+naKJ5ssbsWHnpsSeCSVa+B4or2tuK8QrnDQkhftMR7K/7
	 J3jBIKHTRKDBtuhduCDHnWMIBszVZRAvrne2Z+Z6JEOpx0OZ9N8ScQyqU44vniaBkm
	 X72HJxPgcW9Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E205E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173583875362.4917.10422281507998774323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30b293d10c693c1e39ef57fc59080b3a61461502e98cd3200029c8dd29ea918a
Date: Thu, 02 Jan 2025 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735838753
