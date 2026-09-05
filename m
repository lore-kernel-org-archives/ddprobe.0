Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5269B3939B0
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788642634; cv=none; b=eSm8lPaEQWXTBKkkTvkgA1VEpuA/AXGv+O5uIzyUL0s/9pO4LcRsghrbkmE7gcW5+2MdF5++3xIbeWgX7M3NdMNKEUtCMN90CnSMGCZccSZ7FXukTe1MvGtXaT06vvrAhbauA225ExxWOO3ScudK72aVcSkHAVNOt93ABWo9Yuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788642634; c=relaxed/simple;
	bh=sy+V47F6DnxByhcMXa2DWjIiAx7gR/54XLJzuAtUyak=;
	h=To:Subject:From:Message-Id:Date; b=jMdU8sPa3GIrVj+7houORLQp26bfuJ6WyH6Zyxrr3f19pjQLoctmQ4+D6sqhSUMvPHXv69TRkre5diNtlA7GaJRQjCDGFJye1xH4y0aUDZwcnfSKzYt3Ug8fBUL8W//8xPITAynNRjmz+JDH9y/2+VqCT1b70fzmMtywve+cyXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DwSyEZTp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DwSyEZTp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38DFC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788642633;
	bh=sy+V47F6DnxByhcMXa2DWjIiAx7gR/54XLJzuAtUyak=;
	h=To:Subject:From:Date:From;
	b=DwSyEZTpizjvK5eRycp1EzikWv4oZa2D3LGzIEj18gzUoI1fbF9ywtCnLxsHbglNN
	 cBHNK5B4pIAfvs2BT+stCEJPPhtM1y0t4M1v6SJuiZCMNpAlojBMQbJ6ksYiY/3Vzk
	 r+kSASpo/B9Mm6h69AvcNLweQKn70Vz181OTcbQW0EytL/FqR4EXStuuVpI/UPZbZZ
	 e7kBlnN4W5sq5XHZYPnswdkGT6DV8EP8GdBYB2gTpkEFbGbmVm2KBMPle1tqnfQ/97
	 g8LRv/MmNZGOqY6J15bE21WXL54cHRtOFE01aBhMaAuJXHmm+HT++7b8UpnUyLMvQN
	 zmrlbSWoWgxqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2F5C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178864263369.24122.15954642405846763338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40efda7ec54431de30e98ba2af02fa243ce617860e96fd36d312a2affdfbc3e9
Date: Sat, 05 Sep 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788642633
