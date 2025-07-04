Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1189C156237
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751668194; cv=none; b=k1S+DAfBOoCFpbTmJgIQAGj8K2JjlvSdkmDz3d4aMil34xLV1XH/L4Sg1ZiurEXOWZ+58HN+73PJ7KwbC0bXmBy7OteKXm4cOFCbb0pPORXz5ToOCcNBr4icpQs7iXs1opTOTN9qbpV4imwMQ4LL5kSxfPHHttIrIbq4dw7ET2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751668194; c=relaxed/simple;
	bh=ZgYg9rvnMiVlHm0tTAGqSxGmk7NBagPTZvL8zT30qPM=;
	h=To:Subject:From:Message-Id:Date; b=Hukesrv2YduoXZqyNjowjWDR4ZU7tvcVk2cg8WEEXPYJdACmLp4zIY7iix8KYOYlpcBgD9oCym0eykxs/09az/2aQT7575i7jJL1MKBfyzvzIEmITyXgLDmPjcB08UKsq8K2iU0WKBX2jKBHwYTttYZiYiKZJJ4lKOspTKyt5MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TAf4RLv/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TAf4RLv/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A369DC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751668193;
	bh=ZgYg9rvnMiVlHm0tTAGqSxGmk7NBagPTZvL8zT30qPM=;
	h=To:Subject:From:Date:From;
	b=TAf4RLv/aqv39QcI8gEfCINZbCR56x7aczbbKEVlWTjZnMARTZrQtcJK7wUZRzTgx
	 Lu8fvwBZEOJXAU/R3pXPzAK35bz2lYfoskAQBwCFU741f7q6ms4aZvCDyDj704PA7k
	 CugfboQzU7x/zQ29K/poEFP2ev5XXdOIbY4JtKU2PfdFyTcFGWdwsaSduW8VOCp5jX
	 nnOW5JEpDI8JMgWnfBOTGOh5P/RkKWcda/Z9p94r5AZxXdDlduT9f/w6XyzmAv8Gkk
	 hdapyxtfzn2PK10xXsYYZx438uvjeJMk2TKlpg7YEM16OzCX2xBmBZwSYcn2MDDT6N
	 Au5Z459SNiYuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F68C8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175166819357.13189.12001975557000938859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c7cd8901dad0cc9c82e1fa140bf77c1a4008f25489b94c4d858e2061b38a36f
Date: Fri, 04 Jul 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751668193
