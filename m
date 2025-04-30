Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3571F1DF256
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746040194; cv=none; b=SyGqlrb0+pnlIFP7buFCHnGQ5gktcpfvykUFie9L2vAJvwENqm6HV4ud4Pbu/YttGjbZDGhjbveWMkwIofrUyeZTvrUCQCK4srR3E/HdDjR8ZNc6+FwOMFQRpRYaMsV5VlIMl9LJ5IxF//xBVncW1GxKoQ36NJaKOHDIQdPVsWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746040194; c=relaxed/simple;
	bh=b829oczv1ELITo7Qr6HLG/zJrDMbHpfdnSynvBGb9V4=;
	h=To:Subject:From:Message-Id:Date; b=OoeiZdMgemEWi9TBp0JvGEwuldbGeGaPTQf6T9TCVhLBZlq55W5OK+9whR1NPjRxQXWF0nzcDxNRQLH1NgBvFCwWLK8SC/Xip/qBSQNnaRJVXZxQACJmZFBCXYKSOJfULanzEgoX07KvFhrjf3VDD0Bz8t2sKAvh5tDYD8m7Ofw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZoySUkX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZoySUkX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF0BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746040193;
	bh=b829oczv1ELITo7Qr6HLG/zJrDMbHpfdnSynvBGb9V4=;
	h=To:Subject:From:Date:From;
	b=EZoySUkXsw2A2EfF0mQ4q6hxI+obYeg/hDRKmHm2KDnsRopPKDRxz/owUcC5H2cEw
	 IOxoelRTjNXnnwbjc7SO96SCOmOvGKKn0hwUQzizoOiag1F7bnqANzNU/xRxc56rJ2
	 1J8EvwmsN92i87Du/dcDsPC8sDNtd8ifbw38X3xsw423UtGrqosKxMEOsUaLix7b3Y
	 WnGfsMqzPq6UAaI4UaWCY35iIZYihGat1zBhEn7HlQkByggDKF1xpkfJfaOB9BdiYF
	 2W0XaFF7rIF13o1/K1NlslPxvjuGLkAWb2ETtMBf63P3hXEJGl8bgLEG3VqZWza+bT
	 4zVQAtbWxpyQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E42AC3ABA9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174604019357.16649.16770156248840332263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: addc156b1b5439a7c2c0143ffcc1f800c650b39b3a91308a4d590c222df7de4d
Date: Wed, 30 Apr 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746040193
