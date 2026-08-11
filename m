Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E7772F8EBF
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786409434; cv=none; b=UsW4/qbxo5r/3e0eC5ph8stE70nxpNbEqO1uXbWsHPwwP2qy2+06Hy3lV2CtDCuLaS4SvSlyBWpQtWnvhab/LHCEPI+aRqCDwpvSwWAgkCeOsfB4NGJxd6LmevGs5rqJniNqFSfGj/pGOoPUsTI3ynUXlyZvKhuwizbguEkueMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786409434; c=relaxed/simple;
	bh=zn+AfksIAOs6Rir0QGYMA64PYeKdOnX2XZFFWDuMyoU=;
	h=To:Subject:From:Message-Id:Date; b=Ff9X+rADOTTkmec4895v5xCwIb5SWagoO2tXG556ECiGcEBrL/7BpTRatMjeBLEc4vuVdgA4/f9Ft4Hx22f1BcOCDifEXnybrGDgEw1mB/XHPCGIAKsCKB7XfWjeDomB62ejkEv2R6Fs71FMStG+HMi4Q0dEea0GPUy/M7qjkIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ogCsF4Jb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ogCsF4Jb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C90DBC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786409433;
	bh=zn+AfksIAOs6Rir0QGYMA64PYeKdOnX2XZFFWDuMyoU=;
	h=To:Subject:From:Date:From;
	b=ogCsF4Jbaz4xfOxpH2hEnMg8HlgTH2g9sU/uWFfK6TNvX5uOQ1EJHm3qsJNdrLEop
	 bCj3rI8w/hECandW9ypWa8yiX0ouH5ANSuGkN8h+dgFCx2SmeUrUASb5wkYWH2m1+l
	 WuKASJVBwgAyEG2Vu2eTTlmq9spBFAXCikMIX+hSsyZGXDsUZX7+G0NgjE4X7A0vxf
	 gt/gZK1MNePDEtRMZ6AQk42znDIW9EupD8QiFNUNAits98UJ9jvLCfRB5A1tJ1vngN
	 e1nJ+pNREIKG5cWCHfEGXl4+7OQY01kulTbRRtUPvVCkB0rMrEK3d/STMQ0/QSonRU
	 kTXCusxYKHB2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84D4C5AD7B
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178640943368.645.329674098091022032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84cd52c8f71936e36a13c731efd7329de971147a48ee9cb2fd5835586399b2cb
Date: Tue, 11 Aug 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786409433
