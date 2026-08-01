Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B45A33BB680
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785625234; cv=none; b=MDu5rl16pygIBFt5gpEbAFhypCbuJ06NSf5SlFqCiuOfXSK7B31Qywc1oQOw/fBQnrbMyy+xKc6Ije2AwW9B5ilbruxaTOdoBTlO70LFeBQD4eWwGljhzLCEJvv02KGsIPdwUCvSMxbFT5qFqqpVaEhXfGnZRctRihDYNm1DDao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785625234; c=relaxed/simple;
	bh=vp7xzeIBOjFXTtFz8Xz2wxtQ3Led9M0mzn1gBRwWWm8=;
	h=To:Subject:From:Message-Id:Date; b=kgD4dA4St8F0DVOQrQplgfutI+a0OxdvoxiwiU3NDoRKs3+eSIEimcVrSdblcREzfuPBijwJgHBI39H7LlR2BgnceRC0X4O8dGtvw2hLjHVVyi0JYu9P6yL5k4XQUz+Vi2HKWLYcCRadj5rXlb2Wd3WTP5SDWd5udcDHI28BwLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k/h0mPto; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k/h0mPto"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E78D8C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785625233;
	bh=vp7xzeIBOjFXTtFz8Xz2wxtQ3Led9M0mzn1gBRwWWm8=;
	h=To:Subject:From:Date:From;
	b=k/h0mPtotjA0i259Jr+zbIg8dkz7EVrSixw72XIPHGybbzuDjH3m/zr7jSS7IqOSK
	 WLukw1w0F7fEfdLZf0KpEeBE/yyg2banERpk6amtlYn78oAvSLjv/vyhjE1yh1zqSP
	 Az4gghbhi3IlnvTUSHBqb4HdtQ0cWO7lPMxakeD1dsRIqfYadgMhsm+quGrjgce9Ix
	 cbNKnlvtwZpebrTqsLVd3h4JH/7aQfE87HAsQJ8RAWKfR3n8nKl3ognEZLOn2jT96K
	 59OVBuLONtorOEBYaBYAV2u9AEOO+j6FbJYysZP786wdzdHJbTGBGGh5jg+zW6eTPq
	 vpH6+ysMjxjDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2C4C55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178562523368.4108.1387323288664949479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e3112bbd7f4f41963c72a6df5f2542f6ae0c1cb241733d6e0088ecfc96ace68
Date: Sat, 01 Aug 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785625233
