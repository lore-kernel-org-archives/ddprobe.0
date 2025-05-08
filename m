Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8C24207F
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746670794; cv=none; b=E2VrxFH11/kBQbcgidAmrVJm/WWX/PKMe/GWvwsrEBOnzLT1ygH6YVCd3QocVPrA8B5wNCXsKEwpQ6FpgPBe3TtX7z3o/aq8qokUQB1A848aDW/308jAJiNkaftjx6nfSMmMDb8Nu5bVTkWy5VnYk0gk67eZWNhYo+DE52Z1Sl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746670794; c=relaxed/simple;
	bh=j4GEM2IeHdUYj8Qdj8ASR28vzqeTO9Q3MYDUKRn84I8=;
	h=To:Subject:From:Message-Id:Date; b=mGTj3PsIHZb0djvpD6ajrJ71lg+v/t55hirPiTJn+NfA+AKfBDs0Bnwf8dpo8aT5mkPL3L0Y4FX+ni/vIQu0cwXuJ3oFVgobTTBBDU1bOEjyYJ0+lOePu4mCmxCW8TkElkrAYuHw//vy3vXLqsgJFf+8JeIOjetBjea6EZbHD7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Juy4QTjq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Juy4QTjq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5496C4CEE2
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746670793;
	bh=j4GEM2IeHdUYj8Qdj8ASR28vzqeTO9Q3MYDUKRn84I8=;
	h=To:Subject:From:Date:From;
	b=Juy4QTjqTrs3szh9B3H9zWiaoRt7n4xejDYLwng/483Ho+3S43q0RNoW1SdQKpK4T
	 omJ7TZdRm1CdEEjKkliH5cvQsAdzy8quYDQzGh8ZJMg9wAMpmaha/AamIjp1OmDzct
	 qmjL3UZGzn3HfjMIjbnwX9ON8sC6XUHR/WmrxX5SNGo5YD74T3rN/panu+MoFI/xXq
	 GlQC7v1JKQgOjzgar2jX7ZEVLHVJMuTErnL68qKAIa3ln6xycbThkM4iv5n9BX9Lec
	 NmKJ79hj6PQ69PrEFmrIdkydzszMC3lReWMjQfJFhgex+V2Hi/gyBHSN2NTQf/zFfw
	 5rddw2NkZU5Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93605C3ABC3
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174667079357.23740.9720468007473384555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed28b67403f8da4cccfd1389cd0f6a7b1dbf62ca9fd18fa8214e7027c343ec89
Date: Thu, 08 May 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746670793
