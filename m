Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2573C2744D
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723567554; cv=none; b=Q0sgkkd5NFP6AmGM51ZoBZtm0MXrMHmfc4ezDUsLk/npkmUTYYljIXNKFlEi2znKGAzQPBR3LzO4enH9DI1LTaXlrimqlY7xFlG0vo4vwGTI50+uSEcMDt0BV1ylPcHBFYKP6xhvNSxJnnp8OevHOrUbXVyhwtJeicmx7fmqxUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723567554; c=relaxed/simple;
	bh=g/aZnBZrl6GLDSuCSNmzMPTC3QoG2JgNnnh9tLhz+dE=;
	h=To:Subject:From:Message-Id:Date; b=SDw8BP9SzmGmKXIkNGnItfs5sbY3ErRQrw4yIu/fPLpE930qFpcZdgHLMvv9SGz015dUsNhru1u2ZFrTYoc/TSfrdtegoB+PJEF0EUMVyb2kfe1z4If6QECo+OdZ9HsmIevtlqFF/POIpTpEEKAgJgdp01vHnhDORw5HMK+iS9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rBNw5JD8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rBNw5JD8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7506C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723567553;
	bh=g/aZnBZrl6GLDSuCSNmzMPTC3QoG2JgNnnh9tLhz+dE=;
	h=To:Subject:From:Date:From;
	b=rBNw5JD831gXAy0QP4+C2jEltrQg3UZL0VIxEMoos1lpzbAnels4NIcOiK7D2fEWK
	 BAFS/IuXTBtvW04YR4uavILlo7a+riXFiWBBYERHR4bnPO6M5lduuY14Tzo+Ihkp1j
	 uqWN86tBsLJ2DiiuBs5/n6QfNmv4CKgDm85rceeM5b0AZGvOT/TJ2PyNq1S2KNdu/2
	 j/0Z2/22RWSu4JKZ+z9wt2xxcqgtcKbyGPjj3b9QD3xFgfjkLmOhHmqVC7cxViJmV9
	 JHArdGW8fxht6ckvTfHm7l8AXiQ2qB5H7yfCLnwi4qYyli+rSlgdwQ2hWoaBgtH0ZO
	 JffT4fYAPYTSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938C6C52D7B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172356755359.5617.8994829308632873353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfe66fd99838203280e5dae2cb5f634c445955501a5902b2387a705dcf3935b0
Date: Tue, 13 Aug 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723567553
