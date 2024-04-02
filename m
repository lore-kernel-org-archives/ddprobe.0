Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E052F156F33
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 17:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712077697; cv=none; b=dpT4EPUIndK/c4atpgVjwYuyqWh67iS03qnOD/G3lTuMXQmBJmger4txAiMzbs/aEBySv2rfUhLdoh7JyPjOdTWRcB0P8HF3aPFLWCuUKtonko783P4XoULaRmndwNWyD9X5rBOM4arCMjIVlS6LueWsho4ZHEekylY89MS/9eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712077697; c=relaxed/simple;
	bh=OYCnbdwRRaX/b852Ano7O+giinPWLcdH4GUvnUPil2A=;
	h=To:Subject:From:Message-Id:Date; b=C6t6qi3d6Lg5T7ef9Vpd8agqj7ftXyOFNb+jZyWdCo26bA+O7bELA403NheD4VaGf0N3yAHLwiFAlZz0suks5wlIftuS7pxTU8S+9Zy+Br45ni5jKPA2AVNxtfknhC3yfTBjdBnnzcAEBpl+IO4Ly8wSlHb1Ux+9Swr+0xqpx24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m7C9jnhd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m7C9jnhd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77A17C433C7
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 17:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712077696;
	bh=OYCnbdwRRaX/b852Ano7O+giinPWLcdH4GUvnUPil2A=;
	h=To:Subject:From:Date:From;
	b=m7C9jnhdcnLlD6jTPmqUzsQeRjpBm0+3JhjD0babeoLKDcmpa7H7kB2M35e/oKoga
	 FJ2jQZR1BNeMdKp2tv5lRfE04atKCa/Gj/XZ2HcaxOi4CDG2Awi5EXSX//pJvV6NiS
	 JxiaPlmtTp/C6spr2qB2tw/lluM17ETHLQezMd706AYWMn4iAaOcqbkmhXaKZvWpE/
	 eSn7FP25Eu9O17HRks/ytabyDaoE2xhAQrpafAjdHxEcQbRF2H42wdfxTxCXRK3UTA
	 sdxgoIzi0XdoMl5SK3FTxRQCDbf9HZQVgRTUxtxz3l9kHAvYVbfvu5PVfMTOSCvtxr
	 yFsdV+uuNEdmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68991CD1284
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 17:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171207769641.13134.6877598504517178661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62fe7d9858eb930d671c6b697612d40708ba6e415e96363f2b9d5e57e8fd53b2
Date: Tue, 02 Apr 2024 17:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712077696
