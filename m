Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B393E54C
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 19:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722712554; cv=none; b=pmwYkf/k4ZqjOM7ssiMS1U8Y/9uKXJ02LP86vMNB7NH8NYTICdb3KxiUnU42LAYR/NIYvnv5Oti2EL/sg8F6D8CalxmutqikCRbsedIFp99XXx5C6esv2ZYIgKQ/xLhYcECrEe3OiREMgxWtnzM5CvBb1X3FZIX4cHkeNR3Vd3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722712554; c=relaxed/simple;
	bh=ZVVSpB+dY0JMm8jc1SKhrHZadriPNSfXtjWMVsfrbpc=;
	h=To:Subject:From:Message-Id:Date; b=YO9d4CtLz0/bJFv/kwdulWYChBSL0+S1niq0UXNvjDhBkMDq9wMWl0L00ENgPOqWpiNXJoOV7pHVDpG4d8lEE8H1NdG1tUxjVV5fSCJEwkyEIVGrLAYT392P94xG9jr/PFGqDjTOsbqgGlgdEopxooG0Y0QgqAfpq3CXiceSew4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VTQkwlr1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VTQkwlr1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE61BC116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722712553;
	bh=ZVVSpB+dY0JMm8jc1SKhrHZadriPNSfXtjWMVsfrbpc=;
	h=To:Subject:From:Date:From;
	b=VTQkwlr1/9a1a2vbOIHAW7psmm1BLn4fU4bg9H52srKRKKeJ/VzJ8p2Cww8JjI4Ul
	 MEHfobN6Ti8DSZ/086pndTQunw5mzX8nLtKicosJanqWhmCQrWmr5INmCMWRV5fRdc
	 duUmZcuV3vi7wm2YJ5IUlQYPpiV440EkDZH0PwhU/4u6yJusIV6Vck8gcZh84QwUhC
	 770Tlv0kDh6Nt2bcfjHn2eJW3gU6qE0h0FGLEidtBPXHQPcNN+sgGuZ2atR0OZzJ5W
	 RzN34SH8ifXlUzQDBxszQ3vj4QZ/7DnYXaMcl7piZ/ss7Th0pTglnnC7FmFIJXjgDC
	 e7JvNHV9ZFyvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1FE2C3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172271255369.31971.7645646007944482117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cb7205e5c9b334dd9794b435e4058a059d43d8fcdd45c88cf26c3f38a70ee9c
Date: Sat, 03 Aug 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722712553
