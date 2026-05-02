Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B842690F9
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 00:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777683454; cv=none; b=TIarU50SvTAPSqRYJpU5o5bDtH/nkl0v4/jdcQqESFc4jtMrI31tIBnYSMzMWIJYMrEHpAMx8Rl0LSFuUTULGPhgNO6E3DCmlAPuFPCt+ge2HrCbed8a89Xlt1D0zzP5fhOg6G7R5eMLHw+Ryop5AIxp0c7tMgFNdf5Kstpoey4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777683454; c=relaxed/simple;
	bh=Gx2G7+RKcq1QPq12w67DNpItiqPQdC2E4lQvr2551hU=;
	h=To:Subject:From:Message-Id:Date; b=psjTZ9HbmKs8bXvgh3v8g+2IjGTXO8EwwOymZsAL8DwmHfWJwZztdvvk3X01V/lmc5Bhw9Yh+BXHWZGSoEz/YSNzfRyt4ga0Z0ad6chTI7H9fbEYWsirSYX0SCqDTB56Ji/tupawGdnMWr7y0VtBcWmfcv44g4kCWizZRUtufo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DzT4+Cu+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DzT4+Cu+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB8BFC2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 00:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777683453;
	bh=Gx2G7+RKcq1QPq12w67DNpItiqPQdC2E4lQvr2551hU=;
	h=To:Subject:From:Date:From;
	b=DzT4+Cu+sP+H7vLrhpG6yWlxDPxCXPk0afEgobBhOc621fxW12+c70LxN3t/MqM9M
	 S8ifTcXX1IK9zPFOMyz4+o9ckBe6/KazbZEtL5hqyIu7XqD+4iBv53MdQAWha7vLKe
	 BiCIroNyToclRSkfTDCjQmDPYfN/eXaiCP0brCjrOAmqUhcrEnMzzU9cs49oKBz/3G
	 snlnBASVwFpkprbbC3nIg5gf90q5YZRS+BEYLwCI5RLHPEm9hgT2Uv8lyGDDmJDQNG
	 DtW7yaIpseX7i+dMxWiIwYYwfNtbarbo5VRiXapuupY6PZHKcnrawljsvtYqzIEKl4
	 h0fsKcTbFAEwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA224CCFA13
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 00:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177768345368.10961.11093692675388149157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cea54af673663ee8ad578130023ce430cd6c46b797289e0b2b5ca7bd9787e9b
Date: Sat, 02 May 2026 00:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777683453
