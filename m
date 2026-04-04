Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CF6225775
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 11:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775302534; cv=none; b=rXUPob82ooa2uRBV0DfXE2Hc7BFvmGZyt5Z/G14s4F1Tn87XazhAtGXDQtmlFeFQF5gxjxAgczas2sdyMsmG1JmjObI84/Eow/QktYxJNkFmMp86zlGDUCVevRxOjV/o/NVyGvZYtIkTyVMlG1fktNsD2v7UymEBgyDIlzEHJCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775302534; c=relaxed/simple;
	bh=htWhWkMrrpG2T0iLmU2Y9JfqdbvVg35S/IUT9hf+hLc=;
	h=To:Subject:From:Message-Id:Date; b=Mnf8yq7xXP0UKgtJ8zjaiEQX8uo2zwiOwMd7NdZttfHbmzAeGx9Aq7nh/YDOsfRSemawbwwlUW8Xamb/VflrkVVWZkPaWxp0xTi/LvgTUJBZ7kaLYRnbwERdtwT3Ikd7CYWzpEl/rAa6oGmjnu5KICP8M9JoVU4musFpcV7tGtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pclbSxdU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pclbSxdU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB6BBC19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 11:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775302533;
	bh=htWhWkMrrpG2T0iLmU2Y9JfqdbvVg35S/IUT9hf+hLc=;
	h=To:Subject:From:Date:From;
	b=pclbSxdU8r4PygaTXgTCFNtt7iekJ/sXP4Pkfos5ZuYLICA2/XrYH9l0RH/Y8t5Ch
	 fUX4FzpFdsdbZ4Mk6BtFtJs0rrCBTYIPsIwDy7uw6Cg/g4F/jcheDRYutryLv4I2Mt
	 aTmXmzb3oFsIA9/GG7xmQFRkPEo2tiDFqrvedTGrfjXpT1vdbzP5dtYN1AvoCkvLxy
	 WY0AMFPpj55AzNUFLWcLwL2tijIv/wluVkqx1ihVf20JiTrIvQtjxKM0q4W2OrsMEy
	 YKjMcNSSxx7nTMEVxbRRqLun0O7zeU4bJplLLodKwMYWgTFCg+rcRQgoRlHKqOD94z
	 tOhIHoeLHeY0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB236E88D66
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 11:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177530253369.7135.10950536507773383936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce0f72112957b4ee50cf8f845e11254a9c22c58cedbc2eb7b3bd0d82a999dd87
Date: Sat, 04 Apr 2026 11:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775302533
