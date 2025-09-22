Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A992184
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758502194; cv=none; b=I2xZks30MYWI7MuZw2L1m4Eeyr6ktwSmcQ/OYa24z2M0novQOCvdhMCZMeBFqeqyX5hZ/2wRq6nuRhHZYkCPI4zaMZVJ4/sW/vZ6RthXzoZsjBiovL/Ui3SloQoPDRHvQEKBkHcbHA1hquZdf0u+xyVYluDHSIELN8JABYEaWAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758502194; c=relaxed/simple;
	bh=kqS1TyPXlY4eb4W5FfJEASG9OtImY+OxnRJwN9hZYcU=;
	h=To:Subject:From:Message-Id:Date; b=GCg19H8H6ulbjIiYmOgOgh3RrcpJtwASMHn7Xra9gcAox3hdsAkHUEeC5ABiW/65BoyyiHh64WCSDLxadxVdKIRgnPSImXBJSdKlBy3rwbxLtjHA0xABw8FZ11cInR85fSOByFXqmDB5HdQHemWKlJ6sccSBYMxI0IkgXLQce6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IL/Twa9J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IL/Twa9J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A959BC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758502193;
	bh=kqS1TyPXlY4eb4W5FfJEASG9OtImY+OxnRJwN9hZYcU=;
	h=To:Subject:From:Date:From;
	b=IL/Twa9JkNh3VPwEiUqB6bhymXKRwX5D6M2Je66ZzeT12GWMbfhbXWme1P/jV4Cvq
	 QO367ZoLg4tbsMk2WnYt+i2SrUBFS8Q/93DOOsK4DS24YBjdGUh7GamFBBoTPHizov
	 mvj6uicEjSEE8iZcGqIFxxK1aBiNsI6TJsU7tBgIaC3fODjPrpsjr+td198lMkD+kn
	 GmYYEqT1Mn6s5CMCfDEbLOat03HERSNhzIF369XVxpLAt58H8afP3biviLAl66iUHs
	 XDGLESE/MM/dwQ6AJX31Lm0f5yYWws2NUi8I5/J/F86W2jQ0lKwfeMmA/Fmhm7+C56
	 OUk0AYaQbaa1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9599ACAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175850219357.11589.14258045898866150255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3fcc3f8cdf80d803a2020b78825f388c3d40dda24117853f04a4c1493f805a7
Date: Mon, 22 Sep 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758502193
