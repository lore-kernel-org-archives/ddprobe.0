Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A1011C83
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726238154; cv=none; b=IF+MXGSjMWRzC8JMTygappI3TqaXQmeZ4qYKXLZ5WY4QbERuYBQNPmxcaGQam/bK9M/C5OZq5ZOVeU0xJ35h0ffQ+SxEbFUAsH64hOEj1be1rOSPDhUdnh01w9UpOJPhumh9tVzOAaRHgy+ZpukUapfByev+8NuJQeCeAl0QkhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726238154; c=relaxed/simple;
	bh=tuhX+lVbCIFsOu2r0JjlvKVECArUspzvspWkyTQP2OY=;
	h=To:Subject:From:Message-Id:Date; b=T4F3HRJWSjiCoK/opJcCj58dry4a8UMaqpgSYp47fjV1JVUDnncgC+nVEfgHEwlkhWTAfTASxZJ5umsg7sVhvW2Z6ai8HqfDB+yazRPC+ksL8iW6qxEyPD7lyDFaKHF9V/B/njqXmPQp8op7Jqa5wSdp4sAfFNisWz7B6UNt53A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r0PSLsiH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r0PSLsiH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF962C4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726238153;
	bh=tuhX+lVbCIFsOu2r0JjlvKVECArUspzvspWkyTQP2OY=;
	h=To:Subject:From:Date:From;
	b=r0PSLsiHGvOJTlQKfNsGh8+i7F08qnkB8rZdjKsVFmcmnSlO4YIReucdYx081x9iQ
	 SQbMlLFNd6WE/K556rmOpyeyYXrkLTVeesO5kextpngJGfXomFarqQcOSoc8En3E3v
	 yiirrFxBq6zNm9OWmq/gsyu9/5ECeQKgFXHNO7U3NEzzT9u0LEG6c87eYXddmynaNS
	 UQA3lllDxi8buFsY36STct7lTfu3RhGqMlAYDYjixwS6Vac4Q2mJy/I6iM4sMS0F3p
	 f5tFcehPxhPoqjo4tiksJrY4nAwz4XOl1U0ZVnYuV/B/ZYlUSqEYD1yoTTDTdGk8Lh
	 /vmvOYxsYIuqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E5BFA3757
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172623815360.21722.17280611949583612666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9323e962435673a02ea380006bad9e3e1883983e7935fe7417a10eb5c6e29c8f
Date: Fri, 13 Sep 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726238153
