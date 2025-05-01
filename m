Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53139257443
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746137994; cv=none; b=fwkVeNWdcCOfbtgBw7TLB8o9k7buEv0WfiMOZK/xpfreqx9E7RQVSffJq/TTKTDt4mmsQoItijK0j6/73v6AonyEBnypI6Wa3Wc8EwjLCRdDtbVV6LLfGCNjrnKDzX2RmZ/dY2qheiok4SfXgTzM03MsKNpRjNhBbMGEY2tQ4XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746137994; c=relaxed/simple;
	bh=x8wIwZsxO0bHmhC/it+3uBdx2cV0fSAax9HAWEHLjcE=;
	h=To:Subject:From:Message-Id:Date; b=IrOLsUUxijDvejoRLrgnqO+/cwEPUyQASXr8TQOwhfenkoKMDPPcxfoUjEEkxxtCRfAU3Uukq6jAD0XInH00n0DzQO+ffIr0lpbaysW3HanOvC7BoBirajqFfuVMuxI5cxgczWcC6IlY/Np5cOcwoa/vUu1S+NN/m1V2dabIRP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oDCPIyim; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oDCPIyim"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3528C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746137993;
	bh=x8wIwZsxO0bHmhC/it+3uBdx2cV0fSAax9HAWEHLjcE=;
	h=To:Subject:From:Date:From;
	b=oDCPIyimVanMqySlWKUOZPKGnh2plL6RASgCPnqLyfdWJBKbBZiRqHORu6TODyXGJ
	 lwCz4+xEQeK7Us4/NNXbCUSlArTINA0qHv7eVYRFFAlcHqxRwelXpPUfy58QvtAW7R
	 3Ubi+1ai+nvnvmMKMgolEEr7IuI3wN79+ohiFlFG2FLWwjCQty7J1TtPBLtFl6l4s0
	 f9a6N0zuF37OzFTZO+RIz62pNCHyyZv/5/GotbnJYhI//T5udYSVS4kHmUCWLZbqk3
	 sqFwCgD2kLQjuTtJqx69/LD1nDwYxwodkfIteBGgk/Qf22kBnPJ/KSv5K9fh41vGSi
	 Rzv8V9LazE+3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D22C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174613799357.14372.4241558838843083928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba11fa7e04d7aea9b73fd390bc2ffd9d9183fa9c27627e2b28bb912c13239449
Date: Thu, 01 May 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746137993
