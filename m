Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30FF834D3A9
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762663194; cv=none; b=D/Amc1UBxxpsF04DNutTTIuWGO4fja5GsuRcfQbgTE5vXmRv1X+lO9kzw9QyVevPwe4uBALcyJ2eA4uhlR0TuxOzo5xifVZxkLsFCiphHi1I5wS04Mb+2TxrfdCuWfEnBZ3u3nddIIPdjP/KLbncm5NOxUfpbc5xqZNbAnNs2J8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762663194; c=relaxed/simple;
	bh=w+jEubQzJuibEWbesaJu/ADnkh5envbhMn82mgCUvpA=;
	h=To:Subject:From:Message-Id:Date; b=gTjlaKOKtzqAhO4hjVbS8VsBpu8bxHlALizCuH8sSBgjOA0/iUFLVwgkNwNY1HWsehx60gHrjGMy4AQITunsXDyuazYcb3wmuc+CNK4sF3SQXM9ECFbb8vldFxmc+Lg1opnNENhpPthTjWpOHuL5xPAvfUDIMi7wjBh5QUM/n04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EivDuZsM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EivDuZsM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA77DC2BC87
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762663193;
	bh=w+jEubQzJuibEWbesaJu/ADnkh5envbhMn82mgCUvpA=;
	h=To:Subject:From:Date:From;
	b=EivDuZsM/Dieo4bIZ2jZP9ocuO5gDjeU1hR4o3o0CNkiA9mkTaURVpWbc2oHJ/dxx
	 GFBD/fQcqrB15JVzARHkPuPoV+V0DWWWKp5kb00STeqXzSX2m85Tm21NrTwLiLAKwE
	 kc1LY2OJp47MJeQRw48ejRY0Ve67uCVP0tuLzWi1ndlwknj9/saccIq5//uO5aLqjE
	 QyswQ9zZ0OPykF644dReYyYY/b6fCvYJHPCO1ghjsBRRdRxvpJsuSMJQJo2bL9BQiA
	 zksKtZtIzREFxx0G5TQ87CqGOXjeUB3VGgc2OsrUNLzncrNZldGFqCj9x4SXRA1776
	 qVEUE/WaJOseQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9889ECCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176266319359.19611.108850197552616175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74019f600d779907a969c7d575fbac5fc53675a0b22e56c8c3ef88db121431db
Date: Sun, 09 Nov 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762663193
