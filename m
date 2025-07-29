Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EFD38B
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753747794; cv=none; b=VftD7qhdS+9RzBCzzXjsrR6MayiIE0ECKdRrJrVYzsqOJhd+D0+YMpMQBsH6z5JPExfPh3I3gJP+rknonLqv8Kn3PuXQiK7LLGWBuGiEvQTmEMRVCDLuVidh10zxGnPb4XCm9Yb76KrhdCyg82f97cTmXDjz9lSFEfoPG1Wupj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753747794; c=relaxed/simple;
	bh=bNJKvpOCLleQMCBgBUv2crZcWb7LHLOoveS44Aff+dg=;
	h=To:Subject:From:Message-Id:Date; b=nIPtRrP1WnkjeJ/nAg5DowjwcmDW6PO0PufWgGfgqhZybFR1Ly+bgFsnjrRXENvgIHLEcP2ixKrgia8eDb1n442TP3Am2SCAW2cpxHSVzAj8rczTAFV5UGlALFZhdZvIuH0amxDAYeMVFUiOA+1h3rgoqHp5QN1htX+qv+UsUxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJPJjmVw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJPJjmVw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AC9C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753747793;
	bh=bNJKvpOCLleQMCBgBUv2crZcWb7LHLOoveS44Aff+dg=;
	h=To:Subject:From:Date:From;
	b=mJPJjmVwK4LltARSlxyvmOqchw2V9A4I2gcLT0/R75LG/oN2fEc+NjElqrhFg30xz
	 t+dlO2/Adp1njK6KjjKT+RWVB0+PZasMFL8E0GDi81c/nuYO1xAKwkhEBK3o5bwd01
	 xHS+Ju1csww0aHQ2TFVwYUVm3iyB3QEVDPBX5wGG0T85sGWxZ1VkthUE7fOct/TB0Q
	 KT2AUS4ojmYckqkKjPdOcTOjXyvjucu2AQxYrEHkgl5xWmA6W7xqXExXVUF/yfcAvO
	 CMV5ynsPmPsVmP4DUAanStjt6+Oodw+EJ9+s3aPuLeqPKuMNGsCGpLtQMDi5XR1Fuz
	 s7flVpb22HCAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9026EC87FCB
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175374779358.20995.12977097550551025381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67a5b8b8220860a47fc81b954aa5bacb54cffcc8c7b42d2b218a9d6058ecad69
Date: Tue, 29 Jul 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753747793
