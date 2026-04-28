Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC093E6392
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 10:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777372054; cv=none; b=eHNdh2Pt/KOyS53u8/aVuOnJTcnMvh2Um9dfMFDwcOLwMSqMind4gL2F6AG6hD2HSe2x2zRTA+8BBkm1Btt/IrMpQMOdMmd0gVN+pYvIFdNXhTQ/6u7oONhlyvqtwM5Sq3ojyfDsWhOQ/+Jix9eyVuhj7obw8JK+cRmA434QHNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777372054; c=relaxed/simple;
	bh=9bRYWp0rIp+vRn/VAcuSaBV/5rz4IFaf6ekLu91c/sY=;
	h=To:Subject:From:Message-Id:Date; b=eZngl3+yXkPwkW0+gm0dx1TQCehS7pnagA+Dr7wkMLKmKJ50IEPFHBo8qd1T/jppoeK8CdVVk1R+9etBnvzaiskLI1AX/DwGq74JxirqRGXEQHa8ANs8P4ZZ2K6V2jTd86/hG/uHPAk+rXlzrCwBvou7tWwwJuNB6Zv6yyYnk7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pkMxkFia; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pkMxkFia"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB7E5C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 10:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777372053;
	bh=9bRYWp0rIp+vRn/VAcuSaBV/5rz4IFaf6ekLu91c/sY=;
	h=To:Subject:From:Date:From;
	b=pkMxkFia/MLjerHfLADSLx0S2ENiQQldQwDGfczYtKS9p544aS0x7uZWnzNIZgXMy
	 N0olXJwcRrucKn/5PFBd9+bRepZEQuYov+T+N/kqsxN0ocRWNnYoMsMQec52hsare6
	 gZE8MIhCVNWYuKKgBRafylP3iAUx2dFGvrzrfzaldR8L97EQz/RWmoy491poOot4A4
	 QsX/4YHoINXPZIGtObLtJAUjLvtnT1/WsoNeJP1PTRaHIFivvJiLu0nB7t1hShvTbI
	 Y/juCJXUavbvYvqe0Ne72c8J4TSZHj67+XSdChawy4xtDHkKoLVwbJ7zX8G3AcYbEm
	 pKKG9FdGUW1Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9446FF885D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 10:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177737205368.25031.3150412378053052182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 588c9be74b7dd840d66e22e78c372d92226de7a4f08c8fc0d0556e0bcebb5062
Date: Tue, 28 Apr 2026 10:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777372053
