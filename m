Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8AC33987
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 11:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779018634; cv=none; b=BuURBjI3NNiykARPVBdVszlFDMI+kJy/Rq8Rs2kj5q4JfSPrXKu1HwEDgYMdHuslgmgECGpHhKZoXIjvNJ3XYo8aI+hNLEySLJZjrVl3YNoAG4OtoLlKeHVyAz42mP82Uyv3CBSfpaL0JHtWe1Vadu0xxjXb7+42PuMU6atv/m8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779018634; c=relaxed/simple;
	bh=y2FvcE67ZT/kY2TmCN9tMDnD1LcZofC1afez8VO5sdM=;
	h=To:Subject:From:Message-Id:Date; b=XsXtfXAfzbrzpfKdJAsXmhpVO1kvv6YSNO0qem+sjocOhFO78BUVtQ4qWRtvO/nCNUs1aQJZ0bnAsuh18af038uRLTbPy14koPh74G8N/9qfQ0dTq4Vehfg3jbLXXXNE2UsSix9ZQmFco0mLEwZuu4s4UX6JUongrTjls6LlGzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYTjoT43; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYTjoT43"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8BB1C2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779018633;
	bh=y2FvcE67ZT/kY2TmCN9tMDnD1LcZofC1afez8VO5sdM=;
	h=To:Subject:From:Date:From;
	b=rYTjoT43XTqSjqpGeKUl6leNebhOvq/LFB2bGV9yAdA2aQEnUbOWco8G2q4WK/HWZ
	 hi53Y3nMHhrg3t3T57J4FK1YZdp4nUPCwJvavqaVoSEtGo97Epb0Qvi0GkkU/RA5vG
	 +1AJlpoMv3pgkizlDb6wVrMObgYgXAxfji5lQVGqs9t9Is4cOHlbmqJfb9v/ckwlRF
	 Kl6aDJXTMPY7WFJPa8+ASZcUnW5Dh9TwvukZ+Iy2FypZ+OBcTKyRv5whv8022/cdTD
	 zWL0K6b3st/qyeFOc02tp2vVvuRItrT73cSWerxjdLVK0QKwdxIWVmoFRX3KMXo2Lm
	 9R1jLF080mqAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B71D2CD37AC
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177901863371.689.13126725959267708716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b6a84bb13663490e162aa83f7bab5bf750b8ec67ae96c4db6542024fc254826
Date: Sun, 17 May 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779018633
