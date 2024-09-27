Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335A4193
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727395554; cv=none; b=EPDg9WvcsCx/BTvwFiMd0ofpMKUDSji/tN9PGMG9ZP52aREjVCarFTAQhrStUQyOVSBwYlnIxXpsa8gMqNBr6/AdalnXKFALByJhW+mXJU8DJbKoBwxtK0x2TT2JNPKPFZSzGS/e8NIamOKat4t0ZRVTFgA1o5jSk9x5FEJGRz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727395554; c=relaxed/simple;
	bh=zGc2bIjaEKkoLH3dm1VyhEV++jvDWydV3j0dq5cvcNw=;
	h=To:Subject:From:Message-Id:Date; b=Zlui5ceblA/TKKSlE1za58WacN1zC16Izxfnb8nxjPl96MGIOMvNz6TpI8krm0kQEdNmAJp8oWKibcI5h9XkZJtQLtFVokGxkXTN/RP0N4wXxIfxxM6I+bJPe118DFyoyOE6yNsPSu57UjV3K/RZj8/QrRjbrOeevnraDoefNvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHxVunkM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHxVunkM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABABFC4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727395553;
	bh=zGc2bIjaEKkoLH3dm1VyhEV++jvDWydV3j0dq5cvcNw=;
	h=To:Subject:From:Date:From;
	b=UHxVunkM3yrxZTW9My87X20REwkG4HzOZa1GGgth7Aal4bjC1GUgs1bBLFUVaBm4b
	 gBmK2B7WONRtZk8hxELBchGHo75P+iyRXDXDBoNKxcpDIOgKSM/XmvpJIu1uWgjYIY
	 80iqFq7sI0x0iQ1XenwUNIYFGQG/QZXkANHhWqXHn3nEkft2BS7WePCHAOts/YIF9L
	 WM0KraPC4AoF9J60Rvz6aO6HFIfyyRdMUadnqinuadq322TYhZc3e/UrRfMHOfbSoB
	 +eqEYckSM9MkPNzM62oRsRoP+qt+rc5DKSV0wWg1yUmVDZpEonCau/sU2kCTVxShb0
	 3e1WIA58kcXzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959C2CEBF60
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172739555360.9250.10791719211579670017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b937d96e17ca2ba4dbe212733e5100bad4435fcc59582c202d6dc07be0b13f3c
Date: Fri, 27 Sep 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727395553
