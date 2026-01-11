Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2275729A2
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 06:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768113235; cv=none; b=QfLCiTAziTg/4XzPWFThR//N8UaRv0lC4Ztp+TWcPGGufTVespW+iwCisNokCXEI087cAyxFpWGisYpzTHLtHj4qFzZfZ9fz1TWC8NCoWTIJt+VoOY2tauW7JtvHbplBFzZi4utGv2BupjHlBZB2dzRGNuLU2Qi7v0D5YK8qN/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768113235; c=relaxed/simple;
	bh=lFkFKQR77VscMknol9xqnVtC83VQrVqdFZ3yriw4LRM=;
	h=To:Subject:From:Message-Id:Date; b=Mq2bNZojiKUmvw9b91k1RFRLcjr4tJCpxVzNOxyCz7CMEMBmR0bwcNg5B5XozBQ1CIQRggdFuzykx52ZEEfUtEwuROic2PHGCjpxWxMGlKrmXTKKntX9xAgChBKDffUtlPtaTZZ/djoCmnDAxXCn+PO2ftdWZ0RMG1J+cwHt/zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QltFHFbf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QltFHFbf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FD2C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768113234;
	bh=lFkFKQR77VscMknol9xqnVtC83VQrVqdFZ3yriw4LRM=;
	h=To:Subject:From:Date:From;
	b=QltFHFbfYXO1fCOtIcZj1+oqjr5iYYyBpAvauxjrWohlU6h1Yd9vOh3mwOSlt47Ak
	 KVe0L3hE8SdCr010M05G6eLDBSS1DTM0Rw749Th9TnUmcfCccLeEtL2mtCTsio1++a
	 7y2S7eRq5mq5PI9r91KU7/lC4IH/UwxVaerOFeCyAUVngG5x1pp/wfE/KxaYWolePD
	 VGfz/f6HN3FdygN0ZNVeg5j+gAfKUwm7A/rtAfxf/lTAGXtV1ZuDW8pYASsR6g5xlo
	 t1lm/CalNc+juX8UNjv9hyB1CQey4vBujWnXIffTHBo+LTaZCvtCY0UqdTXvcmVRyL
	 DERjNygX++ipA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948C4D25030
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176811323357.25848.5936075874058064377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae8ff9ff44abd2ea20a83e2e01f68ae05a6364682fdeb2175c4943cf63d48b40
Date: Sun, 11 Jan 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768113233
