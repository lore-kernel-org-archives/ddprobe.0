Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1136022FE15
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759008594; cv=none; b=sSBMpjXGfqEbjw1a3d3a6J7iwidSfCBbF75rxsTOyEzBPGxRD730XAdRA7HFhzBMdM1iZjMlTtVRRF6bta9fIrJIBJ9HXAUBroXA5rSnYxFp/gMR2dBsB1D7PhSUBTt6I+UuQCAxaxHAdb8ukqu4SXgr1NYmqPipBYllwQovQ6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759008594; c=relaxed/simple;
	bh=35o1IoNDHaxMTbDNHDbXcPbWrAO25YrbagGNVSqnx/g=;
	h=To:Subject:From:Message-Id:Date; b=cBCq2tMTFC9OlTc4qXQETueinBki23wXa3Wpkp157ZXyHOfDeyFCTeAEMiyKpmwhEKTZ85E/O5SHxcINXoRuq/WJmtTWZlbwxdSvQ5HokG5OY9X3Z/eSKu12NfPkvRqs8Dsc6u2eZaVTJqaCiUXRMaRjDIR5jApjGxjmaOcGshk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NHcC40FW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NHcC40FW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43D8C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759008593;
	bh=35o1IoNDHaxMTbDNHDbXcPbWrAO25YrbagGNVSqnx/g=;
	h=To:Subject:From:Date:From;
	b=NHcC40FWT7ybPGatpFzd0CCDKG1fqhskeeRWhkXI2Xs5urIU1VUbHyV/zHSvAq2CM
	 tP8cgBtYgjQ27zQWBsepJe5tDkHo4sYONZNOHLrDUXP/KF/IS4UB8X+KLGFBcxoyen
	 9s7tJt9tmDtQx6ioPKXNyhefayvleFD5rIo1HRjMK/uo0m0cxyD30Z1o6BO3CKyPGM
	 SySGppvzS9RcK1IC/fiofkKdqlIZlJ2CYFrEdIaFLHP9TS8qDMbudqeodyb8RFKfqn
	 qaaO1ydxUAXiMUsFqcxFHWJTY8PVWxVa2qPrCYKXiEqrTOBZ+NAlfgC7sAD5QmY5BX
	 RoGpVnMmuDXEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9542BCAC5BD
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175900859357.29967.16099330033092970496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ea824b0972f58067248dece8d843e2d1e983eadc8266e4e5b9f4db9c58bcb1e
Date: Sat, 27 Sep 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759008593
