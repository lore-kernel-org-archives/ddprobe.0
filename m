Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 717533A1A55
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786212034; cv=none; b=uJKU3TVwypdNimSuP7jXbAXelaf//9onjs1VD8cqGuhUMKgFp3LHCfX/uk/oJRoy0K6wEX0NLoNZMYVslxob887/909ol1QGLzrkxN1MTaZ1oBziw2PonG2BVWpw34SMN3FPgfobavcUfSaUAZm4Fh4c2bm567EBt+8lijpKEdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786212034; c=relaxed/simple;
	bh=ag1lrpUivb9ZCTVCXwRMLkHXnipHKR/YOemS5U2cNcg=;
	h=To:Subject:From:Message-Id:Date; b=PQn3WymVlrblPcQnQCQ/DLoMevohRYeaCrYwFXf6MtaE1XwMRAx73N02f8GNW1dm6Ke6VEv2nsXl/yP6CKtMts8Cmp5c2HwahTFLcYL16UYZ3khZ7E9NHASfL/pKgRFNeH4YE9fX7/3Tp7NiHvpJIP2Z2RGFC66lfWiv40X5IRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CA8CxfMl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CA8CxfMl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D201FC2BCF6
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786212033;
	bh=ag1lrpUivb9ZCTVCXwRMLkHXnipHKR/YOemS5U2cNcg=;
	h=To:Subject:From:Date:From;
	b=CA8CxfMlFDgHTWBWLMkqi2wH1WLHtSJM3IpEbO/w47XwaS6fv381B5GrXnJsd2xG4
	 DvIeK1dnc98erm4aSpG2R7phAvdNW8mlIbEsYXO/d9gRjdLVFkknl+IU6Q98QFYxbg
	 xxuMko+k1J/smXxvRgPmFHF9pfu1xi/L8UrUvMQFPRNJBlJoPCFErE2XiSeoBG1cLw
	 L3enEwTt3yoHySTZq4pgAjxpxhtwpP2yy6Kg5WomGkFkzVb9Q/9xqGcesvI8dqGI/6
	 vw7IHwPaYF4jo4euUHg4kIpVria1ZvAblOOZ36wzR5wc4/frJNUQZ6vuuirfXTbB6K
	 TCDauRBBx5EMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF32C5AD2C
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178621203369.3366.2720776357332170259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec02086e8a3a72db4a4c0f50878b20914ab32af8cab36dbd987aba3ccd7a386a
Date: Sat, 08 Aug 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786212033
