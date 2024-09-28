Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E171E574
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727485554; cv=none; b=KYtIr0+RjE/EKLpRhgO7YxSJ2PgIsW6y8eim//bvMiOfe8E0arjToYh3DMeCSlqZ1OOgntcFb5CnVw6J691/djtm7/dq24e3gVKBNGd2ivKe9R1NYae6Pxlwmyjpg0FrupR/gIOEkREOVpK/kc6gKARfkQpIvb3TSCHYYM4vOAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727485554; c=relaxed/simple;
	bh=shsXI2WhioggWPW2H0HPF4tPc0AIdwNC58o6ODXMpeI=;
	h=To:Subject:From:Message-Id:Date; b=KJuros+ysRGQ/Ujt1SN/iHDRjd4W41cHKVww55YIeBJickhMHBHW5GXGP93YXw1OyKrJtKWBmc5k5JuYFm/d3V9E8TjscYPIOpoUg+9v7ib3U5aHJ8ZCB4NRaEGqhhNj1zSO4wbCD1pGrc2rN0W9PMId2pI6BegpcTQi4+9tifw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kAunttVh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kAunttVh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5361C4CEC4
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727485553;
	bh=shsXI2WhioggWPW2H0HPF4tPc0AIdwNC58o6ODXMpeI=;
	h=To:Subject:From:Date:From;
	b=kAunttVhkdTFmCUOcRwfvveSl85+owYuf8wGeZjZmO59Uc9WhP0gR8ZLun827+F5H
	 +GrV7YWNW742jvyC/FKXmeFbqadQrCzbXeH7eCuEFXW7DmtJEfafE/kbOCbU2NioQZ
	 KALdFO+gncD5maVHdTMtzKjaVdi81yYURdEJ1jKAtzohzClDQue+Lendh+3Mzh8GYR
	 Vj7d77iiOb+F45dxroIGukNOB+GgnKQSUv5RoIomfNnpi8Zlyiyw1/WwTGsaC4wADo
	 wdcjMHJrsUuI4ljVJgLC9vrdFRZS6ap5Kup0+duGHJ3Sbgu33j/PqVAb4i9ulD8tPA
	 YJr6neQ+nJA+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE5ACF6494
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172748555358.19530.14879539813204875055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0a4527cca4282963c48bfc9f39240a553dc086e2e3c5dfb359dd00a3a960790
Date: Sat, 28 Sep 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727485553
