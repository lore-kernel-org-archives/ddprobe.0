Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EBF731E0E2
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757415594; cv=none; b=ilLmIsZppUFHInyIMW40ljtQqW+l4xnmw0+YhPoSmfUZpws4WAsr0qbQRMAs2+CfgyjUniRiVce4m9JnDBBNDaaB3Kr54rQfAXPOecS8gzMqBvOy1DoCU75Za+NH+V38tsgYlFSaxIXM0N8ZPKIwj0QBG1SS3a5Ipyq+p3Y5GlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757415594; c=relaxed/simple;
	bh=oXs1PbFpQCoK/xPLLScA6GaA4ORFXhv8zabuekytML4=;
	h=To:Subject:From:Message-Id:Date; b=XCf6il6c6KWUldK3Zh+2ByDu0vdKeaewD6KuHKCfwo9Knh9gbSutSTXTZ+HPqnFae2IEBsex70XpAbCzoQyVM667s4XnGVNBNVfJ4oUa9Mzur4G5BgOvBBHzOlk0+o8BgQurAELqneUbkqZttTTx3TSlPITN3h2ItM/fzf12Qag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=usRTPECv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="usRTPECv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7453C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757415593;
	bh=oXs1PbFpQCoK/xPLLScA6GaA4ORFXhv8zabuekytML4=;
	h=To:Subject:From:Date:From;
	b=usRTPECvSoVe1QdH1nMJ7UsWgTn+nhobQZ1NFDGZ5mNmRLaNflnwBOeNGyfOfUTFw
	 n+EDcf8YrzZwa1+JI9kGB24k7fghRdzZRRVmYjtGIF9KC135+CHML36Jyb2sCuc9W3
	 rbVWleVkgq7y4RYYm6Kin0h/+yqyXb8ToE0AaLfkVY9P0c77vbdaQRQ5iCLV2WHkor
	 wRo2xzWiXTMuvRKh52HmuJKxCRw6PzM4WQTPWrbD/IPQZ/2YV1bavIpi9GSJBxDxFV
	 zli4B9vxulRkJuCP+v1NmyBJnaro/va0r/IdGp1GfZmTA5B6dLG6sk0s/ZIdXwZeOc
	 1lemLyB1mXB3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9284CCAC583
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175741559358.16928.16083777682176491376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f49f40396fe07bce557aee953f7926c0beaeb5f846020df38ff6e96d457ef37
Date: Tue, 09 Sep 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757415593
