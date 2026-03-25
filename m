Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116C71DEFE0
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774415694; cv=none; b=JuD6n3eOXPut/m4Ez0Oz+2Qj5mEldDXEofp+yh7BQoDff+Ncm5X+oBib0mEdP9U1KlnIr+iefzGxEM3XvDsEZ8hHbCS5yB5a1b4/xG0BiapUZUl3koJ3IKG9BXcgkQ44G+Pc5IZeAcyqJCs8oz6JDn1vX2pSW3pqMlbGWTmywOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774415694; c=relaxed/simple;
	bh=ue0xMgH29SREpLWSlVnRZVBFeGmwb9eb+/Yt68f3lRU=;
	h=To:Subject:From:Message-Id:Date; b=aZL69xSFErOQSKbGIfjmmyFHdU0PK2FCkK7SHFsa9YABu/JMxmsEyg/Qb6uApVMDFO9tCYRPQEhmhlWs/7rA2mkmEzvsBNwQ7WElgYpadzg/ifg4WLJD4eE36wGyYD97Nxwe6zhERlajabbKeagZrML6L2zRaBlzJ2VIEortMKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=icgk/0KP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="icgk/0KP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A377EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774415693;
	bh=ue0xMgH29SREpLWSlVnRZVBFeGmwb9eb+/Yt68f3lRU=;
	h=To:Subject:From:Date:From;
	b=icgk/0KP+yiryBFiVuRLbxQ5GsirsToBPGcx13Uzc5TPuKq1mMYlyd0TFiGJuBE0h
	 53kIuyE6GHg7FKbgn++tKqagOtAbvunRVM/JTfKwjpkZTfkYHNyvSwp5T6YNOlRKu5
	 6xF7VkcUaQatpb+jhjDdhKripk9m0of4n890zYp9oe6ZNfOGr14z7RekSbFNor4Dis
	 EGhZNoqS3lYpQ4zZD4WKQcltTbxMcSyFMqn5TEj5NPehCqNqxPtKA/CnUpSwnjVL8P
	 EDCse+SwQXklArAjV7V2jbXI2JWuR4rtw2t2x+S1AJ13D3bADNtDBFb457FwgV5buS
	 +dRQv2Fl27Waw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91518F54AD9
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177441569358.9266.5409269379353525566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0343c4758651122356eb66bbe13ae8096e0b4e30114498500ad088ffe46752e
Date: Wed, 25 Mar 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774415693
