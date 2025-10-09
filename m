Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E9C2EA176
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760020194; cv=none; b=SVUAKNdyQ2Z0tMar0YCms+vlMNFRaUJhLRCgvvvgcEEkWl0MDBdyL8osNoTtnO/aAXYLRLLzIgLeuaF5+YNvWxyvMtDIfP433NIDPz1Gq4JnpkQXrpbK2sDZU9kz5emZzwVLp6kFYp5mLcWPIcgy+k6Icv1j1EiARo+GdwKjz9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760020194; c=relaxed/simple;
	bh=b27wl344ELPzRILZh9sZ0PXM9bphD3I8O30JQuUwdi0=;
	h=To:Subject:From:Message-Id:Date; b=Zz0SZrMs/0Fg8tAs7ujAD4MwLdzQkOLHaSRltdpkJJ2UwIFWGXaYFxe9MFatjqPZmqTbeanXN1HqAEcXpkYkfpnijH6xQVxhF+OLQL41bG3rAgxZ23z4LeF4QZDmJ/c0cPk+ru4Edtrp54OGTPaVIlPwsTGmTadRp6UXvVd3wsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GiCGqMyn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GiCGqMyn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3A4C4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760020193;
	bh=b27wl344ELPzRILZh9sZ0PXM9bphD3I8O30JQuUwdi0=;
	h=To:Subject:From:Date:From;
	b=GiCGqMynqgiJ3xqh07RYORfYfdh8Y/DzEpfnJerJOeCAoBs5lrvGM3uIAemkPX5hA
	 CxdWJNVxrYsNpEzpf3i7UDipvoLWbRKesZWeTwui4Z7pA0s08YzsjL9yVSyKO5KwuH
	 E0i0eQ+LSUNnsSDVtqKzu4Uq8Xq8u+Ve595r++8Hp8192yyQJ7mYKTekr2HrYAgJAk
	 /LNEV4KABbYxBFM2JczQv81OPf+a/RVbK4QQoj3NbUCVEbiTQrI9HcvxVaAoYK3XW/
	 XyS5URTQOC7R7O+3C1yBNVRlIkuXsYRXMRXYp8N+sOiwwnoB4eugcuClBlF1oorGV4
	 LOORwmNrZCxrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90656CCD184
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176002019358.16874.5427261152441252581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5126c8fb4e8b5c5aba67cb3471eddb1478a32cd241d9219fe040a894c0f6fbec
Date: Thu, 09 Oct 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760020193
