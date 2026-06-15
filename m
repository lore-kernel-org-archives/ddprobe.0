Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF132F745E
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 04:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781498194; cv=none; b=hF+CwmOvQIJ7JlhCokD9s4d7fBRFeug0Ri+M7JJrq7tkA73TEDBsfBMhdlXY7/SeHuPbxscMqTLK29V9VPbEhzqwSFoBhMeyeuV8uRL9/fQk6SWBFJiFGtD7ENjVWUFz+pqbB7T9VP0PQEAS6Mp6wmeA49O9MYw5Bd0QP2BRFgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781498194; c=relaxed/simple;
	bh=ogiIJPlZ4A9JkjVmxY4VV9luAI9rm8GcH9NMJRz6Pe8=;
	h=To:Subject:From:Message-Id:Date; b=C0o3bgrobN9ujdQFa1lvi86nrGg+rxmgGunLz5HgJJQBA6oGS5k60gP2yahm8bhtwQ7Yo+usbUhN6aOMbcJB11hcsk5gnvJHveM51jo4nBlc6UcKzo+/akhhj+NMN5rDzhmU2r3Y0caexLUIR/7u+kQgxcnH/+pONq228MpGfO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehwF7OV2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehwF7OV2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4375C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 04:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781498193;
	bh=ogiIJPlZ4A9JkjVmxY4VV9luAI9rm8GcH9NMJRz6Pe8=;
	h=To:Subject:From:Date:From;
	b=ehwF7OV2zJw7+8LKcDSjDb9kaIfMdJg17SvBxGi9YSFdK20LJV6ECV67pzjlipO+b
	 inQw/BixqZ/Ll0P1gI8fGeSkptqO+qCA5qI1PDsm86ji9PoYqVmQnAkGEEudn3lMCl
	 7BtLbCdAoxYRzY5IFvB6O+lb+7CDQGb32rc+flINDZ4hXvzw3YxbVvE5x8edBw59pS
	 S+fOgPVbQwArpe6tCcisMr49vZtl3218n8QZ/HuSbcLilTgoqa9L/moJ/MwkXX/exl
	 mXk0Fb079LtRDTSNp7rW1JYgDJeC8/LktghHp4kfOj8U0v5vppVyETg7RnBuqZfI4U
	 AC9KsMpTKLZSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA95BCD98CE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 04:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178149819368.25119.10555747267439433928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 602a50d14c472ed32fd4c07ce159dfb669a2db1eebc664a4778f2c55979c6166
Date: Mon, 15 Jun 2026 04:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781498193
