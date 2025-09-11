Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A95B2AD1F
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757622594; cv=none; b=oVIzGpH1Q8TRDCao2EgfSIIEyoLXPJueyD7Ed9hmNa3+bYQ+BFD3GEV8UgSmfF/OoCk3XZqVh/1kbCbSGwjrwRHSWefIczxT6yPNLWf6vIGLi3+JUmQvXmfOs37/flD6OlD5+c/r6C9NMquVB1r3pkRuJQsTGc8EUor9hlGtkIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757622594; c=relaxed/simple;
	bh=adwFgMwupuxZb26cuxnfisblCy/Oq/1gTlNgOGcbHeI=;
	h=To:Subject:From:Message-Id:Date; b=ehXcfMWqTd6Ooeo3m+clUAGPATy7X2F25tkVrIRFIYMqa3BSU1b+c/UyPbnE+7Z1Ax9Imzq5rNaH/S0aovr+L9pyPRUQMNWiPnNdhEfMwpvxjznDP71mfPRozeqjqdR7uQP/Q928ONS1ga60QB+eVSC3y/wXjd5/kb9y8WEEZ0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bYk8MylH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYk8MylH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5199C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757622593;
	bh=adwFgMwupuxZb26cuxnfisblCy/Oq/1gTlNgOGcbHeI=;
	h=To:Subject:From:Date:From;
	b=bYk8MylHwiQEnVETmg2uvHG1R9lk3U8OlIcW4CbnXV+Cg/g5jB8NaS4G8e/DsVPjD
	 WNNjgnZe48bfpKvFufxdSVD9MQp6FqOhiD2R5fpBoqfBS1/ifyJ9QrAS8xbV/jMnIF
	 f5gvRpGjsZ/JvCBmodt7cas151YHw600TypBHBRrkjxxqIz8ChTrMU2z+0xXxSkdfm
	 8KZadqUByrm2mNofU+/UukvTeSazFobWJQRhU73sfEEaJTIQxc/CIBnaAMdtJxcT8J
	 PZD+kq+h8bKHXkKr2ACTlov73794jylIxmOeFPXXjAdlA/tofubZ+whytNCd/WwLsy
	 Yl53MZIdaSa6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F894CAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175762259358.16748.13738669279785100346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85e7e75e900d63f56e364715c50cd2bbd4b8bdc9511b95b15ac1fe929be960bf
Date: Thu, 11 Sep 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757622593
