Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268D217C2
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732384554; cv=none; b=Jg5TGK3THhR/fmcCfCNDlpwVgMmf9rrYti1ob4Qao24PqrOQ/Fa+YFWIMwimXNP8R1GyoxyfwWJt+B8YJ/5SjbQbvJG+4zJiFCaAlz1P5NbZWx5VeAHwPSq7WTVfzJWmMSlAItD7R1O1cOAzm9EfJ1m8Tte7byFiDVfnIlUx9Ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732384554; c=relaxed/simple;
	bh=1hjHb35g+mZ35ECHKmet1J9vmbjSlc6VPAQiJwME3xE=;
	h=To:Subject:From:Message-Id:Date; b=Li2yt4+IUBZLADRUzdfv5UWctN6tFt6V8hrwB/6wNKRR9D8RPVUcy2kIP0D8RN60k0iBU70zbP8pPzaZzAENKoOm861u1pZb0wkXuDrl3CHJBKY+8kCCKk/qzUeBhzygr2vm23cj4pmu61W/lrcSWMbKy6C3+re+uKdB2zlYx1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KZyPZH9c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KZyPZH9c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF559C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732384553;
	bh=1hjHb35g+mZ35ECHKmet1J9vmbjSlc6VPAQiJwME3xE=;
	h=To:Subject:From:Date:From;
	b=KZyPZH9cUfgPDHoBHxGDsub6M1BzAoXBoCskSSP+5l2pgSkWWEFaU42WDTkde+NvN
	 ge9il1RAySfuLix8jxlgOswrrYvHZiAfx/bh8YVVZ6r+FN0hX6wvg/LEzbF5hLuNnV
	 GCvZW/a4LsduUAHkYGM1YJgL2jQ9MP2l2eth5QBKHQUHE0aMsVIwNmo+cG/7GibAb0
	 9PfK5hsM7MFbIrsQZyPxnTY/SFK+9T47mDy2PapY6BOml4QLabCvUlAdr8l/lY51Dk
	 5BjyzsDPVC12b7CRGOV6PU1KZESSooOmf2Zq+xNC8j4MRKu+9TYeOIraTLCWv+YFCd
	 gag1xxhEA2cvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C899D75E5C
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173238455360.19215.16602058984610882701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cd64c71be5091b63d59adc0d2ca9f33e92d97c0adf72e3c60d1f6b0a0d31581
Date: Sat, 23 Nov 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732384553
