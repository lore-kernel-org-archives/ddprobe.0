Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67CD028313B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750691994; cv=none; b=jirbR7IT4Fcq2s3fM6c7dyaeyxfYF9/HFJHjaK/jUCVuC9dLu1gCIFfO2Ghhs+T6m3GvaN396VCmNFGT8Bc214BkkFTSH2yPEXSC8lTsOQi5BWMwDHN3T2Grfp8PKLtHbpALrZvHeOk95G5yacREhX9Ej3EnJ+TCVOv0QEIQHmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750691994; c=relaxed/simple;
	bh=0nSrLkowlWxKc1TpLp84d4/7b/D5YD9L/o2rvznR86g=;
	h=To:Subject:From:Message-Id:Date; b=uPNbssJoXOKolyRSvtZHl5nF5H4mgJHDNyX+vFZ0baiHWm/nDd+LCm5pYjLNRdiEQV7KZj3t9qH2c0XapVLTWItLPHAEv+6KA9iV23ipqXGESzz5jXOZOsZpx+QNnJcMlO7j7umC+fh2aUJfw824X1/cJkY+cBeEoSsj8Il+QMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NLIkjMLU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NLIkjMLU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08A7C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750691993;
	bh=0nSrLkowlWxKc1TpLp84d4/7b/D5YD9L/o2rvznR86g=;
	h=To:Subject:From:Date:From;
	b=NLIkjMLUR8mAEbwR759fFFw7AcjAjJbklo+8fmNW9pDkIZUJgy3lHFSXRdXKBFPkr
	 tt6/GBm3hTW5pcJ8qqxDJ6kA66JIjoX7TfJ/T2UwiM/8RZqpvV1jJgnf7HLOBIvXgC
	 J/nB4JsxEjAN6pf/MWRS8vTfOO9H6hhAY/YpuNkYBt0wnLSTNBH8eBZIaSyPmNAiCZ
	 QL9/j17uie2P5M7y/qO6/leaAdodYS0dTwCkTNWULHNfnVYtcrMk5upHLejvxjAkBX
	 5gv5/C8FVAe7msChsceY233osZfdjB5QTxdrj/PjL3Ef4FvZZ9ZxpUMJdoUl0Us3XD
	 0pq1Oaxn3gTDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E40BC77B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175069199357.4620.2749215541932345056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1deeeed3900274a890ac33a6f73e5d25ebcdcb9358d5e0a28c39df26fe80fba5
Date: Mon, 23 Jun 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750691993
