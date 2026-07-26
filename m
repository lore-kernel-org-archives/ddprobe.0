Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51A9F377558
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785069034; cv=none; b=t8y1yYWVxRY+JjVBPuTTG1X8rOyMOcJWZq4AgmXxU1s51+sLtPumtVY9ufAj6zQs0cKpkFErf1/5C4uvtna+lNr5Q5HuNVIx0pdcKIqQJIemYa9PZGliyEEJWyfdPLjs01dg0W6edxMEHzmkWLOS5VxXoU9qkKiQpMlTLnYoNCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785069034; c=relaxed/simple;
	bh=Kk41EsIgBwQAJAJ/KBVx/bQAE8tIJ8PjoxTAc+RkQ/Y=;
	h=To:Subject:From:Message-Id:Date; b=CrU3if5IU9+oVKfL5YWKzv/8M9zP+q6Vb4/+G6Ypu0R2xc3bx2JaClAoMx10bmaSK7jV4B/NKIMZiVWiLO8uHeUDJb0i17uHVDL86Dr0ke60WtOWNVAlRUIUJ1jW3cjPK5jBAoMp1sH56Rv5aKeiWopbK+QjA4aN1dz4LoMBOhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPTGBbar; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPTGBbar"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C98C9C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785069033;
	bh=Kk41EsIgBwQAJAJ/KBVx/bQAE8tIJ8PjoxTAc+RkQ/Y=;
	h=To:Subject:From:Date:From;
	b=XPTGBbarlspHouF800IDcCtob1EQtpCkw2JcpEskixQkGnlPfpD/HpIvlhfEJCQKc
	 xv0gAKu7cpDi9pXFMkJ4WkDepqSXqqBppfdMevV7ZrAFbGgy6X+Cps87DPjUbuCuSv
	 RydqQME+OpWnFDU7Kke0pwtoNztXQDv55fdoJneF9uRcB6BHAXPKELi8H8pAHF/IJS
	 Nv/7YcToLdjJZ12yDV/nEcqcyf6oIH/WzsCAIy0f1vQL6XRJ8tkH8JzwSpLVqK1zla
	 +8fz/H5zWN/CJSVpV5LjwtjehKHhcT9HbQ88IP2908lVugUEJuKG2R8ufw4SoHLUdN
	 HSJZAKo415u1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A866CC53200
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178506903368.20467.7611015414243086275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d788bd357b24091d54239de4e60f7c300c3292915fc429c9415825e6f5665c37
Date: Sun, 26 Jul 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785069033
