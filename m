Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18CCA2566
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756517994; cv=none; b=qrHB4DMWiferApPI8l/KbOfmZl80eh/MA0B/N3yBjglCcbDr3dicvZXnTrvCb6q41ra3LCdFR9IhvcYlXkjwuZflQlBf/ODoC2Csgsr7WjwRlX0FwTShwQ/7SuCF6DdsQlYc1EUbilvGEUGZjOe50ks0kxaJh4Cn5LqGjKxv4iQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756517994; c=relaxed/simple;
	bh=AR6QSnFeCUetg702zPRp+G+UMFNWvgrz+xluYHGmAl4=;
	h=To:Subject:From:Message-Id:Date; b=k8xz3m4mIPndPW7RwzNiAVQj7ncPq6qHK6iJIEtDpXYK4rh0/f7+LT1XupKTT+BALOMuncDuXWR+/+kQe7MAD1q1utfmvUtqbF6HeGKCMaHyJAutIYq7KntTOAcVA2CBbOLp31VsKedYZrnPn0y6/F54G58cERc1snIC1NErlBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qMTZ2Nc4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qMTZ2Nc4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4068C4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756517993;
	bh=AR6QSnFeCUetg702zPRp+G+UMFNWvgrz+xluYHGmAl4=;
	h=To:Subject:From:Date:From;
	b=qMTZ2Nc4eSs+z/e4MbM4wFwJS+O6WbWlnvN8J2Lgw4PgoYFhlvftEv+LkINjT0u8B
	 Rx0+f85+9YxEDboF1RXEwLepEUnwSUxxWMHeCy3/kI6VphMZ0opmNyhQyp0ZH7ZM44
	 wUIwlXliSSWaO7ZotvjuH5oJ54LJ+/Z4Idzdio2N20VvPLEj04+4Oxha5wUhh0G/Fi
	 rcUilCYCWLTSufsjemHUyMqTT1EFzs+Bc7ekdkyfP5BWhgjv8TfGA9IozBUMFAb8xr
	 QnGQSPFSBvhKJ/JwdeH2qkYshpd14VDx2baqMUXb7VNo5Ewqd/PbL9VRX1OvQArun4
	 ZRYxupqaJjGhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AD7CA0FF0
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175651799357.587.18305531733790622806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c23569a8e31208b82ba3733f92e3cb064a0d98ca8ce0058a1e1641e24ef2877
Date: Sat, 30 Aug 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756517993
