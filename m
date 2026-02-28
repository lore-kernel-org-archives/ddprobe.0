Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136A024679C
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772253294; cv=none; b=AZJxTP4G//DL6eM5OZJnavwiO6UnBtM86OCtVtNgIkyz1z3am/yWmA+VNGlI6l4s36nSpHmeUl4f7AiOi46etLzP8CrPjhQAgqAflyjsz86UFGNWReTZ1Srbx0E4DpAB30Cu/2btscQRM5SiYln79x7ush5pF/eepwd4OcdkFD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772253294; c=relaxed/simple;
	bh=6s0v8QGhbFbb0qfm0VAsIoD7qISyGoYNVMowj8m1El4=;
	h=To:Subject:From:Message-Id:Date; b=eLvllXfbVSex3i39nEekxCNCqPPVu/un9QePtb8rbysA7e4qSV0xWOSAAEuiOCDPZml8uRGuPXQvwwoGUIgPZG8falnQBFS2PaO6vw793GFmK9kJbLHVPI79tWOB+DfQtKhky8TeCwOBLZ8IKqwwbPfPoSG9t19W4xIQQbG0L3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RR3ey3GF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RR3ey3GF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD76BC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772253293;
	bh=6s0v8QGhbFbb0qfm0VAsIoD7qISyGoYNVMowj8m1El4=;
	h=To:Subject:From:Date:From;
	b=RR3ey3GF812GZeZFoSS/HpXAwWNWPQsTBAUcIuTC3j/zpwTcqvQZLe/PFTbr1U+Bw
	 ux3yEvM3QrlRwHd1RvWTeWrgFWXRXhigaQGlXXG26QsmkdON249wWc5SuqF2tkELBt
	 i4LDZhtBXNXD4Z/y5bGlP3IRQfyq4+LcXvA4JY9MYmpF0jQwC/MfWxZYC0NCBxW+UO
	 zE4qFonH4yF3Uij6Iw8X6lRZDlRM+oz/+NW1xeV8MJJfZF2u/v4iQmNkWsv+2hbj/N
	 y38rWUxWLXxL3vbajbZgBTd8haR15iHySTa+S0dq9eJ2s0ys2/1ISKvMdRq7VpUTCJ
	 dIMrcZsxp/7Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91430FEE4C5
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177225329358.14558.4222313991404526855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ffb886df23cb41cceb00f3810c46a329754fa2a31680303ed1fd9bcaaf2ad1b
Date: Sat, 28 Feb 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772253293
