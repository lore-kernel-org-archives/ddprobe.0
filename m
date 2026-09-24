Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A624A484B
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790265034; cv=none; b=aSDD1Pk3whV5Uip5BTe29myR1/BoymZGojorkdpriN9uGftBGxtKzIZsL+2rXog+I0PSc7e5/ew89djWCgZ1x/+T46o4hf0xWdfjAGYovGI2tZ2Os9LAgob4JTvXgIBycAkM4u3c9ttDtdcVuHGE9w2UE3uUhV4efKxIAjI4g+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790265034; c=relaxed/simple;
	bh=U+kTT6MlJxVvcUenHQoctZZtrGxtZdRJUQfkX8vG4jc=;
	h=To:Subject:From:Message-Id:Date; b=EGgkuCqSEGtEgEgfCITV4pRwCAL2y5n7MCYm1Cb7hxGCZZWRaNWqlpVbQAWe7P64Kp+fcd+xM6RQUJSh0p/+07EtlBVGd+kW4fhKjSY4nFIneeUBZxJcOZwCB05crl7E+MNf3mcS6I7UKOHrbs23cFuy/Yl6kHQRrM8IIwOmLDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tHBd0gqV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tHBd0gqV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4386C2BCF6
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790265033;
	bh=U+kTT6MlJxVvcUenHQoctZZtrGxtZdRJUQfkX8vG4jc=;
	h=To:Subject:From:Date:From;
	b=tHBd0gqVf/t+41r9O/lk4w7pB0b4PygYN89XloRr47CfPl5WdGc5bEQcEPshjpyR/
	 4yVXWRy+Ba6h2ovmP6Iy2RaH3a2ccL/96hIRvSIRIUGMSt1TQT3JSGVFWwkNO/fcLd
	 Ja9CVpFkmw7gqh/JXoEG70keB/UKoGDq1Bj0QSTDKMfY8fAEYeoM2dWA6fH9i1y24m
	 krc0yK9ewSiBS4LCkDYmFhse0ETnjQFA9b+UqQIvzUDTlZg4gKA8oYi5pQ1nG3Lj6g
	 Rsh4mGdQUKo8aBGRq26jc4JPDB9Sp/x16oGeTh8Rh8weDO7HfAvj8/HlzMn084PS9L
	 QDePeElfp+lxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF94EC98318
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179026503370.20371.1880044841180729962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88c00791aef38ef4367d4757ee866f1d052f31fa0df2f838ed4a83f6d8f0a577
Date: Thu, 24 Sep 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790265033
