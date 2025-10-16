Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DEF2D5930
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760611794; cv=none; b=Uk09lPlDXgdK8Mc8/DCFxOTbIHOmlPufFnTwNkE/35k7qg1p1ZPBQj6fA2JAVXql97vLuDrI0Wra24Ue6uuuz8xdw+0rfBCKJWC630xlTcU5V154wSrxSbkjY45/Kr5SirsCYknHC/lDfWxR2XQoPwhB26T54wLaUnlYD8kjmrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760611794; c=relaxed/simple;
	bh=tpGADbvwDAOGVoWTetAMoXD3ZfWUkjmPZ4mQoNHZrBk=;
	h=To:Subject:From:Message-Id:Date; b=DC5cPVJ99yagVOkXA/sMYogpc1wWSVPKG5i8NQH8PaGmIOlZsIF2vzjoOQ1L5xb1GA0+U8osIchCiy4wH7Fsc0FArb8AoAoQIDrTvArpuIvjObaWh4SG27ZKOR40zI73cFQaHs+WfuNY0XPSNBnGdOvifoLfOUHa3OFOzOrWZn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OIQ8UaFs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OIQ8UaFs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31FDC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760611793;
	bh=tpGADbvwDAOGVoWTetAMoXD3ZfWUkjmPZ4mQoNHZrBk=;
	h=To:Subject:From:Date:From;
	b=OIQ8UaFsiBiin0ozpXX/lBB9kkxLgLIRG7bKRxJShYN+LPFoPz5nl8Tvk8HiYHcgD
	 nhA/V6mCseEsCF6OXb2+rrRidpVhhKRbJMdYx/1sLReAhrYrHB2A8me4srxwjDKygx
	 UBZjUHuxaPRQZ+qzl6jimZDiz/w5ppO2cITeaeJ5QTIpdUsX0+u61EMJTZTTNCJ1i4
	 uX0IbyAsGZw9f2TiYjQlg2rL7MlOOvRVZ1KGV8Wg3YdAMTVHu9sz4+yM6VTUpMbgPM
	 ApMJU3qVxPOFixoG9nGno6oBfuMsmvElpUtOooTbE3g8BpTJNHfJLGf/iAnkuvON/H
	 t0vkk5DVdMQkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DA6CCD194
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176061179357.20692.3402152543673457542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29e626bace0c5d6fda6c5c1f4b2d76c3f0bb20bba7658d2fa91bda19e5b408dc
Date: Thu, 16 Oct 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760611793
