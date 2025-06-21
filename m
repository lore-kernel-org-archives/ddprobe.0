Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDDD4A23
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750494594; cv=none; b=PEo3Ntnai6U7Be79JGisciRVIBprZkhP92wEL3FZ3zWXRBHwr7hfdq8y2CvArFx4z53z1yddA1+v4cA4FM92surnAuMVU3H3ZJKTXH/42vimSGfmHY4zr7q5SJji7hSziFCmvZOjkaEEzqVqGN6gMNodcQRb2/7ZV5bSa0ZmJ1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750494594; c=relaxed/simple;
	bh=GiaRfODwKbH2Qyz9MI+4R6LWFNm6pKGmFGyxTjs17MM=;
	h=To:Subject:From:Message-Id:Date; b=YE9JKALUOM0WLoPLA0nVmJrFp14/vEPrZbEocIsSGlRUjxyZGzMKkIWldSvpcUYVJLMGPwkvDUxuFHqmJ4ccMfDb6IMZlv/O4f3zNW4VVOD0xak0OoAumFdF+m6jgiWCaniM8roWeuJY8uIXPkw/zxz92rv+DOhU7n7fnenu6Ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fHZG3kEA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fHZG3kEA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4931C4CEEE
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750494593;
	bh=GiaRfODwKbH2Qyz9MI+4R6LWFNm6pKGmFGyxTjs17MM=;
	h=To:Subject:From:Date:From;
	b=fHZG3kEA/mu3flsvr/28F77RUDtTD8T+ITqM6GohS1sXhogaQGXJM/ziaiXBueu80
	 lGZsgPR9lWYyMfVB3Hth7LbtuUw4E2kjuH+f6vt6qhEzF4h1CI2BEMT2JD3DN4MZKf
	 jM/jIou6atmV5WT5+v8v27Ad1a60am5Sr12vrZ1seiIkZTc9lDem4epbNTKirdfuMw
	 xMRAeZlREm0Yqgd+E1vLH8U0afQ8QAqMHsFC/OZskTe3kMZaj5ya69/u30pyxyXH1V
	 c+piQvfbiSOO69UUZiLHFvBdPKRgJwaV1X4Xw0fTIWZTBM9ONaJdLb+/wSWkBLnyt2
	 0WmHnyJ7b2cIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913DDC77B7F
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175049459357.15341.5719174915745663496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4ab0a49d489c3075f05dabc504f44fbe0ae924946aa268bf35463097ed3e6e9
Date: Sat, 21 Jun 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750494593
