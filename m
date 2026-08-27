Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 625E927CCE0
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787791834; cv=none; b=rCMhc8qUcfZONhi5hlJJ4Sd7rnqBg7VzuIF1aaht/nIbpA5ex1ydDCrcD14w5lgEs2z4qUcrGP24baZp0emPNJlAyJz0ryx7j2yx4ooYcSQZ4pCmSPrVAIH3df3YK2eBSr28t29d/IKNsXw2hzIXcmVPgq2q9LarCyGbS357pUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787791834; c=relaxed/simple;
	bh=Ap/jsVFgPomhzsL6qrP7dv8qDRi4Bmv/Kohzj4tanso=;
	h=To:Subject:From:Message-Id:Date; b=UaDEKZtSRnoYqgaSm7IUzcr8xHSUHuAXUloYsuHxtgpv9KK9y5y/T3S/JXrYcLgXguuei6rBsAR0m0QKgSNaYo4FVViM/px1mKsWPfFTMO3qPAakZzssI+dIXFKhMWZZXfEsOlE6/tYK5rDAu9VkaJZWL7pyAnVNDVvsL/AWeWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h99tptIo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h99tptIo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D01C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787791833;
	bh=Ap/jsVFgPomhzsL6qrP7dv8qDRi4Bmv/Kohzj4tanso=;
	h=To:Subject:From:Date:From;
	b=h99tptIoOEld7oUAvYEtS2rWc8izJG+lKgbVhXmBbstWs0E8z25PmoVwP3L2mCshu
	 k4Kvu5MB2JxjfU0n50WY62ufoEMBGEvLOSQRS7e8uGesCFO9CA+6//g+sgQMuVW1an
	 OZvkf/nvb5ddIUqiGO5U8d6PZaBPZw8Z5yNTUL6t78ZAifyCd/s1egBQ3RP5BAsY7N
	 mT+2v1Lo+uP52W53DSwwJg6TlMQ/PAxcoKCo2VqvSOxnVQGMeGzNxYYL8/gIYcqXyp
	 IxKUB5Zs4XBnj/P7pPBe0Qgxvyif1YQRwz9MVG/gHxpN1JH1xcXttM5RTMYGzeBvWC
	 4oLAEYw93J6Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6966C5DF97
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178779183371.13681.16581473485738456081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcd37c2d884618794cf0dd8b5fbce4f8a2d28dd77f1ff0d21b0456ff69be2f24
Date: Thu, 27 Aug 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787791833
