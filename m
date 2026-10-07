Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56808380FCA
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791400234; cv=none; b=fpdWmenEt+IDyeg2frC/osYQ/7ueZUalzmYXZmBf6x21Q8w4OF3cOk/z9T0pna+wjWiP8tNck1AC2/d2zjQ4oClbOmdaHnu46j+ygQIuY1T5i9B1FeLMfmOyA9J/1iM6nizzaWwNWOFIF0jLV1YYh7RY2yzxTC+gVrEv/hyUsD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791400234; c=relaxed/simple;
	bh=ZGtLmIMiNRF2AjRnFWbx+P39VQcyfTZBWjdAVlls1iY=;
	h=To:Subject:From:Message-Id:Date; b=DEQR4fNyFARNdr7Rod6SYMNg5JIAkZGTB4wLlLvIDLE3WltpDAm6kbGCWD4MmN73rZxlrUSrEth06INFt1knKoAqbKmERmj4cEf55sFFlw+NNFySUSiSoWtywzx8BZ3lgwcmmLJLY9xh8c5A6Ss79RCaaTLOATwZ29REYZZuh/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=daHunvf1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="daHunvf1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D415EC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791400233;
	bh=ZGtLmIMiNRF2AjRnFWbx+P39VQcyfTZBWjdAVlls1iY=;
	h=To:Subject:From:Date:From;
	b=daHunvf1eBDjdWcMNQWSf06BmidHyGsSvwvD3XTn5/5MwYHkuNKTA1/9duCGUA2fy
	 TIesuZAF2ineouMYjnkxSVz1E0PlhcoIn8e3d9h9sGg+2zEri+NCbiq3MJ9+y7biaf
	 Mfuxatns67pSibn/sHeB5jPi9YdX/8YuOTgguJnvP0uW6iataiU7B7ok+OUNtr3pAq
	 HDwplL0XiHNdFKsqtX392qqQrfX3+v3pUYw89XcJ6/Bm/SfNApl7rUYwq3XH1ze4di
	 WuN6+T/sRaQ7SyGyI/cBFGjJ4SbEvvG7WYs6PYqLSGPaK63xOl9rKGLMPz4vC7hZdP
	 rHfGZJ5yNFteQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD67CA5FFC
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179140023369.8075.13574907966100228190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36425240bfe47a19e5bc0dc2d0b495192c166496f4778661692124dffbc3e6bf
Date: Wed, 07 Oct 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791400233
