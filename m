Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CE017A2F6
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 19:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782068794; cv=none; b=fnIICs3RmNNKqPQpyXbba5dqkt42lSebeDZEVN4YM748VE+P0MkrljQCu/+iArFVsQ13k9md3EbsnFeHxjjYw1XMkNRzvNbBJdLp0CN2U/XCs3Wcfc4BOw8oTWtN+oHHUCi/XP0kwbverSw5zhkV2LDZNtFmXO7GJ1J7PkEz1jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782068794; c=relaxed/simple;
	bh=ueQuO4g3WBfMC0xtLzDenNzxG7XgdBhvvnNIzAjFrPc=;
	h=To:Subject:From:Message-Id:Date; b=Xf40ctippb++cUksi74gzKuWzTRGUBoHwkGtW0g+PIthdIvwVtErL2KqMQC4Xiy4hNtmcAvDIVXJBV8oOl2U+DstsxZo7jVBcDxyfm6dFZQRHVOah8hzv864P4uQKAdFylnNP/G2QUr1tNJSADO0xqVoAFz8TXeZiVtaavE3OEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TDyPilpY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TDyPilpY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C95B0C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 19:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782068793;
	bh=ueQuO4g3WBfMC0xtLzDenNzxG7XgdBhvvnNIzAjFrPc=;
	h=To:Subject:From:Date:From;
	b=TDyPilpYX2nCkexNWRreZwBxQR2ETK/UO05iehpMWViypLy6aqTp/ZDMLyTFihH5W
	 FbLJOTH37wsuvumICcRHeKavmnIhMUY+KLn11wm7L1a5HsKSaAWtbgZxenS6GXMgFI
	 LJWslvBneAcHqQxb4G/o4ScgiIt85nY9U+sS1NJ9LJ/UBQ50kOMsrM8cZCVu6OH2lH
	 L/iVqjIozLm1I47jGOj89koAOcFSXf7nQhB1gUENVjMbZtDsj1BSaU5E9IonSwPsKY
	 hAJ7EfI0oyDa8VzsisEzJRy9s41qE7668XKerExZyv2WuiD8gy3nuafFNW6pd7SR1j
	 eo/8OC/AvD/BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF921CD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 19:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178206879368.15204.2383597565811353693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9266fbc69ef11350dadaa9648dba4f505addca0c492bf424e5e0af3b4746572e
Date: Sun, 21 Jun 2026 19:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782068793
