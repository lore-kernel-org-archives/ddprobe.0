Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D627915FD01
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732355753; cv=none; b=TthwHmpz06gDXW5SHm/67V//cuBXpKmjuv2xWElIu7ysb/DBv2rusFom3Ty+9pKHWWBIaArINMfwAF1p8XdZEEKDvx0JryFxMn5eGxe9x4T9tRyhdku1zOOQmewB+8zORaJubOcHJsZyhz/ULMrWXYb83I/L9YUddKcfPMfDjX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732355753; c=relaxed/simple;
	bh=c2dUn1DuMLxUi2vC3hpmncfdWVS6Y13tPeztxGr2G4A=;
	h=To:Subject:From:Message-Id:Date; b=mf9//y3talmIaepJuxclUuxdmdDic/xoiCQfSHdcAqgMAS2Q9kiHznUP+qidg0T3bgzREoNbFeRt4f3QUgBAf5zgNArnQVaQhQmhjRayhoCY2irY0z7vm+nrVVb0qC11y6FOhjouEwXua8A1YrUDKkj8dYsI3y3sm2/9HPtEYBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oXRn3mcf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oXRn3mcf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F23C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732355753;
	bh=c2dUn1DuMLxUi2vC3hpmncfdWVS6Y13tPeztxGr2G4A=;
	h=To:Subject:From:Date:From;
	b=oXRn3mcft5fLjvo2dZXzlBoMRGKhAFM0Wb704rG83Z6fyni6LGXG7Dub1Y3UXJj1d
	 JgiKhHkEnu7dj/9LqhyNTcLjIPayqGIDjvRCoNZXIwNNaCtYMKaott0+7z5sx+iGmI
	 +p3jorDUHdvSwqD3wZezzZoiffbifEPk/OxJEwthTfLhZUMp9/T4BnDTWarWWxIyFW
	 Gl4Xts3fYbFp2mqYSTKBOEM0qqXTaJz4u2/1RiLNDfaArOtHUfOtZ2emBR5UjO3pao
	 qWqxms5/qQBfOWoJNSkwX3tNq6hkI8f9cE5qa8tfM7+aeFbdqUWkcEmIoM9T/3kRC/
	 kHN+jJYZWzjpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95202E6ADEA
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173235575358.20238.273274726829991463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c2c9a234b4cae5eac6e720aef470ed517f7d3fc284e717802f22a1fe5f076a9
Date: Sat, 23 Nov 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732355753
