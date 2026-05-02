Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA153594A
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 11:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777720654; cv=none; b=MfgrBn5VVfIdY81bMBde2vMu5PeHs4BiY8zeBNijxAtBTr21OpxDTeEoefpduWTx/jFFmZO85DTEXqXdhgJUICoHo/je7UPc+VADS8fH78gZepS+zlXEiRE8rm9hAqtnRCUrUwXfLtyyoTIRY/iiGib5E8pHdBGmaCkUnwoFSjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777720654; c=relaxed/simple;
	bh=B9OV44zRhyzszQUhv0Bn2SxmlVpqtPVLBvkx8Ok4Iy8=;
	h=To:Subject:From:Message-Id:Date; b=tlVvP3FlHKsW0/hlZMPAROLL8YM4UFHcvLPkWiW9N6+dgNgCRpIYjOL/zIe6Ua/eG1tQOqDJyVQpxFIL/hQdqJ/1DRghSNY0m3UtdGbzK7Ykgryc1jufZkyFm40QcgMLdt4M6dGrHIdGqYWdhfonlFxFPwfHIMCqmwOg/h5UNmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yp5+fFDb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yp5+fFDb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB66AC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 11:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777720653;
	bh=B9OV44zRhyzszQUhv0Bn2SxmlVpqtPVLBvkx8Ok4Iy8=;
	h=To:Subject:From:Date:From;
	b=Yp5+fFDbdDyKBrAWdc9ygsVLQim+Xo44K2Hz+G9j1RrsGeJjahnvkgs1kSwU/wLfD
	 qtQBAcQfW5N1JeJdPSGRQRxWwaEef6/7hB+k6J45axYIsbnUVSGOi4Tm+5k4G/p3qX
	 CRwWfevgdu9hDu2shfAcvpX5brPbgeAdSfgm3jzQxk87MOROUjOvRbFNYVm0vXr2FZ
	 TH0uB6AGPWTaoyyI8rnInTPpy/xelkSo/FIq6WAam6I31O13eHo/IFdDqK/qkPE5ar
	 WRhboyBAU/PVF9n2zjKSDEGTWOdClr86LQ5IzcAlK4jGQKZRxW15dSgTWyyuwKVuyu
	 cglW3SEoeSoGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE593CD3423
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 11:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177772065369.24695.13034351779494523488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a18e1208922c6e6ba6120df6af320e57469176df2bb353fb5222959f2d859d10
Date: Sat, 02 May 2026 11:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777720653
