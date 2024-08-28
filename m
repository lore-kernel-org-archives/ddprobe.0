Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7C6156875
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724881554; cv=none; b=F1ATHssQYJ66qy/n64sb8NkBzJ2xhyx2V8YuF0y41IDcPGK/j5ML109IrV2Tza/I3XwAt7ibaHzxZw9WCWxFDwcMBSd+gQ2zyIAKzTIflYJ7nSNRaRIsMjZ3I280Yknfjb74FvxLJKoLUscQ5JG7lKxGHsdmHD02YzirYD7lCWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724881554; c=relaxed/simple;
	bh=J59VWGpSIRfn4Mk8b5XAEBU+lTxeu4t+gcePB7LUqt8=;
	h=To:Subject:From:Message-Id:Date; b=kbz2AT1Nx8m86U6QqfGURTqgLksjByu9JxaXn72HK+Go/Y1sIR/dCxwASoQdSEMdjQMDmSdnpwjhjBY6n9uakB54Wk8/x07VMThDgDZQpC3b5j8B0ME9ofGl6oDwmJodbZzzFUrnvOid9GzMyglbF5HSfLRAajS6rgcYhufs6io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=itfK2K7X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="itfK2K7X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C62D4C4CEC0
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724881553;
	bh=J59VWGpSIRfn4Mk8b5XAEBU+lTxeu4t+gcePB7LUqt8=;
	h=To:Subject:From:Date:From;
	b=itfK2K7X2AOJRNzd6ADTHPnBn5MfTOigTrtEyoD1OsmYg2U+k2+L5wlOUhhcrGADF
	 lxYisqOQ9hhRHTHrai0kbOAduNojtRbciFUCixzXUWzdWZQ965io6Ienm2IelDK93V
	 awTRYikGGDQAa+g+OpXsIvQq+1r2k+YHDqvHLzdiQabVRvllVck48GJODMCto3Orfe
	 F0/H62Shxf+i9T1ACarMYxMHeUQCkVk3pyhjoeuqE/Cwi55Hf9eoa6fmYDaVjZCXD3
	 u/qUGf4wEm5p0K5ja27+X9Puz0pMw2D7XLH0jbGe1p0ubn0OkvIE5vve3HEXEeq7/6
	 V4xRVXbS3Q/oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A80A7C7114C
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172488155364.29975.7524498458353170778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6b223924dfe9c611823d0e9bda348625b2b621b02cc0192c611f464a6cba8b8
Date: Wed, 28 Aug 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724881553
