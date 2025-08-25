Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F0A28135D
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756154394; cv=none; b=oozI59Rgf7605U8f4ZLpxe3i3KUUGr4MtOUvx5gWtnj/6Eb2ypRiK6bE4Sm5GPMBw9ygam8+0Enl/kBEO7WJfuJWfKeI/crSYXSAouQYGohVOTJD2WClSK8+K4A+dOLgO6v4RPFWhi3msokdZGOYPiOxU/fqtbIlK4rPcAxakXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756154394; c=relaxed/simple;
	bh=BCXWMFZw7F2afjSR1ZY0a1zAfKXNN0GkYJl1k/q9agU=;
	h=To:Subject:From:Message-Id:Date; b=FA9ukfl5gJicfkV4aSVlO/8BEJC8x/DDmnkjHtJAM9QGr1VncCe+V0g12UM4q45NRX9mpOU9rXb8XEo1Lv8NY1FufUXPx+03BYOcbuA+OCUJBRCPEbjyP61zLXqdbjNpuCmvOAletZ47zolmo9Q/TzkNIkMGLaROsAJ2tJbeSS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJS2TeyW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJS2TeyW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3030C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756154393;
	bh=BCXWMFZw7F2afjSR1ZY0a1zAfKXNN0GkYJl1k/q9agU=;
	h=To:Subject:From:Date:From;
	b=uJS2TeyWlV7wxEjSbEsQQ0DeUCGbBFqXpfSIxZZOvnmjNoBR/qEcSwd1bcHawjzeE
	 9hj/fykGIQBHvXy5quKWg51I9JdUBB+JTIDVS3ENHrMzpmMDOMn0RRpx7305RnduJm
	 yulqq4DQigDdMnAi5rjwO69G9H6GN/WHaHJ3VzoEgLc10ctJa7OJqz/zkNPfjr6nhQ
	 4qIFkLLn1rloNO4dkPL9TywxLi85L0iGwtolJhXDByPl/vEIYbvBNZFu8msIdmyKVJ
	 sWtsCKgc87pNB4xVHGHsUUKcPBeTuJLNltdtx17qlUZdij9jhyFs2mJFv3ElmV9KxZ
	 YCLeLF4MIDuYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940ACCA0FE7
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175615439357.30886.8093313036128372590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d78741e799a6dc48d085c4b5f7487853f526afca4a7f22c7312b52935035c89
Date: Mon, 25 Aug 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756154393
