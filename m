Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2CC3E0C50
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785916834; cv=none; b=MUB2TzocQ+udyb7KaFST5+U/WHyvYUkcw5MEvpxaDrIHc+2tKOu7+8mzHQNN6ApSLfVbDyvr0wryk4IH602NAKLaN5FRsHWTr68r2CxoNB3W1WkkII5gQN5RWmGD4WtJj2jI+WP+UH20Vo8EFLQlirLv1Hbcq26AnqOjyx3xx5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785916834; c=relaxed/simple;
	bh=cW1z3QtC/4r9M5aVNNPJ5i+jUnBh2qvHhH1rgs1WK1A=;
	h=To:Subject:From:Message-Id:Date; b=ZSwEm/SRYp/BOPzHXMM6MeltnkB42XhxElwHaemQ+ylTM2jPxEGt62hL6Q8qcYuFSEjVEwuhPR9xHzZd5kWaVH7qzM+inozNv40QNOOJEUMg95hiIkv+UM6iULXocPQRThGykzonSC/5vg5ezmIoW5sDdtlWa8GUWW7B58QZDUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eznTWDJA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eznTWDJA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E05C2BCF6
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785916833;
	bh=cW1z3QtC/4r9M5aVNNPJ5i+jUnBh2qvHhH1rgs1WK1A=;
	h=To:Subject:From:Date:From;
	b=eznTWDJAacOApXgn1U1opLBZKGr4MYHPoq8e69SuK8RlAyuHbI6yqjuodne5sYKuW
	 SqNDL2ZZLW0rZHyriEaZIpHCI6T4V4XtzbgsxIXWa6Btd8DTDkxChKyIpWWKD5E6yp
	 Yp1wu9n6uPc4Xgd1Fj3IxiDscWS20IspIm4QpxjI4M42XO+IrsOw2zLW6Jfwc3KJ/m
	 mSzUodkHZgYP+XepF2/DXU/tedA9P/mjP3oGUR1vU8knb0cvjt2XNOybWLB6cmxoD1
	 23rD82sw7Q+KlK2L4mV2nmT9DOLDTYH5hBZ6YzMuq1VHdwVDakPoVyWs2UbpsHfq1Z
	 xVvNE9nOgAVRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC31BC55822
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178591683369.15602.2155715459973614170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ff839e4cfa98dc6b6457d862fdefed1c76d16a98656aa48ca25fad12c819e63
Date: Wed, 05 Aug 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785916833
