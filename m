Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E60912EBEA
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737196554; cv=none; b=dxQswdCGbK3Lxjt/Z13Sb+LYsTyxoKmJSMM6cfpo4D0J5326/c+w0pdcNuAHNVorJ8MTPn2WCGErGh4Tz+AYZEEYDILtLdYgxorwf/jzoH4Jvv6YBAFo6tVX5zu+RfKNRSWd89wH9R4E5FaP4D4P1Km9T9yKA0+XRH1btDwklpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737196554; c=relaxed/simple;
	bh=1vwVnB2aljH+D12zRMAsUW+s+cYYSXGgEtucQ4M27ZU=;
	h=To:Subject:From:Message-Id:Date; b=LwURVLiCimEiuQLFA3mi+W81NmB0+9cYGxgjAqm/7FXVUv7Y9sFTnx6+9uU1sJ39Wo3LtWae8hUIR3A7WY/5TMSoCN69TeYWhXbY+EXJbN2Q7w/Jl4iy+75pszfTowSPu2EehdMVyRGqljxv7vXF6uI4I1OmWZvYik5IvMsP2A8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hum8S4Vm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hum8S4Vm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4379C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737196553;
	bh=1vwVnB2aljH+D12zRMAsUW+s+cYYSXGgEtucQ4M27ZU=;
	h=To:Subject:From:Date:From;
	b=Hum8S4VmQ7LnZ7jQokSZwckBXblkUM+9O8Y/19aK5iGCvBkqtKp+FBJeShjzoaX08
	 +/DCtDBud2VQ1w5G9hk0+Rs0VBDHupir2oePr9tf5WXpWelpWTRNhl7iuKFzG0iBtz
	 TGm2xAmWe8pLYNVY31rGvM+SE/gqJooNgf4Idc1pv5KNPp5zhp0A+pRDUjhW1HOAu+
	 a4p4l0IM+mO0ucU4V+tmt+xNBhR/z6pmbHyfiXTByQCzkU837kW8EubJh9YNpJAFCo
	 BWYZr2pdceTmxHRbs2Ap2IaMKY98ObGCzmwoTwN4UbwhvJfiTioAjaORNohsUBGGJr
	 N5ncEPaY6doIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9188BC02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173719655358.7492.14352146419464756981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7605fe2dd821af14100111273a1b1b75250159294d46ab2fc5d3e8af8b89d9ff
Date: Sat, 18 Jan 2025 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737196553
