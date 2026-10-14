Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68E5A21FF2A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792011034; cv=none; b=uhHcJb4D38FloxsU8s25TtD50dmOfWNq7+hI7ICBWSJMExKuvLBLT6kOvJbjiqcLtZMDgU/PKv2JNgQdePLDEPzKgMpUNUqXaeCJqgqG/cGRRFXbC5CWDtvKq33uGsvm/AfHQzy3ltGHand90G8FE5Cb8a6/qQmfdPuP2QaXEPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792011034; c=relaxed/simple;
	bh=tmHsiaNtd0RRJGApVAstm/uNue1u91sVkk31RXTolTI=;
	h=To:Subject:From:Message-Id:Date; b=W7Di8gtX0jgi0+mnnwyvhhu/HvpiC2RD6/emT85kV4UjPwi3mhatP3h6w0o5WbxCqTxth1epXfvs4X+5QbfdTqrQ1D7B+4IW+ns+FwpVpJus2UObFvAMYcROveD+lt7D3Vw4M789/WQM/x4NnV9wfJplzl1BqLmzkDdyc8z+4Qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tJUKhuyj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJUKhuyj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3066C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792011033;
	bh=tmHsiaNtd0RRJGApVAstm/uNue1u91sVkk31RXTolTI=;
	h=To:Subject:From:Date:From;
	b=tJUKhuyjbMMFKhAit1clejVi6vS6WhpnSo2bPAkuyqZtfTTNqdXjGX0p7U8BlZWcD
	 78F8bWaDjmAK5Mg0au1NBvfxDFLAeQfAJ4Kvrcq7yFQeb7Dt3Ft13po8NqnMYZ7jbi
	 gzaeypIO02CmDYfPtxqVbyuG+DUfcLCB3aOePeLTtEVNRRTwLITSqvH5rbr0deqNap
	 FAT/cQUiXn+E2sU5xN0J1EP1MWQ4KXTv6UquW8/Ndr7D2Ah1qIKImnwvooVlGNaIVz
	 xfqDT/rEAE6kA+r6qnFth3YnYxz+UkcyA345wgi+WBU6A37vASULSDnPTw+fcL5XIx
	 BpZTGmRz0Inlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8CBCC6B2C
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179201103369.2622.10117461508595661298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ee0e381b815a2febef0eb129512c564d9eb71ac1e43d64e5e0290b312695bf5
Date: Wed, 14 Oct 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792011033
