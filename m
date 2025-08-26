Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73F0F2EE5FE
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756186194; cv=none; b=FtJmnYP8vI9ClDYFeXCH3ogbjh8C13Gx6Xprhtp/PnVtAqSpS4piJ9+2SfA0hANN6BykraxfDbc3t+f2rM6Mf/V4je5lBL3RpU7Lgh9+cHF857cn9qhUNch0pkXpFcpz4INHuwnUdCOii1UxW54utLJ6rY4qqgA3xPtgUi/n04A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756186194; c=relaxed/simple;
	bh=Hrygl8Je5qH5BWl97PqrST0GEr90tL/3UOOC4NqFeUs=;
	h=To:Subject:From:Message-Id:Date; b=le2onJZSGSNJ0D8SJVvnNYdvdNyKr9IkCOQ/4X7AWUIJhM5rh5kglOyN/CSLblV1cZQX96wJWhLvTOsUHsBODIBe5omjXLrcZywALfD26uqZMdHaS+MGEm05wUUitWpRgoPtRtZb4Ei8XPz28z0xaJQlOu1QPXK/Qyr5xPR273A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cQ+Dj7Cu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cQ+Dj7Cu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01F5C116B1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756186193;
	bh=Hrygl8Je5qH5BWl97PqrST0GEr90tL/3UOOC4NqFeUs=;
	h=To:Subject:From:Date:From;
	b=cQ+Dj7CuAL4j9M5nHqLcqQRAUFW7AD66cWtLY+Yi2rSCKmeNgEsPjBEfG9oT9VetL
	 IIk2soiUuvhUI4AiLIoJTW66ZrLCwWL+hqLMUGjHYjYUTmvfvTHBhXagvp0jSdW3PV
	 qqZ3YI6Ei1zUazNAo07F/0Qk/ccsAFttNPXWNcrVRQI4QGH7v2PTGhxgeClx0M0hHV
	 v49Yc4TshVHNbxY1ClFHldOSyjiJ/+27VE1YRowdSV8wudfDK5k22MdKDi2q9sbvd5
	 6KZwIHEZ8lANNVq4pdU/iZjp2O+fFBjun8fOCRJoqLj4VjG9D08vkvMkS3S8+Fjg3S
	 NuX/ZIwWLCbsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF3FCA0EE4
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175618619357.15137.10249751288284925606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa6aef4d3aff9c40ee459364580c69cf47ae262f7bc5a76ea04c1529e1582b3d
Date: Tue, 26 Aug 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756186193
