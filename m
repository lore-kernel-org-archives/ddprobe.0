Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2B021BD9DC
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730481954; cv=none; b=a/LZk2KuIVR0KnG0DHZ99yyh8ELakeNVdkIov1oR5DqgnC+ABKmCSDNIuwDazi7HIorQ7aUbJEM8zsCGQSneStDhFI21xX4pwrmLR4MMpFvoCxkTer92lFcchBUXiK2YZr5FEs6jzTGd9ear/KJVoq2YlZjLYMLf2DxHf92wxIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730481954; c=relaxed/simple;
	bh=Wqt8E/Njn67OG2k6D/feUj45Pc94fI1N7A6FrcrSIzE=;
	h=To:Subject:From:Message-Id:Date; b=ngthTD7EjqpGtQLVlCW20kQ+YJcI5bERvmKXBGeSq7PcKKAgOO6Tpsi63qHPihhprfGzCPsuVs1Bqn+YLTAcp5/i35kmdtM5XircorJ4gDiHLGG2KlqAKNyMocyN/n5Z7Nm4dvAePFaDPvIfEM3ESMBPGRZdB3sXowgZW0nuIUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a8MGGZsP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a8MGGZsP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7C0DC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730481953;
	bh=Wqt8E/Njn67OG2k6D/feUj45Pc94fI1N7A6FrcrSIzE=;
	h=To:Subject:From:Date:From;
	b=a8MGGZsPBD8dqQ4zORkiM60ff+pnu+upr5g+YbVlzggknWANdSwFvcK0T9UKcwQOR
	 Qif0LwTZEIXjsbAMD2i+F2MiKKsGhOqUwe4fPNYTNLvWEKMQRUc3yBlaIrqHox8Vrh
	 vjYJfXfep4+I0zx+q7dhBH1x7RaXMJEDkk/RPgcDidfRtd1ms11hH59GviPHZhMA/5
	 fDRErVQ3k2tK0uAZxLun8D2ahqfTFNGRqunlK+7wZ/iOYK0B38F3a6geX6Ev6RRmPC
	 NDMUOfXREfq1Ks7lHO9LulyhWIDcJcGGpURObdsutKFYP+Bh3j7R9jEdqVolCrHOgG
	 NqgPCs0LA0PiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E483E6F071
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173048195363.21271.8925251223737376104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96227d3eb23502f1907d88d5d2a9b111238818e890e3716eb48cd8af1d8a4bac
Date: Fri, 01 Nov 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730481953
