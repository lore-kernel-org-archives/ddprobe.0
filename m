Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00E974F8B1
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709065697; cv=none; b=Lh8FuFkzaZRsDODDKltPhb9BB40vMpPCXJLak1WRUHH8X3mQEAQS3vBmP32jWRNJGvkUgStk3rEN3wfH6QeaSP6ZrfHBOHP5vM3DL1zxpmcpHjNRrWQfdxg3mUNFsGNRWPUq71mMBp/mqwL81IbjugGA+l9/XzONnzfkmiCiR5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709065697; c=relaxed/simple;
	bh=BeBwJfNwKhvlPR2wZn2mkI9l9sp4ps5bzFCU74yyUoQ=;
	h=To:Subject:From:Message-Id:Date; b=WKOqQf3nbhUe9CRBd497XYLNAQGQuzi6PLCZYucJl5UOk+rC0CUzgn7VSCUFiC2sjlPwzBkKHrxHcQep4yW1u5Lxa6CZ+FkvsKVUSV0aaMGjEmXbrGoGNRDLCmo8DuXmrkLZpE7hSxgjJILd9aknpbWAqo0O/CofljgAvhR9z08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XLH38Zmw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XLH38Zmw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D931C433C7
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709065696;
	bh=BeBwJfNwKhvlPR2wZn2mkI9l9sp4ps5bzFCU74yyUoQ=;
	h=To:Subject:From:Date:From;
	b=XLH38ZmwSi8m6hkMaXIG+iaGN9jaPITSsCl2UtBBV0c2ueiTn9R2ry1Lq7JP3wD66
	 9li335hwQ7/iQBqen4bC5/RnnTw48r4Txp0j4poNRGSosXPenzy85WPo6YSGlblreY
	 30wD99ngIYT9c8vx+QCSWdrZ0E2qkY2e9mj3r4v5UR6jAT3EITczfRb8z1diqqWQI/
	 3vLyqPYyitY487v4dgz44cspycv05W8FlYdiMXyvTChFtvEkmpYkLUpHvNWLltEggM
	 SX7s7XiEajCLYLOchZgcytW/eWwJtt9WwlStKBUKb00NamgSHwm0K83vlG8KJt6BSS
	 U9EcopHVB1wXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70DF1C54798
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170906569645.29552.13300080986266366098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b6d5c467220a438509949066e4869a40e3c4adf0e577edd032950cad1188ecc
Date: Tue, 27 Feb 2024 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709065696
