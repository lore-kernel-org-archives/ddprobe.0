Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F10329A9FA
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761534594; cv=none; b=V2KGseUnKEuw+0s6pT1qvUape9pP6epn0FKfdHcYXomlAH172TNySYZmVS2NA/ZyfWtysjG0ziiSUr6Se/2FwmH/nchZX8th93dvPwIeknxqSH8kFYA6QszLeWgtgxXY0zBeh/EFhq13phvUNWBI1XKxRYFszXbqaXml8PIZQ18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761534594; c=relaxed/simple;
	bh=i8gUhv6uGIFrP/1QnHsFI17P2mbavJ8dZMY6Mr/aypI=;
	h=To:Subject:From:Message-Id:Date; b=OvRUWGbxzX3OQXmlZo46ursVS7DPSsDsLWfJo2sDGrq/CVmDYBhsYdmNd/SIDJVmVWdSARM+l05rMogSpZ9wILmFaZQkXy/PG7u4YJjqHMnrhcexCltTxBjZlDJTmzBPNX9CSQnqFr3I6+T5H7gpM+aj6YXJ+4Acp8UCXzs2H0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dUd18Uwh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dUd18Uwh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2605C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761534593;
	bh=i8gUhv6uGIFrP/1QnHsFI17P2mbavJ8dZMY6Mr/aypI=;
	h=To:Subject:From:Date:From;
	b=dUd18UwhksF9iIm3srmhdkETqFbJi4ZhVP1EiCFwn9NCOeAV2P16TeNCuWjvqMRMU
	 LlJduOx3QDOtwNwSgAtBDO49RELVoOsoIffvF762intsR4bNVoIJQ6uThNJDeH4wRI
	 XGPVMt3m5/0OFPhVqqV3RHmOnAZUzPoQW4PH+Lu/lHDzT8VC2GUa2fV/JoqQealFfs
	 vkGd4NRxdwYxRAj/MQ2aw8X0GOo6A22T/a3pO2oPMFPGalxqna1TitHDuZ73Lml2T6
	 ahpC0Ny792zqYbH58mWMO4pAg13r+Lxe96E5nc5Jpk/ZCb6LILqdmKYtE7hdHMVq6R
	 4VeD/Kav/KlGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBC2CCF9E9
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176153459358.26626.12778359308717209041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b2e040ffc28f95afd7bab880ffb0e185b8dc84cdc4f6dd5879f1cf2ee9d6758
Date: Mon, 27 Oct 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761534593
