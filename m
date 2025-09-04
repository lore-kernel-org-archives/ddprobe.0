Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0B22FC87E
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756984194; cv=none; b=UeTKp8riu9zMdGjmR2O4r6i4md07G2TNqt2bB0kNwT5oZqkV6khD0bq4LU3v4P0tPbZyho3InB55LKusIfDZhyEhit5TtB9i8m/hheCMZvuHUuNoOltfhHiBLmYfKGjO3ubqUcNNU7m8xd3e5lrRO5MhCwZpLLLgpQbtFPWSl/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756984194; c=relaxed/simple;
	bh=gdDXpxuhwXWRyvKm4WEBw8w1G4U9SW36+w1wU2kKlzc=;
	h=To:Subject:From:Message-Id:Date; b=JBGCXsgW8+43VIQ+ZkLVM//h0yq4I+62VE5lhIL/s58pWEPKaOdT6kbcwoPR0RaObsDDIVxlVMk5bUx7AdnxdEQgyAJolvewCxnonC4wqAd6+e+wymiAIn2tD/PB34jWJm/Fxn0J+P48KXjocm4MxkG41lT7vnwzKNZGG3Imshs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fd7Ve/ar; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fd7Ve/ar"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C0C8C4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756984193;
	bh=gdDXpxuhwXWRyvKm4WEBw8w1G4U9SW36+w1wU2kKlzc=;
	h=To:Subject:From:Date:From;
	b=Fd7Ve/arGUTPh+l3acfEnyRNtAM6pXNwiPTpdUfUmqEaZQJUGwdg56AmvVwc1f92a
	 Js2J7DoYsOgux45DYnVtgVvPH10dPyxuZckph3riVdHnPOkRj5/NWwS2t08ByORSBn
	 QXOtVe7sATKrBOu4ef5BYGSXRsivuTTxsS4x/XlW+w6QjVHxv7JRsmhiFFICLJUqGa
	 yCvM2rUVPFMXo1sRrVK1Z2lTzbgfWLi3XBQJC/PWnT4VA+U7Pimyumgjt3nZAbrt8O
	 zNqkK2tn6qywv2Wf3cOBgEdzo6nryRyYpAjD93VgqHIVbll2pDYEfkPP7Y4NX59xgd
	 26H2kt5CdxzhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F82CCA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175698419357.2618.11973845142626633290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c383c01ebb341ca92b1c8049c54d0ee8cc73844ca1c471ac783694e5c3d48426
Date: Thu, 04 Sep 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756984193
