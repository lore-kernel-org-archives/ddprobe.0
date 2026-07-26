Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0EF3A1DB
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785063034; cv=none; b=IRuTY3dmd8GE4pWFLIct3QZdH61hoa6pUloL7liFS/DF4ChGs9bVxQKvKJNGXXuNlxI45k8xVt3tCA6dmnUeDvB5A32Wp3VnZvLTwn7iaJcxxZjgQwTeG46UftvnpgRj2swqIFEYKJqQIAKNbJIllyDOKrn97VYdfyp54fMkJio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785063034; c=relaxed/simple;
	bh=giUqTTpA/hsMBgX58J9WRO9AcDLAsk/wDDgnvdElWIQ=;
	h=To:Subject:From:Message-Id:Date; b=FxbIEpQK++WucLJwml3OzFChnNbxK/Cgru2AyknGQyoxjtpq75FyGrTcOTlXYCDI2pGaonSqlepUwFrAupG9G3KaqrpU002UK/dqgo91IKVugr5xeqpvGY1e1RN1j6zqyNy/OGUAdQpc3XbodocXqTCBlmoql+RVEtCJc8dr+Jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WDMJTn+u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WDMJTn+u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C4FC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785063033;
	bh=giUqTTpA/hsMBgX58J9WRO9AcDLAsk/wDDgnvdElWIQ=;
	h=To:Subject:From:Date:From;
	b=WDMJTn+uO5JIdi74trpRBlxY0IPza4bohHAqotP2aMqj6vfZ+yrjw9HA+CotcBJlu
	 xXSZgrta5vh5DhgJsPlG2AQDH6TDXo7l7sNzfawa4DX7zLT6SHUAoxjtowylket99a
	 E9nUS00OmaI7ThLOS30NT8Ld4GKrkSOCjaVMgwvcloL2HrIPuoWxrvccWQwhr9FuE5
	 +WZbS04hNYM3KTdqypa+PpLO0jmAVmMRc2sqrXMI7HD78SMHpaCD84qMjD4S6srV64
	 Fx+9hY+sinAN/rHMP8gbWOSvH0f1jXYBL5/1uy7VLxdCfAYrRRwTOQ+CWEUFTeVvMS
	 MDzwFtYDM/PXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB381C531CC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178506303368.29561.3501674208529722609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de79defc8e42c2b9387e5462bf38a9dc26bcf419a69ab2bbf13498982476d207
Date: Sun, 26 Jul 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785063033
