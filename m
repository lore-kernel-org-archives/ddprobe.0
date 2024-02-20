Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE82754FA0
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708407497; cv=none; b=D4pa4vYUtt8uZMy/BH7/mtNTxZThyno3HSXPa/q2KgHh2R5etwarHa7Ajq6D5BP7VCQI0ylPel9WF5Qe9Vd28SN6HfMGJx2AA+b01MnheZKgq+3dAsR5o0K3Ibqlx339rohHTk3pB7LWC8e7wQla5VC/N5n1OWtKVyYtr4ZmHxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708407497; c=relaxed/simple;
	bh=AF9M22hDWZWUE48bCLqgWerr8fJaE245Zx7M/Z+67NY=;
	h=To:Subject:From:Message-Id:Date; b=fpnMEshN4w8gYoTvGewdOBFYLQIwNS5SChkkzQCcPhtHlmSdVjtb8HGaY3VNk9e7XfJZZeyrXaj0JYmdDxfT9IU5QWYbKmDcY0f3OVTX+GvGJNLQLWIhpDjRRb0baspoxcekhBMzBIJKEl1Lp2faijc+f8jLzPPXMvcPvQA/+9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VLLuYfSy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VLLuYfSy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C5A4C433C7
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708407496;
	bh=AF9M22hDWZWUE48bCLqgWerr8fJaE245Zx7M/Z+67NY=;
	h=To:Subject:From:Date:From;
	b=VLLuYfSy1HId90hBQzYbdfoPwpoDwse3XqMoZUg+Kt9tkBTJS164mJ7tsVoMyumsN
	 gMQibumAUr1SeYHpOyjd7pQBxiKaaT4OSeHBR/ZoLbYCiy6AtCyq2TbR0sIJ5VuuJf
	 Wi/meTY3CAMqfb95Gx99xhyYk+lR/vWgpSC/Ly/t8gVz2U1Zz5h5tqL89isWypJOCu
	 IjO+vLkp1geiZ5CELaW5pTjSNUd8tkT1yhQmQZi5qSdpl99a0L4WF3h/E7c6jSX/H0
	 SONwOZJ+SS2h0voIZWxLhW4HmztCnhoMB/tuHadSekOlk+anvDkYMLRTtWuRSeCzXH
	 Xeym7jO0AqB4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62068C48BC4
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170840749639.22099.15607879475999654926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc96850c0a80a31f67985ed4a2ec70fbaa2c947e5b4ce766ddaf7b326399b408
Date: Tue, 20 Feb 2024 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708407496
