Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292FE198851
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 13:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739714334; cv=none; b=K14g2u8BIEAsuCMBQSr0Fy/tsLgfUFhLc+cLkzKTg80xC4lqXeiQVSBnZXdxImFKQ39OUvCtpdJuun4scPdjdm3Pp5HH7B3mBBGbwuowXnxF/W6LHnR81Jmbump97vZsaSJGfv567fDuvur5tPM3PEJh00wAWOBMaI/atWS1YP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739714334; c=relaxed/simple;
	bh=OnD0rLDoo4SIzi5+C0jtv39SNvo5ker48Vg/YWNxHd8=;
	h=To:Subject:From:Message-Id:Date; b=qp09ehaNDaq4jqH9/8Wn36dUQG7c5MMnH8DVG6FWuR9HmaBbpf31ZGmW+NM9+x/8uWDocqULNlm8CuQcNgf/erdotadbTxFjf6fBZe7lBs4oDNJgOn5IG8dMjuYk842jMmTA0qckxb9Uf/jg9dt7tIP67TFN61kPmoV8McuPXyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpZwU627; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpZwU627"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05FEC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 13:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739714333;
	bh=OnD0rLDoo4SIzi5+C0jtv39SNvo5ker48Vg/YWNxHd8=;
	h=To:Subject:From:Date:From;
	b=lpZwU6277IPMkXfOeG6n4Z4h3KYmMerAn2bVpuQ1i35n9gJX12qyKIYdqAOuUbT+T
	 MiXKAF2Q6sISB7QmnqekF5jcpEVSkw+p9hyOlfASoudsdlpZumTuYEBgQPZRmWbiqD
	 V1gf/dnZ6u/t3CG0L4Mtru7Wn6p9HprADssFbNiZo3AosoAnzmGgdbr9+OuAdkcaLI
	 sLlWNwUBADm9LxV+VesgAW2Z5T8ldVEhLSmBv3Tqdkk1BpUpkzy0wKUcd3rqeNIQrj
	 Gock9Oo+Ojpyuj89vGnahfG1YShd1Q31l+Us6tlEkPy5PFxEt8qp1UlKchtCU+YaFO
	 j85DcdLooOUBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920B3C02198
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 13:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173971433358.9783.16825243858253867488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49d19144e2262cd556b7add7cbd943a272b740f5cd11621e2a11bef3dfb0bb2a
Date: Sun, 16 Feb 2025 13:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739714333
