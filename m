Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF3510E4
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 15:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740410934; cv=none; b=OEIiv4Ud8HMeBIrZXkbhucxjVqDsTcfZF9hUpPF9BduSw4y4t0boyQgbcanBtuO+EKocu25d4AdgzZ56DreDGh74MQzAL/bCYRN5yT0Z6j0glYkKkkKTS7c5GnzWrRTSskFKMXhvuo/aIz6kvsq97lNZ22bOB0J73h97qJGTqI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740410934; c=relaxed/simple;
	bh=SYCaf+ylFJuUS1jKlMMQVXwfKy8iALImVPmq5NyNlMQ=;
	h=To:Subject:From:Message-Id:Date; b=InPR1+fVq/qUTpWvk+46NtYeIWrAheZegSMV/Bv58UYJPb6OzGl66jLpI+JmApWH0Otg+VjhofUcfs8bVjEB3zwSoss825nyHhckPHp5V+ohJP2AqJ8QaUkaheqUBApByh9fpAcTrCW7aSiibB0WUhtVND7vzdmkEXA0wn4oA6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BK3VjSn2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BK3VjSn2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDA6C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 15:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740410933;
	bh=SYCaf+ylFJuUS1jKlMMQVXwfKy8iALImVPmq5NyNlMQ=;
	h=To:Subject:From:Date:From;
	b=BK3VjSn2Y+hsNBLUVRVRnhJxuxXTl24Mc5u1/jPFDAD3d/XkM9V9+wkuMku3+IU5f
	 vqSX3sJSCdJyjr5/ZLvpg86BRxsfhOi1AQHmqv33iQD9b6z4TxAb2ETFJj5EUww/3u
	 H5KeSJJxb2Y2e29PXjxo0ItxSa+eb8OspNfOCu/it84A8+e86gvneuXwhf4ngh8oAI
	 zbLPgui67SqA/u8l+7ufgh6SbVMg6Rh80wG1ofGt6rHyVytZ/YYVglh9vw8UHmnXIJ
	 bgrV72ZaupPEcrYZgHEDKGaZfIu1nefzGBNjVGvmM+SwfI2IHeRG9PGSOO7XmKWVKN
	 EcJ5ZVRQzF5Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93741C021BB
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 15:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174041093359.5102.3453659585649185148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa1084845d417414a2c8ce5ca5392cf245d5b7ca594633df96a19c94d3b5090b
Date: Mon, 24 Feb 2025 15:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740410933
