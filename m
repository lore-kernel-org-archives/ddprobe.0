Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C68141A6826
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772679293; cv=none; b=XaOjP/v44/F6Y9sBKG4EJUneQ9W405ikRAjNZenOdXrLxf7+Sda1hAgJtQKUyKMLtZTxDbX9JFX5efvRMFMAwhJ2wA1H2j++IhyMrlfUjX62iBpRRtpmxDQgl8Uf2pwWuQzyoAQmoE1l5EntN29XCKYB/C1wk1tdU5I+EWj3tfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772679293; c=relaxed/simple;
	bh=LjJSa42W81Qb488za0vX2xVPXCljVfBQxMTBp6tlNis=;
	h=To:Subject:From:Message-Id:Date; b=WorvKo5RK/eebPFe9JWn3p5vDWhadaT5cHOPztTl4N3VGeljB0mV5TZ6ytXzUVhIutxOAp8FSg2f2bW8zRzSa7Hgq8DlsLijAMsfEqVb2bOQdxrWjQiwA5zFTs/uh+nqUYGkDAd2c4a4vEB3A1DoV885B5zDSSWB+jxZmueMN24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RfWlPGdA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RfWlPGdA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E817C2BC86
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772679293;
	bh=LjJSa42W81Qb488za0vX2xVPXCljVfBQxMTBp6tlNis=;
	h=To:Subject:From:Date:From;
	b=RfWlPGdAh6JiLZIrEkp65OqkxkttJfw15+6KLK8djPYyA7iKUZ6+6wnzWl7WjbZT4
	 x4qQdQ/Svk0+tvxCfcBKTshDgdL9c1ed51ZNers7F8AWZAmPmCCmzAMWVbkgCn0Cqy
	 FvSLCwXj4i24cloDHBVj62cZmGI3IcAdtBvAQb8DCC4+c7jOdIrjOSCC8oGLymf2BH
	 CUXl5kvr2PvsD6jMtowA6DWdILmtVem8rFHH4Z8gBQzkP78n8j3lLCpa18SFM3budV
	 a60m3DlTsEB258X41ccM2TsjctfP2pNa1/+YHEJNn31c9kb6eDE8dwSLQ0bKSx2coE
	 E5/2daS2q+zvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DBEEFCE58
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177267929359.2420.2346695428196311755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab05c68c1b2530386bc66408200ee2abe7ec318a79ecd57c8d4c9f7d12b970ae
Date: Thu, 05 Mar 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772679293
