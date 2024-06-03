Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED1A13BAFA
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 21:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717450523; cv=none; b=D4Zj8q3lnHlsQiX+oFQBJfClShF3P16Mu5PH5W5V9YCyq2t16zYPanc9tWXnAWQWg5JNnwsHeSkIJo4VmzdFq2Dsfq34XyKrjB11aLtN+fSkvvRt7n8nBCHyeL6xNUIZlSOK21CzAWplIIfg1o+cfYaabyL9SQt6n560UJwJF1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717450523; c=relaxed/simple;
	bh=wsAxkQSa6UBb3C2W7cXB0JOtw/25SUM8IsZb+uFzp1o=;
	h=To:Subject:From:Message-Id:Date; b=QBd7zHdedyogpaHEh7ZJHyVetxEk0xUc7kUbb9v1AXzLIaSVSflkgdwiWoTXZXs/6wUD1oxVpTUTZpQDDQ4CTELCdcSe+087B7DmCbh9OeiLLDWVAEspjPL01YvlY5UWYNKBtTFJ/pX3cChw+CJcjtJPAwCNDAQhBRljyiqCMfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IcJJ1ASD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IcJJ1ASD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D54FEC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 21:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717450522;
	bh=wsAxkQSa6UBb3C2W7cXB0JOtw/25SUM8IsZb+uFzp1o=;
	h=To:Subject:From:Date:From;
	b=IcJJ1ASDMsVrFHIlEtU2YdOVSj/rgVGZQbDI297i7UL9tEvKn4xWs7lAsstGNdejb
	 RKIOwSSWU2TBMXqkvPTc9HQbUoXdHwSaApU9MCHHlF3TnCnxM877kX4IS+mtas/Swx
	 lTX45mOcZN8WGry0Fq6H5LDv5w14TlspoXkbSagOIQ01HXCsXeaDf9wOADeM97aCLC
	 c1E3DSPrNwTNqRVfutt/Ij5kYV8/k6EYfaEiWTansnV/fZVNL6/U3vApv44ReoWBG+
	 5s9sc95G8PItoPCbDVq+sGn7ZR4FHNHBfDmTwowS6d8DOskZEUSf1yHNRtKvMguORB
	 5ZWQj6YluT+Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDFB5C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 21:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171745052277.9055.12080650716257343287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 347cc9aa209b94c942450758981c53cfe2d9618edc4d3dac6e0d2a4447c1c180
Date: Mon, 03 Jun 2024 21:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717450522
