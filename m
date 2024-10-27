Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0DE17736
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730060154; cv=none; b=ZAZOfSjdlAnYTQ3gx6ZWrt5JSabXy01elrHZ8iM2qnuRSKpb80geEDv666WUWA/rINyNmCVZS+JcPRwCEkE0Zn45T/53/t2wc10V2oMwiXX47QjzvFE774PB/VxUQ+6pyORDmuxgu25+8b2AEKX7qFUfZ4w760olufhLDVK22k4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730060154; c=relaxed/simple;
	bh=So9T4QCAlVXK3TEgd2SX3E7afTZgsosDnkB0jcx7ojA=;
	h=To:Subject:From:Message-Id:Date; b=IsQ0d6z0x7KRR3kHsQeYo5f4HXY2Hw40P7DfddFloDlBZkDfl7xvQWh0TOTdx84ajs4tgRUFBgEFHrwF9lZcXCviH0qIjP3eEppjgseQrCs3cZNdZc93S9rY8+CecxIenRe1Eg4BexYL1R38pUdAl65OTHjH6InYZ6w7M2Lujeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBGBZqmO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iBGBZqmO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5647C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730060153;
	bh=So9T4QCAlVXK3TEgd2SX3E7afTZgsosDnkB0jcx7ojA=;
	h=To:Subject:From:Date:From;
	b=iBGBZqmO/My0LRtuEOYU3SDGHD4ufZ8a1oStg9N0541No1Bn/gZitceouUWvcUvcm
	 yN89y/NIB4t87YuUX0vD0PdCzBhOwY2On9oDI/LazCdVXRGRUSDYLJNsdFr2ZIHIgG
	 L01jtY5iFKPUQbMPmTvsb8ONokxQg3F1RHWqXJuezgvDQ+ja0n6yB9/AvXQFw6bRPm
	 IIUu9h83hfD9w1Cei8LeSr6l4cXJLtsBLjQcLFLf5MVqGvnURdgbvrpu1uwPTKHU1G
	 bl1xloPkoQD0YQ6rHocR6UiEAw0c9bkC252ItQhSYl56uuXpbVqUAw95g0WAh+5N66
	 7J9MbCymi8SqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F29AD13580
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173006015364.24322.14247195407673943575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f09afa88f11b5f3a386f5533357cb46ef19e5d2c172ed5596033675cf82abb9f
Date: Sun, 27 Oct 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730060153
