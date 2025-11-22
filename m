Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2446F36D509
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 00:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763770914; cv=none; b=T4nVlKCDPn8ve4U4+RBwhiGNzS77/CcNyCQxkb1FFQ1XE7NIVaK12gtXPOG+g+9GrhENmL1DjRA9xGKKleNF2K/65s6yZZsNfJ0SN/UISE6jhIBGXeG1u2hnWvYVMMPUNPOWRViCGHRbRCWJFdZ/3F1+KQM2iM2C2WwEYiW7INI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763770914; c=relaxed/simple;
	bh=DNyBF16tjPuKphf+MWhFihihfHtpiDavIe/uegh0ZGI=;
	h=To:Subject:From:Message-Id:Date; b=WC7R2wVHTWf7Ex6mWZ4+6y+y3jj8cC7vGcLkSL+wvKgEWT+V29EayiQk6MF1NvQdQhC016GVjZvqclS12T81onVTv8ODEWRYYrGE4FxwoE8P+YLIpSZWulV9sLPij5uR4z+a0LHBZhqdPk/+kVEnMzrf7ehxkEcoyvbUkJHYAYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D2sbJIa/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D2sbJIa/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7120C116C6
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 00:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763770913;
	bh=DNyBF16tjPuKphf+MWhFihihfHtpiDavIe/uegh0ZGI=;
	h=To:Subject:From:Date:From;
	b=D2sbJIa/6oqsHaN3zxqvHQuGUiB1nJQpYk/U38H12iguUThG3qTp/tyPgnNbhPH1q
	 QMFj0MgyVAD1VYua19fd+doGtOYfrjDTwK/ONL62AcMqEPWLJdCE3Ebg04hvzwKhRv
	 RPUZQBLwa4+uG2JgTWHve9sG3E2PvPO/9vZc9ZGfXj8wCtlsXY6+qjUDX13LmLD4wq
	 gFHzfj3yv/mWNanjKsc/Ahj68TzyXZBhFutfrCsPjqxZjq0coyLo+XZ5Auqn0br5P0
	 8RwzWxX724Q/FJJwo+9h67ZmtsXYnJhLpawq888bidTwax5wz5NOddYAEYVqBBpqNc
	 9NUp/QENghHAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91724CFC515
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 00:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176377091358.30654.8405608947472648362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fffe825b53c6c8fab151580a170c98fd4403631317d8a367692b1b7190909f9d
Date: Sat, 22 Nov 2025 00:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763770913
