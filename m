Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1898B25783C
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760384394; cv=none; b=ESOJjYki9F9GHzwu62oIEdV1WTnW2Zqzy85e+62R5BmxCBH18B+ICWXEKxkWr1n1QznVPDB7M6ixPINzsNMfHnGQDT6RGCzglho76ECOFLvUDGr9SH2pTpOdmcoivNxWvbeK20e4OTqHdOSaKeihjjLUxpgnaCAle/GBdpXjEeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760384394; c=relaxed/simple;
	bh=vUVZ3UrIf8ecXKoabLvjyBdWHnebPMdvaT1k8b5qlKA=;
	h=To:Subject:From:Message-Id:Date; b=dEwhPTg6eZO2QXVJ5SztygOhnbWNOF/XJJ5D4qpYQDkSgNYisfxFUTu9PLbJsBDIhd+Bu9c3lcjC/tVvOmih0AR+196A2k0TBI1+AcAatniDXDDieDGAsxNOltpAXWL8UNXYWiKfxaEHn0Iq/pb8NpkQhXO33YJjQssqBOZyBRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ad3+Iqks; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ad3+Iqks"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E94BC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760384393;
	bh=vUVZ3UrIf8ecXKoabLvjyBdWHnebPMdvaT1k8b5qlKA=;
	h=To:Subject:From:Date:From;
	b=Ad3+IqksOIiuMgorIYuG5m9V7QpE6o08YwwxIaIdVEgQzZZhTQLf1C4ChPPz9TogX
	 1bNVNc9CiXO+YN0jMDdO0/mOH9lATwXxPIVasoTFtw90Gxg6bY28Np2CgZork/SnAL
	 xaadNKs4IncFRlOuYK8cG3+OI4qy2BExAM4V9ztpSa0w/iNOWzdnY4UFam1ayaCbd9
	 7xAzj94kz1n8cfaf1SVAjwZCCQ3A20oSzsUZ/HBPMF/GbUxmtuUERapdBAB768dfEh
	 tvwt1U0XH1Zy8wOQpuR/N/7Dh3kMNcO5pc6I5OlOEmMuFjmTEMmoeIWlQrulxLzRWP
	 50ZCtxYmnXnsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904DDCCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176038439358.32117.9282219608670665242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eac0e25be2a4030187e4ff034dd06337c4fc89fa5588466bd757a490c52ec635
Date: Mon, 13 Oct 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760384393
