Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307F915689A
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734681354; cv=none; b=CpS6D/fu4GAYaBlWvnRPiekd/yzU4PcR21QkPf1RUUvxaDmrqytHDJIcPlpT8oSmrVEU3vz2Z7KxawGfalY24HwHtv8gAK8f8EXEVITYNkHBrLURPA1UPzd5Cb/3HnWpZggvOajTIdS6vAc1zIl/xoFgQ5gmrBe5VtqF77IsUsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734681354; c=relaxed/simple;
	bh=hDFFZCvnBJGkq64b8vobeadTlP2mAC9m0wvm2owv63c=;
	h=To:Subject:From:Message-Id:Date; b=d96ohhmI1/pMsITYnyTRckZRTMwyWx3stcAYHiZtZTbVLtcDMVYhrTdyUZxhNWkkYqX682Dg9CsEZE5dtYLbbqUiVy9rxep0ELlAspEbxp57B0fN4QpmKDZQfUl1MgETniK8p8R4XPeeau9Q2dSDgjcqPtaLfEmgmUw/vua8RMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ND33ILIe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ND33ILIe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74DEC4CED4
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734681353;
	bh=hDFFZCvnBJGkq64b8vobeadTlP2mAC9m0wvm2owv63c=;
	h=To:Subject:From:Date:From;
	b=ND33ILIezqMrMti5bQtWRorKhMeHIOdwC0TKpyVWCSAkb0eOuENzmyrFI+X0DE8QG
	 eaK8LlUdQ2MdcBrT1m2VFdoPuOuf1qTsgdCMruL0+enl+Z0nLILvxBTJJWmjwDvDS8
	 0yngsVOVFGIlzY8GjEz8W4hOtWoyyXDxlU+hBWTbVAb0l0TXAO4es4iIiKe6ipPU+Z
	 1NzScxBvo1fyUW8Mktp6AhsPbhKuPfRWcxR8BhVt2kJ9iZgipPtSSP/D16LRQm0OR+
	 VG+FJ8z/771LKS50ZrKMwjdTvXy81U8hdqGwAUvnmlj7OgRBhKASM9+SJh1rR5PEcp
	 RMEzb72A+TC1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BA1E7718B
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173468135359.11802.7354914147238540265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06caad007c467287241d5308b97904b82cd77990327653550ed7719c014d554d
Date: Fri, 20 Dec 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734681353
