Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C9243147
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751224194; cv=none; b=HlcD4no39zBgTy+M9dC8uRAqjAQbcvcST0RJiPjAWzjjETIvv1ScTcdtYkdVAAEAhCDVEtzH0P7bhOFvicu+z7CDYN1Pu9VyNdlbwII5YHdZQjKlnfpslSPJpuS925kARFhWdAkshGv7srs3aIfCm5nQ/tqie4CVsL9AZTNiyaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751224194; c=relaxed/simple;
	bh=G8owWzBIxSeDy5mvNRsIvszNozjbbrqpxFUobgwH02o=;
	h=To:Subject:From:Message-Id:Date; b=O0uJEP9NfnljztQiaYZfhwU9mVVCwjwzGdc1sJSo1OTZwZd4SbxCCZBpg0q4GVuoxIF737TJj/JMh9ugVSTd9fUn2xp5yecP4K5wNFy22dRmjN8t5R7tVpesbiwmhPeHprJG5mZ3L949bYh16OZxEkgwpGDclSyeXUMBMb4haC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cyCCIbf3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cyCCIbf3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0254C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751224193;
	bh=G8owWzBIxSeDy5mvNRsIvszNozjbbrqpxFUobgwH02o=;
	h=To:Subject:From:Date:From;
	b=cyCCIbf3m1E9D0tHhgdAkj6qyjbFOuVqQMvRH/yldAM3ewFPoiJZYo5+P6Dbwac6z
	 kqC+x0vxw6i5JbN9FrkDJp4ZNje4rEksiOE7ADxKojkNE1+gNZxJV3O/VLutEyWT+3
	 b++YPCrExo2+085OoPDmX5dZCxrs7jGv/nOAFKatFzRvFmUn2aOFzxBj1dK55wPf1r
	 LtrYuS3WqQ5hhKyuktBEyidInSNo3DO4tHbQt+fbTjOiiVofbsKKrYlAXTyzDWt9u5
	 aXvrxAZsQY+czz3v8vH+unpa1Kx8P+S8mbiYDl484uBjKO+n3/ScgHzceoen0czJqR
	 WSGdHzAr6WrKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E951C7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175122419357.4371.13434505488732444975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab8db4ffa83cf11cbc34a208f43039433d62cce79ffae3abc7a20e1a5a9db2ad
Date: Sun, 29 Jun 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751224193
