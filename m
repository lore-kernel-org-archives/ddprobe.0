Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E461A08B8
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 13:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739625534; cv=none; b=aJm2lejryZH0PA1T+Guhm+Kfs/c82E/X8e3tSuJ5A/sVCblRNOEsbyC3iEyPTskv8UqqhqATCPXmIeEmBI24qxmSR2duZmxc9POcu3vLGjXI2GwQeVQNwNt9gn+vJui/GGM/xfYdHAQqHP08nUSBMlTXIXu7fimE5vVuOHmQ3/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739625534; c=relaxed/simple;
	bh=Z7Dt4/OD/DRmug6MnCsiU0ABY2+J44hLrL86KDi8ltY=;
	h=To:Subject:From:Message-Id:Date; b=HvsJ/Mul6O0oQpLda85Ol71QTWIBTcY5zrjqH2YDqd4GwBGcEiPNMxLT4loqKTPNN2vkNNKEEEsIwlpbd0JJuohwmkQeKsrSJX0ZJmNN8xlF+M2jqGFe4D1kllQ80YI1KlAgr+fhI32NQ62MFhw7uUNJQuha4sJH7/fdutteAsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BqUdLECz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BqUdLECz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C55DDC4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 13:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739625533;
	bh=Z7Dt4/OD/DRmug6MnCsiU0ABY2+J44hLrL86KDi8ltY=;
	h=To:Subject:From:Date:From;
	b=BqUdLECzkq48v/MC43aSTWGuOcSPkr5428M55H7kd2qvfg+gnfqQ84hq8QarK3CVp
	 D163d9ZqWfByiB3QtbLQuynVf/uGpzObxLIPY9+mmRXjaMIEsxGIAtKxF9b2ZE2im8
	 JbmAVh5yBAw144TUJdhsyzGK6xDM/V4USdAY+0U0f9H9ppa2B2faukLRgZX7MeIa35
	 8imoahBmTjLs0mAxs0pzu8cRS4cGXZd97/ADLtLBtlRo61W3e4FnhTNdBT7jIP8657
	 StEnChCUPO/Z53okbtYx9qL1FhROJi5gqZJ+kpAThYIN0AFR0HHrWMesuTF9JjnunX
	 v1IOcuLiDhcNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE59C021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 13:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173962553368.12208.13865464717334481103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db6be1255c33eb141d26f6d1d7f663c251ba3ac397c046fa4a46e0e0bea30872
Date: Sat, 15 Feb 2025 13:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739625533
