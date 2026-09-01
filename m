Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43560368D66
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788280834; cv=none; b=flMzWyUR5OrNqEZEvgKLu4PjQsKSmvu373FYql22UyHWuqoDv7xUDnIU/5/pXi2rCf9PF72pH+SAzz+9bizzIwg7cd3cwAV4Y5mzXAoWZ5MhGzkwMCKLkASnHXi4GGoCKBwA88vcNYXltKwK4DYRFm2BrspgMV1TWmtwxvrY9Qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788280834; c=relaxed/simple;
	bh=jx2QgvD3x4sc025rswHi0W7OoAgli9NU4+GWuPJJrKs=;
	h=To:Subject:From:Message-Id:Date; b=sXC+lOeLE5zRk2C6Z7QAqsQBqfuFSZROSdLfgejqlQKCQanoJFPLGsxBIj96MCc4RV/UJZiFhoL7fQK4NfoPZ+H7KyWTGPvvzchilP1TSSEN5HQ4UBjgl0Mnooo6bZEkewsdFE545Wm/LXve8hl/qVDPnYBtpywG9BzkeSRgSMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZsP0sPEK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZsP0sPEK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED84C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788280833;
	bh=jx2QgvD3x4sc025rswHi0W7OoAgli9NU4+GWuPJJrKs=;
	h=To:Subject:From:Date:From;
	b=ZsP0sPEK/id8oCqRal9FxCfv5ctHTaETnilZ8C291OPnBu83zYbWLQBfkuzxuV3WM
	 t9Nlgv9VH8BHPYItcKA2CuPTiFlBR3ausSUUPCfOVWjcGP20wObWfoAPK9oSSDxu0D
	 aeYfSGEaqLiVz6HJ4/VK8qs4IdZy83qONl/P5M5o8TqHyMI9qhNsiJUCRyFNdNHFq4
	 c3fooYtLDXNRYXlLp8RhK4VfnlT2LXdDlhn9TPI3dxeqfVchvNSH/N9z3onBS0CMbV
	 6v961L5sOqQQ2X0+ceJxW5DCn7xpNeS9M3MiLqHGU0vZzQRqa9V7U0JnEVjnTa9iC2
	 BrBcWk+rKtCSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA18C61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178828083368.4729.10240096976775828051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26cfb3ea6bc6d249d35a38bd7dffe0dfa981029ff885af11c212cd3787604702
Date: Tue, 01 Sep 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788280833
