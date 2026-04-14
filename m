Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314B03A1A5B
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 08:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776155254; cv=none; b=VpylWdOQwk2zTVz9Z4Fv7DOfVkanl7ypJFDZQ/8vdl3KYz1XOzvg6gwGO57lMRTHtyrBowwyTVMGEnQbE4juP/bdGgh5lEpjpmJXDwHS490bTVpkMWZSR2nQluE8J8t2ZMR7zOn5oOrMFYAFQ3u89UuMMBVNFR5yklJx9iLGMqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776155254; c=relaxed/simple;
	bh=LoEpLrBNJF2kSqfUQWcOXiIJmM/Z+FXO+2CH8gLrMsQ=;
	h=To:Subject:From:Message-Id:Date; b=Fk+UrTLUDLIV0bpD1kAP3/3PXv71zXKH/Df1w8wm3j77q35Qnqa5SjjGvsitE+f1cvhcmTvDfIalXo16WDWdvaXqCpF+fnjHlC6jAag3WhVcubtLG8HiZkhGPPGukidJQt7xdFRcxVuDC9pnA1HUpq2a63VBIWFhtdL9x7juARk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RX+Hw4GI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RX+Hw4GI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF08C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 08:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776155253;
	bh=LoEpLrBNJF2kSqfUQWcOXiIJmM/Z+FXO+2CH8gLrMsQ=;
	h=To:Subject:From:Date:From;
	b=RX+Hw4GIsNA68502WFl5r2HJpsJgxP8VUQ8LduJlcUC64O81ACRusrD9zL2Lzy7Bz
	 Vut2giet4icCyvwW05Gy/OmjVKIXB3bpIiqdXk/+ISD6kRqTpeqj9fypan9RoST8AS
	 CoIT8tR9W4pxjqjdgcghid95jEaCObsqrZO340yJjWjVoGQMPK+l6PnR3TkUAGyrGp
	 SqykBjbUf2HlSOVUpQQdeTUsVciZnioU35KjJx+EE5AI+Muw3WepeWmVrnRPrT5z5w
	 hje+gGgiOuBldRZJ1DD8FRdk3hAeIgbEcTL2mmJv7bRQV3E4FdvDRat0aCRK92kDHw
	 9XdgPg3ObC5kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA61DED7B82
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 08:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177615525369.19816.12197697326812547173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ce63449033573acde2fb68de80c1463cfaae871525c1290d63059ac9f08eb44
Date: Tue, 14 Apr 2026 08:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776155253
