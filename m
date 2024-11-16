Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C6B2A937
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 10:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731751554; cv=none; b=NgmDVzvEci21Mr189nuaOSM64Pf2Gxm4vDDZL2hBxQVJdZu1O0Gf7LfKua5ghFd6130fjedsKhEYZayNeWuOw9d6Cr5F3GQJm4+2dOKb940drc5CaoOxCBTqpJu0jISOwy6a/TOmXr0EueMbCgZp8KZhZfzveOUqaS20AnK86yE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731751554; c=relaxed/simple;
	bh=esahtwzOJRp8CS42ylWT8FImQAyt2R75Oe9SAIUNEt4=;
	h=To:Subject:From:Message-Id:Date; b=kFEnEE5cB39pcnVBL5TU+M5L7dUSxQ/w/Q2o31fpS5oPNP5xIBLd7XaAasec7mBUbZ4HpbQtu+4SeAkdY9Fur2WrvE2fnjrT+X4LKmxC9+g+1divYte6lv3jxg6YfH2ybp283UQ5RqOeBuvYlvsWb//RbQoaq/MEh1NP5RS8+DY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tK8RT/5q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tK8RT/5q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0EFCC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731751553;
	bh=esahtwzOJRp8CS42ylWT8FImQAyt2R75Oe9SAIUNEt4=;
	h=To:Subject:From:Date:From;
	b=tK8RT/5qA2ZrdtWp4DQ+B8c3RHrQbXUBTMZfAj72esV4hTzdWCEGtGcPXu+9/0irC
	 vzwB18SV1QCwtaOmvPPlFUO3QVVpsxsaoc4GqVRH12Kc6LWOuqAlSgH/xnopC5FoD7
	 FCiZkKgMQ/wSa6CUNVVR9TQH9wbWz9KtTIkos9I9LJXy/7mN50tmOddrgOL9X5q3oM
	 Eh+S8Rp3rPc7ergjcV66s/nfyGXSZ3HDkp+dc2e6imTKqr1YZmhjNDHdbysFX00G2C
	 0op8HVwD2aJmDc+P+HlovH5r76pGqHzEqF6K+p04A3NEj2ruaBB5OiERCWEYxFhf8F
	 F5AzradbsLo1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C21C3D68BE5
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173175155377.6858.15999769499589090518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 424bf82d2312bbf91995e4fad89b4f880b6c90f6515848af3f6131d6a293a944
Date: Sat, 16 Nov 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731751553
