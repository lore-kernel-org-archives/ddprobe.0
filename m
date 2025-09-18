Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2087A217F27
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758233394; cv=none; b=mf0G9GxaSWRGHkKA3NQ7H36242UZyRMhQ2lmNsVqREn/4JSNGzWxiS494yf37w69vRYUDPkZmBD/QBMCaIEOOJMfir3+8mqhKyhhN+AELcmIa+7iKI4I80loCzxcZ++Seb+1nVZATR0b7M4ggKUM7qH/xIGsX9eNSCAoiBKbsKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758233394; c=relaxed/simple;
	bh=SnN2dJhXyagA38OiF6dwhhttCQtRA26HdjGwibjGblc=;
	h=To:Subject:From:Message-Id:Date; b=cKWbCsuELQNCgMwe5k0+lGu36xN6GMMLDpZp22wtUKIcrl6UunqnHPfxoRJJXG8EWSZLzABevF7GoM4LVM0nfZETDlwnbhCKSWQCtDwoF0obiISO3mGIG/U3SgIud6msYi5PwI95YiG9Q0ttrNKTCPsTjN4DyyceEZU8VDERFNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bN7aGw+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bN7aGw+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CEDC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758233393;
	bh=SnN2dJhXyagA38OiF6dwhhttCQtRA26HdjGwibjGblc=;
	h=To:Subject:From:Date:From;
	b=bN7aGw+m/UwqihFJldAWDepwMeyBzriY4vbdjYX/Thd5gMBEctooB/vcIWgODmZei
	 6ycCok+3oYbY+fQeKxF853BjFmESinWqVORIayZ9uP+KvTrrwYGsBrgshqWUPVIKag
	 VSTLBFxhN3wuGwbC7Y2rtffMu6+fh6xHGv7yv4WyIY1d5o9n4neNoZSz86y5LOjRJK
	 1yDcmA4GzGnTvh6Tk3NAyD4e3gTGqQFsOEMxrb8NDyv/nFm6or04Zlyjwja/6hskGf
	 Z6o3hjBh6N3n68uioCUkpGTrL39S/Sf7/2Joir8Bx732wk+RckjWtjNmRxOnE1TDH4
	 EJuQUcxVebjAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A79CA1013
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175823339358.21516.7579182115718073418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0e4c151bd9be84ad0f5efd12d3e6d8f7474da861c3b63925ab01b70d78718e6
Date: Thu, 18 Sep 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758233393
