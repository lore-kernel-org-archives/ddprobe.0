Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5267E3BA24F
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791614434; cv=none; b=mTVdk6uY5KYgVbLqOP4MfLd22riANz0HnpJoAUDikF+rsQPnllBU6HgmcbMOEpQetXj+JHxWw7ZIvNclXEYtLWIMviPtiFEo7i8V3pgQNVh0QMulvnJdM6DE8O831zPEF/jvkIxoyVw7Ll5Tr2/r0RvDF5YKSrr6MO5Qe0y+8G8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791614434; c=relaxed/simple;
	bh=EXIS4uNIX/ARBvV0E4uoJaLNn8Ll1pLDrgkc8EcONq0=;
	h=To:Subject:From:Message-Id:Date; b=D/5Ur68TknkvUMiPQ4po0tw5Ts8iUdG0Q+PYVfXifdLJvH/Pba4qNpDmG7u6kRmlxe466CFz4uhZ6AOT8hrCln3DyiFOF0icQigT2DRm8095eq4ObHuhDmga7j//Uvk/k7dbjydGS+LUI3PXSF9gkV7KifGycPAPKedBjwXwd3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OKCJFbhK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OKCJFbhK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD7C3C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791614433;
	bh=EXIS4uNIX/ARBvV0E4uoJaLNn8Ll1pLDrgkc8EcONq0=;
	h=To:Subject:From:Date:From;
	b=OKCJFbhKVOSmL4T3nlYAxqiF8tKp12JwtgdoIFaDv88Y8yRIedyiqSkP8dTlzxfRq
	 au9bY1tenRSlaUWsmMKabCSZh3ugxTeg5opsVjkaW5CPkLL+k1STfwrpmooRc6toXK
	 juG5yjY0tISYGRFdpLw07HAS2j/kyToeJ63eK3VWYCrjDkzcOIVNSHQXpH8CgYdLuZ
	 P/cmiv8A/ce8BIZ5PckRk6aev20/3ro0ICGIfwqvvhy0Ls0Y+whS65F2tpgIaMXyiL
	 w3KDiH3lLOTgByHczW9MrGiAR9ML5ocvJzb2XaMdWCmSovnldbFvFwRoU6JGkOqIDI
	 t5T47U316/Uug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA912CA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179161443369.857.10402779087743665632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fdcd8916b899d59cd30cc08eb563e68949155e7be68c7481e861812e26e0ccf
Date: Sat, 10 Oct 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791614433
