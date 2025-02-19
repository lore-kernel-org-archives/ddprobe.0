Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27817126BFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 17:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739987334; cv=none; b=upt5izyOGVhZosy/r3THKLeIkRDA3m9kl+qHJc0d4rAOhdF6U3ZHfx4Ubnr+zpCrX1LPIxViCh0VP28H0Hns00dwf1X3dWUzG3cqb19uasoT1cQClqc/PT2yQRVOtcUAgGwHB3jkibo6G0ZSeMwlmnghnfFYHqXD0SHLTxCOoGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739987334; c=relaxed/simple;
	bh=GXMutdYktGwLtjeupuMfPac4g2ZLf0/vPm3bufxQic0=;
	h=To:Subject:From:Message-Id:Date; b=gmJ1V4p52yRj0bDRFYodEbHD5IADb1jG6U9rJaoTT1WHC31fgqmsMzZBX2uY4bp5csi0PkskDrON/VJT71lWOkHURGpsd3E1rr1iL7HJy4SAfAaS46cIhSuyhidYS3IzjxHWBKj1qiaEBxPJlStfW7RwI99dePt+tsNyd6nRKqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WZlD/1VF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WZlD/1VF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BE4C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 17:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739987333;
	bh=GXMutdYktGwLtjeupuMfPac4g2ZLf0/vPm3bufxQic0=;
	h=To:Subject:From:Date:From;
	b=WZlD/1VFWXq5RaW7GSYUmlSKQ37FH3UG1KLs0NKKIoDNPET4eLciSbgCjBxc2/GU5
	 /T2e62XzBD3TuKNWpyWyF0swmpDTl4k7caERn1NZaHHtobOaduxahrSXggAMUO32pD
	 vm5mkdqRXQdfhGL6btTpl1NlsOMV24RZmXjUUL6yqWHMjwHL5lhpp5HBImw9hfO2Y5
	 50A+LOKuvRtvu2ou/b0k/B1vXK+muyvIpaJxJYUs56fwE1xBqPPnHNK4rfbXnF0iUT
	 6X3yNnujf6iUENgp94DVNI4ri26oSKfvoG634uPwfYo2cOeKaRtcON2z6aML9IupEQ
	 GAqB6nwpr9o9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9412BC021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 17:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173998733359.24340.15098957554333742544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32b95dd6b026c4571e21c8f5450323652f776874aeaf21a89b038c4ca37484d0
Date: Wed, 19 Feb 2025 17:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739987333
