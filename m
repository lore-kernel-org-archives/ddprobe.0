Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9A5240611
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 21:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741383534; cv=none; b=Nlehz6FQ6GfB75spUr+zLaS5ts4D4hvrrbg1jlcMisoN149gaY7SYbkSheXN2AUD/R6kraCbhZvFNamyuvy7/vAQjPsJl9GUbLKQ5kviK0JoWf7g5QbSSpu91JhFfXrIHrsK2i9q2/aVoDMF7c1YLxZbN6EHPPmLwGnOjBjaeKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741383534; c=relaxed/simple;
	bh=PhVxSz5djke75ZtPd7REPRaCYLh7XezIfSHbwmaF+ek=;
	h=To:Subject:From:Message-Id:Date; b=Go4Bng6mDPVrQ8GzCozp0mZbHm8lft/8T6dkcKbDXdxj47OlMswWv/Oo/uU++Gcf2Pk+0HnYG4Ip/ZHf0tLJ54tiNMXVKt6raFDn0C3QxiD9X0Hvo+83l9QaETI2qezWD/RRWO5DfVbCzetbMM7sTfqpphl9AXv3xeqkf3Oav5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rb3GmlEW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rb3GmlEW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81CAC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 21:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741383533;
	bh=PhVxSz5djke75ZtPd7REPRaCYLh7XezIfSHbwmaF+ek=;
	h=To:Subject:From:Date:From;
	b=rb3GmlEWfov+affPLKJdA7RMhnrMAH/iuI5+rAqO7YdiQZMmcsrWoOD/qYv6a7LLV
	 5RITkXSowlGrcGYwvNrJrGamtaPABHUbE95as0k/v3YlGfQebZlpVlgtrtvwxrQXLJ
	 J3YbpTOPwUwLMNeUduzYxsAaNaeMdfiBLKhutZh9/yh1I3voztvu6f3WGCPNu2m4sz
	 ZY4BtF1G6ictjnxG8l5csMitv+f7su3RpW/8HZjkSM458kpzojeO70B1NukfcQrg6a
	 VCbvBh4IF7zuAobF6bbW5Hq71NmlghPaDtB/DqXIMQynp5Yg0ASvWUAozM6B2FB8dN
	 y0bbZR4krY/eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930A4C28B28
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 21:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174138353358.6808.10858557569723737221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe29c463926e62de8cb48c43cc85a4b19fbfc0b6ac56434d49e6ddca0e86cd8e
Date: Fri, 07 Mar 2025 21:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741383533
