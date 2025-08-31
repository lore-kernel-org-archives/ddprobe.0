Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D25233F6
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756609794; cv=none; b=nBFrh408UqFjpclYJrLcgGqUo8HYM78gRjkBiFx6ndDrEtre+0ptaRfThgjxWHgZzp8xegnyI0lx8vzK9opNVNDmcd7XJArA9qtE45Nisy9OeASlR8OQbQzp37ArIUSIRYqQRbPCvdohyLU2taVm38BN8UJs/ajopXR651JKvzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756609794; c=relaxed/simple;
	bh=HQMuTyOcWcIZ+mYUUY09I/89EaiKAl7FkRT8UVQUcfw=;
	h=To:Subject:From:Message-Id:Date; b=EXi6V3VIv2cTlcSV95C0DKvGWfG4DjotbcFu4XETIzuZNE1dnj0x4n6+hrdvWqgWHFc0vGBXEAAOBk8n1f22f1SdqD5RZg/n4HfX91H9iQaLZewj34zofPhQf5J62bTGJRFecZH2lwLpc3ZSxYPnXN6QoM+0KyOwt7tow2SGlSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nECssKLs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nECssKLs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCB9C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756609793;
	bh=HQMuTyOcWcIZ+mYUUY09I/89EaiKAl7FkRT8UVQUcfw=;
	h=To:Subject:From:Date:From;
	b=nECssKLsTpZfc3GX7F2uMqM0ZMZM36M0dnp/AnGCDzrYgwAcRWTuQzWUBi05oerDO
	 trgMWgDswlOv+w0TAm318+izMbbJgrCRtczHtdPe/3d1nDTfp94Oi0gtf9pP9lLECw
	 jycK4vt/UuhFtJu2FXys8LQOq2Hgjs7wzJUOgm8mCWucAqnJ0eOsLJLz/bAIAWUHlk
	 vRmLPFJo4YLejnr7bZauwjoRgUMbjdwT52zhQWRzNwQ1aOxcsfvSzzSPD0EPsSMxLy
	 5hvPPCMWt8ILqu/3tDjmrvtzr/J02RZlU81uSakpulWxchBuMiOyIk3fIh61MzX8hw
	 91TQHpixpxDCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4FFCA0FFE
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175660979357.22727.5268320796543160197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58cd9734859cf7eaf380b39fbd8e14583d6bf451d066a72881c6a33392001c86
Date: Sun, 31 Aug 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756609793
