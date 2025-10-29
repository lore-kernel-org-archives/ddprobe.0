Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27032286D7E
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761766794; cv=none; b=VC0c8hzDsnj1tKnOrUb0qHlvQh11EJgoRPTgPKZB2gFWvNb/sjhpzLjuz98Cr/Ss7LHwQyxLRsNfVfI54eMUp8OAkbvLlEU3PLqid2RTOGaWrRJmm++OYkVgzbUcX5to204+0RDMnjw75UHe5O3lIIyj+lo00FRye8oN0TNzSOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761766794; c=relaxed/simple;
	bh=XrIPttBT5vgNg5bo23nT5znoTIEjAB4jLaO845M2K8o=;
	h=To:Subject:From:Message-Id:Date; b=F/dh+BAcZ+PsHeGujYu0yYoRDPGV2nI0DyIoS3jSryTyrSv64UPjM6XlAo5n4bYnSDgyOyF8uwf0Lws8BT9S+HyN1OTUrF01GLwqurgzoCRePxSRnCsABKMlTFrNjtGDiDrkzCzawe0uj9hMR836RdElV6rFT7QGuBtf7bgUYu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TE4zjEX3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TE4zjEX3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A7FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761766793;
	bh=XrIPttBT5vgNg5bo23nT5znoTIEjAB4jLaO845M2K8o=;
	h=To:Subject:From:Date:From;
	b=TE4zjEX34XLEv1zrupjC+GopADZ2dU/pwqqkjeY7ZX56+ufMpG9m5OuCskYIo81ar
	 84NQCno7oq6ko21Jpmul3kXlp9R14sNAsq5iCYD3FG7e0H9e+usSCJmYmLDOMUQaqr
	 LR+zkZPVCiyA+agjPmGJ39JnrwEPIQx37oFeOqJZXmc5SOc0NgAX1t0hbo4OnyJA0g
	 BbKfsFuAIrTNS135wDHr6hrW/rrRpTDlShvSDdPRGQHDwQG9oWo6HMjGH6rwLfyNeO
	 BCKaF18jiiBC8rHgKamZn272Kkinb+Fy1rlipo1eMmcoc5wKPV1UaV1xHFDdvWLPa1
	 a/bGDFBpP2BwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911ACCCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176176679358.4844.2683014947997951883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e1e4abbf4067e691b2b470744d7f6e6633cc4e8028b13dcf9ec84756d38ad98
Date: Wed, 29 Oct 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761766793
