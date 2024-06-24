Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A5981361
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 00:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719190343; cv=none; b=fCTteOKDEQ120Xew+Ob1qEvSMaFPFvHJ9yNmEuQajAa0rkwyzojAtH3xAA+wFKCLV5R3vLK6Hh1tbVn7zrDWCSJVfl9VdrQXPH4ZiP5eKAM3d5P+qiD/8fQYEa0ZDxJIuNb/WLVB/szmHkVYOGXzEBXKHprz4KWnINX9nyOEbxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719190343; c=relaxed/simple;
	bh=LncPRauiPduQ25GnafcpIO7U5ymDx/MJheD4wnnCAyc=;
	h=To:Subject:From:Message-Id:Date; b=dD051g6s3nwgItE9IzZrwIVTcGivlQZbnuJo3e0DdMPB0ZYlGUtzViYVrzhSkU6HMHLPBYx3GhpYw87D62Lj4Hx+SYZxlUXF/tkRNEX+x1Ep2dzZJMSIn41XebKGYntcdgXh6gHDJQyRxdRE5gC6CxGvSRgfqBAW4LWpMv4/joY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YIqF+pO6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YIqF+pO6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCEDDC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 00:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719190342;
	bh=LncPRauiPduQ25GnafcpIO7U5ymDx/MJheD4wnnCAyc=;
	h=To:Subject:From:Date:From;
	b=YIqF+pO6Ozoj0z7bORYP6hbPlS/XqwhmKtAincAzerUvVAPMFfGQTFPHgwhXlaJ7w
	 8211svjZL9/umH+53uSDtVeWUt5QpHSIBtLK3ydSBlgJBuYQpcPtD87xvQckinzYpA
	 gxtptaD6ub+uAfIUHuqzuZJBj+WbOISGDX41cyJrVc3ZvaSa+RQuuAxro4j9xXzOTN
	 V0QpuwLUAGRaVzVHfQiMT9TbuhNFW820vmEFzdI3kk0GPo677cse71AvfXtFtnfdjz
	 8AUGObzasucRaEy7pbcRTBoz8bRCJZWLzF15ZfkMk3/S8TMR4ecSB2gt/6LSjS/+Ee
	 oFLELXkElhAAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0EDFC2BBCA
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 00:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171919034277.9877.17333370926893500909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54bcade185d886584f2c261d4c57631b4c6da2992f3d64a8211a10b20a303df5
Date: Mon, 24 Jun 2024 00:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719190342
