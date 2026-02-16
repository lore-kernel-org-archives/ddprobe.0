Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207AD1D63D1
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771203294; cv=none; b=mSwVTXmAee6uvdCWfuJX6my9UDShuX7lOo/BBRXNIt3oFyoZOfHLruA+goBb04/lKDKWCRhXtovBy5QsI9CgZPrqkCeqEfMPYpSUdVdyluZYeyhFNwu/Ta7PQoKn3XRqjzCRs8OCSE/GGAqCjCrdg2aDpcqq5/HAPnQ5W3Z+lSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771203294; c=relaxed/simple;
	bh=xOIpFf+DWvMTTQGjQgfwGq4F7zJZa1I175Js7sOPar0=;
	h=To:Subject:From:Message-Id:Date; b=e5CGNWNm1OFsYUd5Zoc53g/dwUwwPLygJlOgF+zwav7bX1Sfnt+QbUBxPyq3da7saMJaEHbZcrlIzBjAUnKspzEThUpW+q9YhXDGTbKz5fW+lZ3x/Hl4lSq74Tc4o8p58q1v1GSWgAaC24g6W/ufVDGZWDy/DzTQoKIqOUgYbZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UyKwwgwf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UyKwwgwf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9226C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771203293;
	bh=xOIpFf+DWvMTTQGjQgfwGq4F7zJZa1I175Js7sOPar0=;
	h=To:Subject:From:Date:From;
	b=UyKwwgwfX2MTy4y4KofB5a11E98cAjshDd/Mpxk3jDGLuPhC7cQLDxQ5LtUCExDsw
	 sbYvAzyk0rbsylsctFYjip3WwdjVGahZ051ZZTMc9XrEI0aJVYZ+twWFb9RCecwpT5
	 6iLf5yRrWCnKxBTyi2a95JXZ+IGPN1YDrQmoRrzkpYI4bwqDfp0xj/EkLjVVwIu4PI
	 ap5VxFVi/W0R0yk2XFgp77JTIvxCELMMc0f3tBv7jqpYbMnUhWjRyUM+q3IxXHzHNe
	 QQ8mlDbWeVM2U9GruMuVHUTCPvAnP3Vv7z3sypnwno0scGepcgR/KnCZmkvpPUhQtw
	 g3esUo9FfItCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D77E63F1F
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177120329359.15273.1565870521595745028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d673ec879a8e34b02314cc413b44996e01f46a77bf0172b7a78550af97d39438
Date: Mon, 16 Feb 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771203293
