Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421CB1DB127
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745745595; cv=none; b=iw2Odlxz6LfbXKnpaG0SCjoDvaEne7hVIsVSwI6VPRV23hwSyQsCzGL7MvQQvfpuTOLJziZj7GHa5MgptAlKN/d0LTUkzmKyhrBv3Gwsaz4auibfdAlPp2jGrpJQGG/j2aDacWPFIpKhM/cSJ+JInWUWsGOlnl8WF7esZjA31HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745745595; c=relaxed/simple;
	bh=hWWJZyk0oK1fy8RlhJT+8OcGjkXOe0U6238OZtAVYxs=;
	h=To:Subject:From:Message-Id:Date; b=gVg2CANv35CxVpTlr2w8BJ4SxzWhn24W8jwB6fOuxJles5AhAamt4HmpZUNocvklVKH1iKdPZ0+Vo68a7wZ/O2kKH2vhd6XdNT7cpvuWuVm982nezRRlos7okYnNHRVOEBpceSisrIhztfKgBMFVbdsh0hD4bN3nHsVTNdrVQ1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lDKvXTtd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDKvXTtd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC4AC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745745593;
	bh=hWWJZyk0oK1fy8RlhJT+8OcGjkXOe0U6238OZtAVYxs=;
	h=To:Subject:From:Date:From;
	b=lDKvXTtd8S2nB2spXSiS9iGw+DR171cSo8Tk8lV2oeBI30DPUYd4wcyLreTZeftB+
	 Cw97YG4CDMQi1JUsJB4T2kTq21YSO98c3G7eH8mbADKPWSe/0JRK+nTcUqf+uxBoxU
	 RMhG0AhpuyUg6W4eflrBf1iONGPGI+Axae+EusNjxTYdV5Hvp5OAxEEWI9PhDBYetb
	 kpdofQRb8qUm3prbdTk+DyxwaOrkPgMo35KqUX4vkOcP6fao79NMB2Byi4AWzdCCzP
	 asCbqm1pyhj9K0q70yDnG6KwJyEx6JFDSZ+oGV3DY0t3qNEMnv+PnoT3+8nSs8+HnM
	 yVu1cfgNm6E8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CF3C369D5
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174574559358.8812.2021662979513883223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 826d4cfd21d96cd1a5bf246940c28540b762dc4e50499596e8c7465377e2dfbc
Date: Sun, 27 Apr 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745745593
