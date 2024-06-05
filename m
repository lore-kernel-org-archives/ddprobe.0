Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60BAD1EB27
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 11:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717587383; cv=none; b=jwhofIsCfTYdWekJOPxSXLlsTQhw8C9jpPQdBPZAzhvOhiKJypvBcmbnPvfBcdzPy/tr1QdnyMFDGV1LL39ozGD88hUfSRTX0wG6oLqbynM3+2YBUFPgdxBqnRuIFrGozmS5Z+cJaqaOYPKM70Ly0xeVaD5IYd0KmKxWtzXuJMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717587383; c=relaxed/simple;
	bh=8h7PCu1gaXahNMtwyyU+OyrCiuW/yXeLqF7Z8+D0Jq4=;
	h=To:Subject:From:Message-Id:Date; b=qjswekuWFBe3MMhXzUkCiOZ9BnK6nKhTlu3NZJeb8cCn7/A7Kh68vqbaD2HL28poK4q15jeXIF7gesd2Z9nzrfaLtUfa1d7xruGx7kqDP0MTnSOTDRBPGSua4MXUE9djr8He17gJKhYTx22rJF3nXyvaN1ldsZM/g5WTYVegrc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lc2hKT77; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lc2hKT77"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEA00C3277B
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 11:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717587382;
	bh=8h7PCu1gaXahNMtwyyU+OyrCiuW/yXeLqF7Z8+D0Jq4=;
	h=To:Subject:From:Date:From;
	b=Lc2hKT77AwnlijzYGc4q/XIySUC4w9YveHSQwfENGsj/H7rbLsm2y/GTrsKXwxsNc
	 RC+07CyTeWI2MFRntlEIdVVKgHf/3fMXN2r6tROgz7RyDIhH1tmdG0MxgH4xKPgXi1
	 M3TYkf208Yrz+616BNZeqoZPUjrsEmGEwojxQIxhV/wpTN6Ht59+TdxjcFdKfVjiOD
	 f8AxQt+GYO1k8Q+/oPQXfqpUwe6IyKXuuQ+b1uOGJg9CsTVHrQtp3ArYZ6cQRfHsJC
	 UqeAHgd34Uv+p5M19sRQbmmoX+w3NTH84N0IkDD1g2mr4iCyU0a8F9QGgOapB5Wbkg
	 cjCHoEn5RnijA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C70C5C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 11:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171758738280.8936.12250658957931901525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 616e096036c329b37c37adbd50796f9d030cca5147228847abfa3ca7eb530701
Date: Wed, 05 Jun 2024 11:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717587382
