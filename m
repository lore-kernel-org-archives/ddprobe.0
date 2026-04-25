Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F293225397
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 11:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777115854; cv=none; b=OQV0xFNB7INj5YaxeklRrB3WIVaDO2dEjN5fmi1p0zU+8LlFmmxGXDFefXM08oSp3jzvtofKo2KWM1sizHRX7B0o6MkBaMi3nT5HBjkcP2+vnKB9AzKY6eUPxL7LE9NrHT1GHmTZalizfB/qrreBK6eLnoC+70quytmhe0Btxkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777115854; c=relaxed/simple;
	bh=n0vEjJiXz5wHj9OqPvG52U4d0jIDhWNgq1+UPdvUa3M=;
	h=To:Subject:From:Message-Id:Date; b=mfUXTy/umyP3Nw3GOx5bqQsqB1a6B4WCvWwJmQfoLFOewIK+6aAaSwXDeJzSP7ivepzy8JxkXCeF8ZD8fEbnWOtsWEBlN/9BFOue/mVwH8p+jnENUVtzxRePaFsdi9fJTkOw+LaAeaoIH38sjSXrx0bneP+4qrNEJoXOm72QIB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X3cSp8SI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X3cSp8SI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C02DFC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 11:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777115853;
	bh=n0vEjJiXz5wHj9OqPvG52U4d0jIDhWNgq1+UPdvUa3M=;
	h=To:Subject:From:Date:From;
	b=X3cSp8SI+3i6gYKv4sCYIg4RpTKu0P52pfP8/t+bvwAj1cYCPM3ZWQrNjloAXNb7a
	 vXUrjYLKyN+N2lBZ+8EwDrqVMJN4R9QBntn8b6xqN2xF2t1Hfg8kOND0NrP90qaZgW
	 indln3Kj14vuYarXzAFfLrktc+2I7As/C9fiOU9ng6MZdTpvjitzMnnxtoP14E157Q
	 GgnOp82Xkd2Ui1jE1l0zU/RpdpE70ZHcI675ETeHP8cNBLJXmGkTn4DJ2NDXQTnyL2
	 Qaz+o3hf/Z5v5bGsZDPDQ5WIkVaBsFNahN7HUsoh0Gj9Z8rtIRFfgqNxBTUq8I+suV
	 BeZbUAO9/bwuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF51AFF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 11:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177711585368.7115.5609576269451019661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf81bfbaa7a4ba9aac7ebdad25bc297fc62419e00a9ca05d477dc32cdc7e1240
Date: Sat, 25 Apr 2026 11:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777115853
