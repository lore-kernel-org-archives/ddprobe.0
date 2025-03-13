Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4764215DBC1
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 17:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741886334; cv=none; b=YcCTnQxIQ9YxdIsmhmNhs+3MDTiTfAZTwcvYycPGJvX2oe0w51oPyI0iFipQtyy7lhi4frMstZfrsVfdgfRktecyJCGgZjyySo1IKL6aQPGXeZfbnUaKANeioTg/0aVuza1hpZwIOuNfrvmxUQNKRXjbkzX4b5vXkwhqDLCpQfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741886334; c=relaxed/simple;
	bh=+9pAjEFFqjpa+TvaEYveEAVRR8mRYoGY5n8ZSJ8fwu4=;
	h=To:Subject:From:Message-Id:Date; b=pJ8AkfoeCFs9esGvsvP5jeGeSalHRMO3/5z/ZzHsjY/Da4Nku6u8+8HTiIQLhA5lGrp7M3nZS3UT1e+fWVafzJUoTrjPhRwXy9zhMYP6pTYnBYvPzZTuC3HERTxi80Y3VWpQDRnOO1kIp4QFgbPzbW6J3O1hBlamomyC88suRNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/nmARX2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/nmARX2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E78C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 17:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741886333;
	bh=+9pAjEFFqjpa+TvaEYveEAVRR8mRYoGY5n8ZSJ8fwu4=;
	h=To:Subject:From:Date:From;
	b=T/nmARX2V/63wqEaSNuKGvQJgyADJa1P+zh/BxNks+EwM/pJOvhHtQfnMNX4Lf8j5
	 7kbZQdKQD/zcTOZS5Mx+s/KaKHgSZpiu+o8j/7cxfjQ94Un+TyeYr57v/WMFsviPKt
	 mOueJD3ag7s/dZXJMJvPn02FN6YkDfCdGrLkMzmIa4Iu6RsCyaDlOnEppGW29MDsSu
	 ZmGttHU/I4b30KLbmHx56Drf868H23q4EBqc/GinagPCk7cTbOLx+HLuDunVy2nPyQ
	 FPE47MdpDF/8ioeoc8PVln9lOgaf6qeCTtib3+H33lYghbOcXlihVaU5fkairbsIFh
	 dkc1AHSyHECKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6973C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 17:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174188633366.4938.4513894830290575134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c828cc2eb83457894eb598c66cf50d7c9d579b4d7aa87f1cefad3ec231b13fc
Date: Thu, 13 Mar 2025 17:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741886333
