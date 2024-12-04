Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A2F218E050
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733344554; cv=none; b=js5iSKLHXYwD265Ilq55NAlE2OSpHOIKScRftXg11KrcefWpc+yMOnLUwEYo6kIkafESmQ3R0KRLD/dOrboG5h56UQpHbHOeEhGceDuMg5pW7fpnE+1Dk9J+Zt9TIIfjFHsCfX66v0aCzHXPbPiJXvKuQ0y1Noy7ci4M6rMW5fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733344554; c=relaxed/simple;
	bh=Ar1fZxZyojFPKNnWDLME+BwYt2WE3Mo8lIEZRm6X+3g=;
	h=To:Subject:From:Message-Id:Date; b=ctHFED2Mfc1ZSDp/ZzRlxUmAhzVHUNcf7fsA4IuUb7o5CsXeC0amb+kXp05kJ7KmaexwsoTupaooZAWZX59RZsjZSiLEosPuECgrTHi5CY20bpVJkoi/NN+PlkQ3cY8azPkVyhXnXNgcSKka8sMM0IdCTxgVqEvOvZIyNYI18Tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uiu1y/sL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uiu1y/sL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2D14C4CEE0
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733344553;
	bh=Ar1fZxZyojFPKNnWDLME+BwYt2WE3Mo8lIEZRm6X+3g=;
	h=To:Subject:From:Date:From;
	b=Uiu1y/sLVDFBY6pu8SCbGRlcQ/OSqh7a2e6Co0y3Y6d83qqaix179P7bw5oIMOKII
	 rYj6NH0tvFA8vidZPzcaPP1ZEsCHIedBGCtiSYRZrk2ed4JJNT+vaAqf236784o6vx
	 +eiXb24T4l/fuCbQMw+aNsWopQrlb1XNO9xLSm52BoJVpNNIldBnT72sAiq7gy8tIQ
	 z3PJ69EW16/p1c2tuBDzFnUPR3YeYUALuF2HPz74dB0qsPP7nG9umuXEMspLwpTuuF
	 ZFj7pNUTk8gfYwwQ/Epr5/0LZw6M/PyLwT1el9SSHDgGyyPiZ7D2adJdxJEkD5jcWR
	 RxhxqPfVwDXJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1390E7716D
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173334455371.24607.9141147651713469665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec4e67507da839a8bc5c908a04639642dd1d19b469e5eb2388013ab67c4d3198
Date: Wed, 04 Dec 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733344553
