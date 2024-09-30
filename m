Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4146223D2
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727706954; cv=none; b=qhKtfZYLcZKTwhmMsewKpjY21iizq424yndFpv6I9WTVhkdT6nQbnodfWBcqdg6W5LzOa4P0Kpo9xaLUHGljV5+NxjD2NgrnI9C2bZefbfLzhwf7AMDinUh17UpQwFJsJKRbwoZbHrb7kKFijtbevl1sPUGo/aSRiNVMIYZ0RAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727706954; c=relaxed/simple;
	bh=SK9ZQwY4KikvpHZd+DK22KlYH0ILOKt/I84OC/ydz88=;
	h=To:Subject:From:Message-Id:Date; b=k5Q0ms0bRHC69XotgWyjlR2nXMXiDerCq8bb6b1CKVXLRZw3ZNPAY9c5TsJgihpfiZDM0X71C2pE/PqFkALxso+5BTGtTSJqAxhG9CRaGwvDg6J4xRTa3JHO8S/UdMGUK7kMuTVucvu2Z9XmwngfWLAB286SNqd0uLYrX+IHWHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q1Go+9+L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1Go+9+L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8EA0C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727706953;
	bh=SK9ZQwY4KikvpHZd+DK22KlYH0ILOKt/I84OC/ydz88=;
	h=To:Subject:From:Date:From;
	b=Q1Go+9+LwatOQSK8hNK+4Jcu/7U015YcOB5T+s5fcLoDZPhzmyb6p+rZLAPdVGEGP
	 p3ncawPerVJ4moMOXc0IxnRBf8hsvn7dpCaqFL1s0zD+r4QXu932r9JdqWhqJLEh3h
	 I52IalKkapKU5w8mjL3K0aD8cUpBxVd5KC4jsZ3qQvF+VYRHpskYtQDoDj+JNUz1cD
	 a80YIaiLnUzJ1ky9X4EhOMYO2qXlDaavNb6amgiAeADxEZiXcKnV/OubrYxTwgctj0
	 kMUqn6IJBJLa3I/nbus13JLk+dcnEL4bNbARZ+M3GGbVVWqLWElM8NfmtmqFFNXKOv
	 SSl57PiYH85fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A76C4CE834D
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172770695363.15065.13417539567250997204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa608f74a185b60beb7328e278737d0a69d1b01fcf03a53240338434d705beb1
Date: Mon, 30 Sep 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727706953
