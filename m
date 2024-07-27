Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C568F6D
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722113754; cv=none; b=b4OhBpI0naZKkUZMMQ7WsfAWnoUuwIfFU3Oy6W8VKdcS0g+Ata4qFTcGzimNRcQWfBTZLQY/pCo2E+CN2MWo+/iqAMsX2b4ytUiDLaGaVZEVEmTue/VGBJFVYF3YQ6R1PmxtOZy33GBA0w0VnnDWoUwgDxL0pUh0gy3yFv2tYDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722113754; c=relaxed/simple;
	bh=KhQkYaJn1MlfrZVsAa5J1MnfshZ174Rbm/xYYUtqO1w=;
	h=To:Subject:From:Message-Id:Date; b=fXI5i4t8q4Cke97U6BtcmS8C7rI8AsUuHo7cmD9qkllOPkpM466HzmsWSfkLGczLlNwKtDAuCYuk3KaD6/TsSNazaiKtrbrGiuRT54K+et/IarI9vAB/hrEi25d8R7/JHqkggzvEbtuKSBtKnNHRChr+FUSHAzytmsoy+XBQGAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KHNL1f4H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KHNL1f4H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDED8C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722113753;
	bh=KhQkYaJn1MlfrZVsAa5J1MnfshZ174Rbm/xYYUtqO1w=;
	h=To:Subject:From:Date:From;
	b=KHNL1f4HMRlfoqUtKPoVPX5Zp2RKuYE8+PFJuYQjegSrs708y1ij2yfyUNTrgJV9i
	 bvbOhcDJn6B0N1aTm4BmzRR4Z7tLfjZTTr2nw/NKmM+xoclSi+z1DhPL81ZCRLwXD6
	 aDQ/ky4YcnueYB4hq0HNFTxpxB2UFiS9lkEtAx4lxbJbCRmIoS7ok0p8wRrUzzZvJE
	 P9RTpNjcQgNAvkkf8ZYTXeVk4PVAwpwZS1Vy8mqPmUhi+82pIV8egzWB+s5J/8KDV8
	 rPpKStDuKr2l/veNwsX51tyqfgCMkf+0/DGcHjqPcaHMhC9gjOO3YjSab5iFFlFlo4
	 mWRz7so9NsWgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA22EC3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172211375365.12030.1552482404892775196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1351bec382d3cc3a88f80f467125db002f33a80cb3f0a8712ad5b8f71b7ef76b
Date: Sat, 27 Jul 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722113753
