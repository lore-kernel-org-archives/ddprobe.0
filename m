Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67D2E2D1907
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 21:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784409514; cv=none; b=QIm4es+waXulc9d310D4OwiWoq32lUe3RyrGrY7QmD62xaTQsIrXZh2QXuxP4zqQu153Tpm9bMoO7ahpLDWojS6qrTIIPb0OvmefMJWr3UW+l8pgC7hPW50B7jxgG+p+RCgMX2d9n8Xq2ftLDoHjxAWYelReiIlGxwaJFwab/DA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784409514; c=relaxed/simple;
	bh=8JQkS2ryiipOo2MHFkM5umsjqN0VsUfJuVwc+duGeGA=;
	h=To:Subject:From:Message-Id:Date; b=M74+yX6bdPO+dkiKxpVudCgkL/203FGxo4tpYNiTy5SQhx7+dklx0clH93sQYygoNYllBtokMTIifXIpKfM6x/8riohNix1+yKnOQ91aSDiP18Py+xVbMsNV1nKMVDe4SvDsRe1ovS9UDVTkM6DJyzmXQw+MD+ni2+jzNRFid/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E2AotVLd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E2AotVLd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2559C2BCC9
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 21:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784409513;
	bh=8JQkS2ryiipOo2MHFkM5umsjqN0VsUfJuVwc+duGeGA=;
	h=To:Subject:From:Date:From;
	b=E2AotVLdUPHVTNXS4faqwe0sNgSgiaJ830z+qY9dPiJE9um+nZoJWxNz3HpoPx6iI
	 4kdoMmhxt3d9kzZJB+AOaalY7W9IztDWNCGeZv28ea/9+QLGZMeZW+z86TiT/SoFRR
	 s72E7s8cWX1QoMpglKtxGdodA5Wp/W2eMDk50BZZjHSdrUBiGEj+8oi1tsk2zXbhQg
	 E5PZXl5rfVdl4l0ItwYmv8L679PqLqN87jytHHHDvli2dX/ZICL83vvxf7VvradKH2
	 zt41SSndV11o41tUewEHaFUVACbj2AcHFd/a68hljEHkf6bYoxBKDaoO6trnBlVYRM
	 6iEtpnCcjMmBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD978C4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 21:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178440951370.29087.3523150523688301331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e656d29ca29a14e2f72027f5df211f1282f44a4a57c60f13f1c22dcd22375c64
Date: Sat, 18 Jul 2026 21:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784409513
