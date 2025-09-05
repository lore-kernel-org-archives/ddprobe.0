Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7CE2E719C
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757063395; cv=none; b=fubJzc5ROHK/9zESlHRpkUvs/3WmuuaUyKRjurGh8YDtKri0wfS6iytbp3n2lXG0Z4BUfy8u9YUZM8b4qFxyI5ZS8dfP89Bb7StBOoaJPt0mnFIKSszdDPMPOrTOqcQzepJzV/Gd+YtzAT9iY+llEMFPH9Nr4FBgKrBCVoJbzO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757063395; c=relaxed/simple;
	bh=uTz4M0R0ElT4V5UqTW1Y0hLzjPw1NtDNCQr5JHPMtBs=;
	h=To:Subject:From:Message-Id:Date; b=Hs/aiAoGq21DxBLrVGdivvnSOBBDz3MOFkynSObILujFgOTH0nCW7i5CHCg5WRAuFBnBtAWeZ5vutBXbtT0gJ+SBbT9/jVJkR4QqyykUKMJOUy2zGcpEct60kqq8sDx25w0xFUyxv/90VNGVmiDV5XTYnvBXVhyUYBFAMA/f0CM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUCjO4AU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUCjO4AU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3172C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757063393;
	bh=uTz4M0R0ElT4V5UqTW1Y0hLzjPw1NtDNCQr5JHPMtBs=;
	h=To:Subject:From:Date:From;
	b=AUCjO4AU3g+5STNNtqE2BEZUJY87XV8MdEgbzqws0Dk+/lHLuuKjir4uLpAgG07ZN
	 410WFIelmlG9/lacySUxF6vsguAx7Z4/usLZtPDzFUTxcGWThNBstSjdino71SUp1A
	 OEugG0pKmK3f13ND2sDyBL4Bmne+8Mzfn5sTqVEpiMcze7kY+zM9k/7OyTwpc/GHyf
	 g7jNoOQH+LlgkP3EJuKynQHtVmzXDOz3zCAhzDO/VKmVP1sj08TI/wxcu6EgmDGSX1
	 htHx7mvIKdjNaFj7/wXxXUNU81SPJYj4CnKuauDXMXMW3VmYIlre2KFzizYwX1dHIK
	 O9lKEMLkyEOKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F2FCA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175706339358.31287.17529268833751223447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9538784ad302275dcc597f6de134ad19ffa5f26c58190164a886b9997de84166
Date: Fri, 05 Sep 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757063393
