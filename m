Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E543A14AD2B
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748256594; cv=none; b=ZadPyMFypYch0Nc1m8Qrg4FsLAA6/sqoE823Mzs6B3PJk1Je2Cbh8ynKOQ+sxlfCYa+IW6N4PTY7ZIP0T8rAO9qRVvaBA8VXdhORHHYerrejd6Z++lUAs5T3hgIvgpENImq/HlRp8ab9jiOJR2watTRdKmyDoPcnBMqlGnrRVQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748256594; c=relaxed/simple;
	bh=LSyynoT+p2X8kaZKXkrAgsG3O3xT0vrCBnfjWKnF0FA=;
	h=To:Subject:From:Message-Id:Date; b=llfdTQWihAYycwQzmo2TC9E6zCFFf/NPaLIx3whCPB+opYHN11EdK+yDyMHxXf4wnMW/lSig3Y6FSo3cYLI8i4S0gY3e75nEU3/AL/3FwbSL0DUYNY5j6TJyIWCeGSecQdU9lg+qCdDDZuKL2lRYcyceYqP05iE1Khi1yMsttEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mxycRkVe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mxycRkVe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A280FC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748256593;
	bh=LSyynoT+p2X8kaZKXkrAgsG3O3xT0vrCBnfjWKnF0FA=;
	h=To:Subject:From:Date:From;
	b=mxycRkVetanIMi2UBFB14PQRp1FUKB8gRAL0ELBDdVDE/a5DEVy3j97lmwTyfgtmI
	 Tu1CgduTikle4TZBiDMhNPZEvmYImKx+Rka6T3IWfg0XuXwsh77vX3yRV1o4hLw+dT
	 RHkzb/9Q37WDguo+qTjjNug/0GdF0tT60WCQdCPt4kA/tJ53r+V/2oedDOtlZ8DDbd
	 BriM98xwnJowOgEL/kxUST5GEm+3kvL5iy8cdJyKNQWRu7uw2FAjTOqpSxERB9hyDo
	 pqH4yR1QdORsHBWG9vYKxKfT/i6Ifs40c/Ezp2NIk4J1I5s/TXfZFFT32jhM4DwhgT
	 CYNhZvC3Cp8jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D28C5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174825659358.16956.4438963788376863536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df230bf403ecb6ad0de640a86ea38ab00bea249d00b63deabdb626962461c9ba
Date: Mon, 26 May 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748256593
