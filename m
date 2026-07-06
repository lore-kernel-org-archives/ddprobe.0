Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4766419005E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 00:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783298314; cv=none; b=tHnu0uswTxPz8Hm1bnY07F5SzYCbsWFJBfm5X98TQrrhJkdTx4Pn8oE/TBaAtclJngLn0b4CJgrmE5g3Vx8pAtmfOwk4fE7hBnBXKyNK9lQoYA0a7knAsmdBQJQrlt/8BsnRLfxQrOOsNEJFAdIZKZ/Xr+tPDtD8EWZXyb2gKq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783298314; c=relaxed/simple;
	bh=S5JKxvD6uAZbMv/EJCQyThiqWf+/xmehtt5Jyu1cUJE=;
	h=To:Subject:From:Message-Id:Date; b=oQGunLzQqEXC0q3QHVYxVdPlkYSFaiyIVnF8tUPRxRteslRWnxCGv4Kd7yiYPF8wdH5d+p12K8UEOb32vn8Cob1u7KcaBOIUHpl+r+BvFlPcaKK10VUsKosJ6prZj3we+Zx/Pd8t995apzcdU7E1QT4iiAmxsZeES3UA/fM+R8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHHcfSDf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHHcfSDf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA948C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 00:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783298313;
	bh=S5JKxvD6uAZbMv/EJCQyThiqWf+/xmehtt5Jyu1cUJE=;
	h=To:Subject:From:Date:From;
	b=CHHcfSDf+21iRIFODq4BdP5w8s8AecpcmxYcRGursfqWpmJ9RJyL96gyrmhgFM3pX
	 2ve0cfnIQ31MZX2NwagqyirY0Mm4eFeB8bdUdPkMszuB1WlHB/PTblve+ertYB46LH
	 GOZsWC+wa2aM9WQz5bGbdK0sR43tD1eWInJl0uOjUuZjKWHE4gsYkApR19TKHHnDQk
	 1xWklC+bCfiCs9F8wYFoqY9QS8TPlY3Q2adJZgWJ8Z+EDaw4gKyEA6lxzaJHOavqJT
	 smZrMM6rk8iLq87FsGYQBwdTP6L9WsDq93r5ZHqz0fI9zwugOkFczueG3NFCiy5ahA
	 zXhsyrwhbT1tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A792FC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 00:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178329831367.18267.15904570593912515161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 672c5567a37d37d2761115779814e3d875f581d8d835019acd5d4218738ef278
Date: Mon, 06 Jul 2026 00:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783298313
