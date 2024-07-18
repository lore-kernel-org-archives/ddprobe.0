Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9C475808
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721338554; cv=none; b=Mb+m7pUrPpxg4BWUxkTNCiWEv5hs7YnwPxMv4w64K4y7mIKREk0lMMK6s7asaJs14aTfqQq4RdS/0ioTurgWBRkaAHlIPc1TgLGmgzA631rneN2PY/Eks19w2XH0Mhz4WYmV1zJOSsGY/vABdfiu9QiomoBlPKkB1Qms0UOq4ZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721338554; c=relaxed/simple;
	bh=/XviBJVDTUujcJBufl/YkbYdr/SbSR80XKxsRV4dNL0=;
	h=To:Subject:From:Message-Id:Date; b=rwrWc3c9/wie+IjsAxxqniNh8vnA2oY4QGOXYl3obC+mcV2p9vcoVB/42+Bc+2+dz8UaQGTovrWDRBD669c91eF3AVphQsWJYkyM0my2JpZZpbh8sgonr+lMd/uqSH1nR0E60r7hR53EKtQTf9DyQcaDnVqStITveVRj8lzTlg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lNSZzrGR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lNSZzrGR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A436AC116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721338553;
	bh=/XviBJVDTUujcJBufl/YkbYdr/SbSR80XKxsRV4dNL0=;
	h=To:Subject:From:Date:From;
	b=lNSZzrGRNJNiTJwt+3cDc1Tl7lvbEYcSnnjuKozhuk2Oip9ik9iGK6XCn7hVtiqBX
	 UpthpoiFcuFLpURYWvx+qyyUQRE8l25dkLn2BmJBAMmwJ2e0zgCwPFS9942REdXMrC
	 UhTnRUoArDrxDxkjKmliy+QrLCGjZjaVAT+eEi3haedHEuZhzpCe1zvYZPzNtRgjH+
	 sg9yzqQgQs7dYClAMmixK7VnI9rFlAwjiBgFmhSbTceoJEPS0oouucKJaRjfEYSAZ3
	 U3gtOhTyrjtiXlzdmikHTXrPIpB2IPTil3vB7Mvu3MmM7paL12RRDg48uoa6Ur0gti
	 oAUYpABTbd2CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBA6C3DA61
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172133855358.11726.11503383638696235094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7d8b8ce46579d6db453726c05c44405a1105fdaf02045f7d30d720461a74918
Date: Thu, 18 Jul 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721338553
