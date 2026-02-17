Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4F22E0B48
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771321494; cv=none; b=Nu2IX3JN0wpk/TauPRI25p5neRU538bkVJUHBdJDgozooIRg7iI+WgUrpaF3LBz+Y8fMjI0Pw8s1v73qM8fcPSULc3MjPKoNkeV7KL2Lugq2V1xJDa/Zb3Ki1wVFqYG1SySlhHsrntQPe8z8FROI7pBn2YjmpPB6fUj3wy2YN1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771321494; c=relaxed/simple;
	bh=mzQfHtRh78588GeK4AC4LrcfswOdMeBNwojakxXa8lw=;
	h=To:Subject:From:Message-Id:Date; b=Sv3MW5C7YDsSC3A4Wdk7IT8k2RCn0/yzGOSVfoqbCTMqVg+xA2mLPpdxNQ03tkHbO1UUKvXSfMM5FceSkljmR7kgbt4IqBY6Q4eBqj0gziyqlr850WmOPWdIdT5mOhtyMSulq+YpnK2+znWZTxxAlFLuy09fVRxknuSi1TdPpMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S4H6VvBM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S4H6VvBM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A13C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771321493;
	bh=mzQfHtRh78588GeK4AC4LrcfswOdMeBNwojakxXa8lw=;
	h=To:Subject:From:Date:From;
	b=S4H6VvBMOd/7Z/DXhYFexMrunQa0UUIgT+jVYd2kQdg8JeLp5giTzFCUR62yFc5I5
	 VMvczo1sNYrGNvGd4HnfLEbV3rIdQv3jSyfnDOenQjbI9IM0oCMSO4IHj5oAmI7yCH
	 f23xeBnuQ609xPinuKitkZJT+ppHt84bMQGFI9YjprSMoCBIk/1J4Yu4vv1f11L68Y
	 BsmO4eH2FnbCb0g4OPLcjaIf3JkHmH58qDxB4dOU5PAjefu+4EjL3XzQb/BEA+0sDh
	 XF0D3I2UoDFzNPBckP0b2xuJUa5x5pOMAzu24ncaA7GHRCV4XJAduLIOJHO8iUGtXA
	 oaQ3NPRpDvECg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E0BE68151
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177132149358.17041.8225590433640133093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f870965d6802a8753a123489d2daded7929ba5a3b97a01c27c8ccd747e159622
Date: Tue, 17 Feb 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771321493
