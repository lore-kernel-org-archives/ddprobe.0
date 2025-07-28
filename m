Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A20F25D53B
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753715394; cv=none; b=QPgcAz4CSs5pMpMzANjqHwiO6rzjX+KoCwLo271nxcPK5ABagJAIPJvW8efrbg1+qY14WbOpTctqqptx0qbuDw0Fob6CLIh3p8Fo/qEzJrtpMXKlmbh9IrDdtt0V5qv69TdzACH0fQ4+BtoTTyqvNMUEY3bVREcxeeXHW3osqRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753715394; c=relaxed/simple;
	bh=u4CFY08MIU+KFmqC5BIKmaxRdHIs+iRvIcIusCrmMrc=;
	h=To:Subject:From:Message-Id:Date; b=WDOdDwmCLagm8duDFAMRfJzTqko1yveeL1AF4FnojDHGU2OzAAkSaceNRkvXzBEF7nxE0wQuS2+KZWIFY+WNctu+U1h3LY7xS37J8BgS1t13vFU6stWHrOvl/CBWOTvp/M1rHbjZPIyAuMh6Q+Qx5SRFiHQ4VmptlOE/o6J/krc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mannxDSE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mannxDSE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C6AC4CEFC
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753715393;
	bh=u4CFY08MIU+KFmqC5BIKmaxRdHIs+iRvIcIusCrmMrc=;
	h=To:Subject:From:Date:From;
	b=mannxDSEtviS/ZdnAaPHFXpmfGMd+PbD5qoLZ3h1V4z/qbwVC11QpzlJqxGXnrjo0
	 DAHK3rp1i9tt9PsqXdt18A4eVbD1212Dri4lL6bcdsS/qugchIZvq0QgaamTx6oq7v
	 FiRy47PK0Ans5isIJ1cssfoVJhfkOsj8naBNQMNd29zEMyslY2kcBe7MVvzihafZvx
	 20d8cytEliXHHe9PR749dlYVEOr/3exDOwY+naT59OFlfXhOfPGSlpr0+Bpgf6Mrqt
	 1X+S97g/EEy/n4H4JFsX4mRvqs5sV4yLOqOK51EBqPTKrAaZrvOqHszD6HaQ6jCJQ+
	 UepuSb/bn+shA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CAAC83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175371539358.8100.10264833382928699872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5bdef2613ace3fe464c5182fb983b2c47bd0d9b9c6d218af86563ea6e42dd0a
Date: Mon, 28 Jul 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753715393
