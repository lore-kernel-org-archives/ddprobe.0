Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2771B244186
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749568794; cv=none; b=r5Bte/F1hp42e5ZLvQ2QBPrRi7NilAwF6Vi2XYow5bAJ5GFmTN7mpWO8VUJM6m7CSONdWtgqAJQOXqn7epKNqAGFBRSfEw9Dycs45qRH0E+/WZdXtjgmkeECTHO99GP/97O2soXeEkMePAbizacfZOgl53QT2IEi+ieKDL1+iI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749568794; c=relaxed/simple;
	bh=8OKSlzpSz1PzKrj62d2OrRH2Y4LRmBbCDPkbzDf/Ww0=;
	h=To:Subject:From:Message-Id:Date; b=mfLcIhwUEN+wZLDUEHItgW5pz7pMsKH4NJg4s0/0ipTsG+DFkOBB6ByFjR4vlHJEif66MGLrvIk2vRo2HUZQAphXfMbQILQIaKhhSnuhuD2IvRThV4bXVuBPQWEwfvBGMT55WdOIO5PhiSNuxmwVY9N/zVTbWeHWTxdXfiLrcnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJSYQDSQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJSYQDSQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2548C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749568793;
	bh=8OKSlzpSz1PzKrj62d2OrRH2Y4LRmBbCDPkbzDf/Ww0=;
	h=To:Subject:From:Date:From;
	b=eJSYQDSQr/s4X5qJAQ80sB9eVzL6uSKxP3S1tdPrCEmnwwdyorXn0jY7NMtBD73AB
	 5nSPe7I/mJMPA831zNLZRjZpyltVR9Ts/Li2bR2nMHcHENQ+yFwy0OmS/tnp7bnrOx
	 gEyWY9EcgtyHPrpSwecWmy0IHxrGvh1pZhOSimzCDTCJoYCDlccBLx+xmC/40/RZHo
	 mqcJIFcdYpGgJgGjTBnH2sVGx2LQP0D0sqN4HjZERNLHpsNHPpOJlwIBfqFFWR4gnJ
	 Xa8icH6h2m+BF2AEK6o/FT+Mfx2QvrF5wsBgr0BEBoe9P+k64IVDcwwIx9TjuHqtRS
	 XOmcPCpH2kogw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9096BC5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174956879358.16020.4142068901496195627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec8436a0f470d5c69499d4fd376f844168b0dee8dff7ad767b5ce76eb5757807
Date: Tue, 10 Jun 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749568793
