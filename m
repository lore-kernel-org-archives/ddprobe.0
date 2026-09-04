Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6792C3D813A
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788537634; cv=none; b=dVhvsuLd5kQWcUREL2BPGTr8mzPs/yMB70k0y8bHZE8ms55Blv41UoT2jMKtL3g2OdMdr2tVE33YDGygjLPp1852guEUswMw3VzyZ9sljPCLlGHK+DhOL0PEtk1l0bO+nqwKdeoEKTbZSsL/NG+jHfw70GNfyVGYgBXJ/S8wtAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788537634; c=relaxed/simple;
	bh=eedAvaLymv+InCokxXDm+AkAj1RSvsl0wbFmWnTj5Pk=;
	h=To:Subject:From:Message-Id:Date; b=exi089/z7nDj8f5eD32NFVIymPwGzqWgan1H2rSzALlqVmhCyBIMRexFeZjFjjz8T5gpGrQXyMQ2RWHj+U7Maoeisni8736JhT85AP32iWFczB41yAQzYTjoAwRF5XIkDdSfqyJWC2vPv9SFcaMuBOdctdAd2cy9muh5LPjilRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SHON26zY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHON26zY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20B0C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788537633;
	bh=eedAvaLymv+InCokxXDm+AkAj1RSvsl0wbFmWnTj5Pk=;
	h=To:Subject:From:Date:From;
	b=SHON26zYgIcuieYfig1UPNut/jr0oNxASGaT7EG4oqZl0PfnB6FDdGquXOoB5Kafv
	 pxTdmziAPHlJL8C5TnRoqIE/DFeOdO08iNOcASEXYfHB8H/Y5m8jAdO9riRLUVuS0c
	 Nfdipp+qnUanD1aLVHP1ZhxTrFa7I7JwZ0eGWHIRNAT7pjKKTKfnng3xFaK/4zdBz8
	 a5RTBhodQu0qmUmxZwpyOwAVX1chR/u8HibSQRhY3OqjG6yZ8js5jvktFaWb/JywBq
	 0DG7C8YG061xdALyazzF8fTM+6/2Vsy4yU5j+aCsJx8pegRqsoWa2uqj5XJ8fFi1zP
	 u6XbNAt93PDsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD64AC79F82
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178853763370.3809.8313101731267352764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b8583d67ccda9128b11b23ed88653960150c6c4e31b213237b709d8fa91ec39
Date: Fri, 04 Sep 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788537633
