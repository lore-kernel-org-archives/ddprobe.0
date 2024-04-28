Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2286F068
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 15:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714319543; cv=none; b=aQFQh04zeIx8S/AHWjcCmZBnpiZvkeuli8d/lmTVh2n3WsJK3URXvEcpDLawj+Shr5gQa7j0xrNPaDC9Q4QH1ABpOJioZ2f8AUPZsGHfeLDFVsY/CqA+qcaTfiRDMR8cCctjDCnC4+7dZ3XNmkBhPuLLsQTAxDBmCe30gnSNGag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714319543; c=relaxed/simple;
	bh=W+pcCUvWvBUWdzY71PnJ7YhEfn7ygWipKlNPpoRT0co=;
	h=To:Subject:From:Message-Id:Date; b=ZHy+7MK3ENiShb3hnXuYqw+LZZr6+6MbZhUxtUD9pWNECqvIxDGdq9BkMHfWOwXmQYKVtxNDZPtWCIDXDYOK0v71id//kSO5EQypUPR39t/Gc/Z8fPrlMRIa4PRjweK+kpQdUZ8xsb9x8zL3GSsq+881/AShnTOOWlIKHvG0fHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SHGSXWPZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHGSXWPZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF76C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 15:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714319542;
	bh=W+pcCUvWvBUWdzY71PnJ7YhEfn7ygWipKlNPpoRT0co=;
	h=To:Subject:From:Date:From;
	b=SHGSXWPZtUEzhEmdOGR5xktNdrnklpnGAoz7rknZuaKBK7B7R1bOdJpUjMSXKHAgA
	 q6zyaLF+cr155zu1IGN7/TXt7pslXC2axl52vvaN3XRS9kTNDrcmEug8MLyd29A60O
	 WjbNBFgM8L7FYa1ALf5h6Nd+kP/kfWXpOscYoBfbCpfYfCf8mVEWLuu1GxswrOUyns
	 jUYn6gWc3jWv+LbToGKPFp47x0Pg9TW0nIlNWsBFcEAvQGsUSEUu9rjCmep2fhWJ7f
	 8tavL1yWRCjZH+jd+90rk1BH1CKJzflHA4rSNjarUIn46oNg3BGEppnWlg4I6CcaJy
	 gUf8FOw5Lki/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2843C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 15:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171431954277.5432.10055464230166500606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71c9bf284dc812170c0fe3cbce08f96435ee8ce3042d396b39f024d522c054af
Date: Sun, 28 Apr 2024 15:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714319542
