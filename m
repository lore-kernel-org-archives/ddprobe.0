Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424BC23D7DE
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757815794; cv=none; b=MNw9apa/OmkmYkHCRiJg1efuSqC08mun9Ayjgf1qsPBN65ScCUSC9rmgf6YGW71NNInMtLjdqd927ZnLeQiwSghLwYti6Zf3NXLic/0JrNAOvudAfoDLht03UgbM2njeGQNR/quvga8kSQCnD+Ha3n9saTcuT2bicvVhKtVSzmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757815794; c=relaxed/simple;
	bh=m7s4X8Rui8cjY9Ns7s+B00ZsV4h5GC47fpX4F4zVznk=;
	h=To:Subject:From:Message-Id:Date; b=ard7f/R6Kijy+2MeR6mDgr2V7E/2ASj2Ioliuv/Ns5W0vvajREpWM+IS1Ogg2T5QKR/CcqmeumCJ06WAqva06xEkYYnogXkTpRTI7xGN8DM8sWhMYWHNGlSUH/kJTo4HVbipnr/My3bdhOescXgL9XykLeyGyvHR9qrsCVSaGa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pcORKuzF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pcORKuzF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42E1C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757815793;
	bh=m7s4X8Rui8cjY9Ns7s+B00ZsV4h5GC47fpX4F4zVznk=;
	h=To:Subject:From:Date:From;
	b=pcORKuzFdArmO/JCBbvu9r8ubJ+cu9wIvivPkZuWJA89HjgOIOJ6WIB9Dbqfdbp/T
	 kfYI07pRPD+gIc6xsKxERijykq7TJcuAKsQtd0MKl/XY78pwbM1FUMas492N669bXS
	 BplKJhFLEMoio5umAgblgRJV5zhk4YFZrm6kjMlKbBNqarToc/246sqhgl6GebzCKd
	 UEmysX9Htgvo1a71n8+4Kp9Lo+n/X8hngqopsJs5wAjwSTou56YQH7noHA5a3sV++d
	 GhH6FMHfBBB4A7BfVmKRbccT054786apeCw+HeToDJcaBckuqG1FQJt/YFeTZqwmvC
	 W0ZNhsBvMEQkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929EECAC58E
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175781579357.32207.15886863922891723334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 388dfc486382164220e53a8063fceb547c6b6af3776840b9e5e950c736900ddc
Date: Sun, 14 Sep 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757815793
