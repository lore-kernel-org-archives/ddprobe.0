Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39727433E89
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 04:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783224514; cv=none; b=OkOXeT0SFX28IzJUjyzH/+n1Byp532Hj+SXugohqe0nz+WdfBMLSYgRx1JKvqkGKDuVOuFqIi80uJeHUmU07iMPSQN53dnftkuG//i8IpfpelSG8R3FB5W1iEv4t0GkWAuBHndIOv6yGTcZyobwRKOrh/ojdGl9dDiMpxPkZUkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783224514; c=relaxed/simple;
	bh=6/hBSM2X18QJX9Zu8+SDGUiksaGwUuDDcRwVod+fy6w=;
	h=To:Subject:From:Message-Id:Date; b=GdcC4tpKJiIOcHA2du6m7IwfHsTyhX46B6/qYs4aaVtd4bjRbyLbzULALwwT4xZiDg2k7jdjWcRNC9cuLd52DWdZB9OJNCPh2cPHu/5pJKEU8i77eA+0reKJXjt2gwpNhkz51wb/DYR4wBtZboH+656JEX4jfvC6rE7PU1PFNHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cMmvDRgn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cMmvDRgn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE388C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 04:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783224513;
	bh=6/hBSM2X18QJX9Zu8+SDGUiksaGwUuDDcRwVod+fy6w=;
	h=To:Subject:From:Date:From;
	b=cMmvDRgn9AZySnZxE8ZcHmw/IylzEpNvrA6EDcaukvZr/s7nxpbR04zLuzJ5W3+q6
	 xdVEWhPXJxYJ0RnY8u2SIBezJNpNGAVzKBx1bK2Po03VscUmp0wMzkooTd+C1Utn5Y
	 RTXHBETxh6wphBbYGoUqRikb9umaSNNzgf3gugigsd4moHNVsJqK1B5mmV6BBO91KC
	 Up7gZruJmeni/LVdGuSss1mzGsL/QAcDG3u8d8+6cBLPhziWiYq3fsmkyJCHk4FfPp
	 EP6WXoa1X+ACANMRJaqXa7pijUA5WmCslIZCiS8o0SchuqO3W9JL8C/IA4m7Auvdu6
	 aA/UNhmlZviNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE43C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 04:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178322451368.20695.7379565654851089270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8bb161187db2a1a6f903a0660c114ad039794691945b9a35f72d4e2a12ca7ee
Date: Sun, 05 Jul 2026 04:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783224513
