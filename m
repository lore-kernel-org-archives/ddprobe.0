Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6CF18C008
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762719594; cv=none; b=Ds09AdQyfd+Rennjtsml7vR4RoCpDz4TufkYqmdE6JZAU0TXOZ6/tFLNWpvubw2KcZeEZedfa5nAeDEdoaRUjFui91K9HtP3T1H0Uf7y0CEGfxs4W6mYk+hyKCqBLkpZ4B+O9yamuc7lrfuXx3asQUBSQmdDZ0YxGto41OBefgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762719594; c=relaxed/simple;
	bh=d5Bhllr7zbcbwkWtOR3s7vEwrpwcvbY/+OF3BMASJSE=;
	h=To:Subject:From:Message-Id:Date; b=t+4A2zo5qwU7UghKyzSIt0LOha+UQiDalbT60XUtFrzCjJ3Nd0H1Q4F6SRMGCzBYZF2T/+85TxyXLvMHAn4+uL0pziTCxsOac4odV+3b9Rl8WKTX23Q6ERacvQDRz/vkP3LSCPTD1I+n21NJ3DFnD9+0lR2oCjzE7D22B+fatwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d93QyN5r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d93QyN5r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2366C116B1
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762719593;
	bh=d5Bhllr7zbcbwkWtOR3s7vEwrpwcvbY/+OF3BMASJSE=;
	h=To:Subject:From:Date:From;
	b=d93QyN5rbZZ7cX2gSboWGut8L1Tr0riS1ssor0kJPcM7jOlRlAAeTMStgDVvkkyCU
	 Y7yofWAPepvMovfa/W0Yc3m6k4D3MJzidiimKVLHc0KwzT+sm+gEkv9orpBb2NcII9
	 r8dElpXnidpaKhFdEBHSDx5B8nPOwN98erhFztZRwiqDuuroyeNL0jjIbpSj8bNmdl
	 i9AON/VPY0VLVjLSCaX2jWuGcdFODYlvEvbLleRhbCMNFAnxUuiJr0DLXvCZOVYmiS
	 /nq2rtwW64qcqu65HEThe7bT7e3zsqtfG+9dqsOJ/38ZRpUgHsBB9S2vklW46QQP5e
	 JfBcR9e7MJHCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D2DCCFA1A
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176271959357.11689.4635931206844771352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89c5146ef6123f1a4e7d6657812bd54f58ce1b27f109110d3b7565a61768f5e6
Date: Sun, 09 Nov 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762719593
