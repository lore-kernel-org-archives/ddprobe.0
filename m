Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364831ACEDF
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761100194; cv=none; b=K+ft/UoiQoH1fP72jJ2sawlU0ilebs6QUWjnxGdZnpJLD595Tm50YLPm3TbDkq0jqw/eaf2SDfld10VIu2izFU6gTqFbmCAnSzntswEp0FuVRU8tHskI+/l01q5IOyhX0JXqlW8kUbMnXNzckkmVs1LgRFdiYq06/nnAErmjcQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761100194; c=relaxed/simple;
	bh=IaQdDvXKSLjSeDJ/ov/sXPPk0nImDWbrHlbrfAacTos=;
	h=To:Subject:From:Message-Id:Date; b=rlBc1gI4hBEMoMoOJAPp56FiSpqtvqjzL3RQ49W/XaCsKUbwMDK2Jc3uo1H6KwkSLSllqL9yYxfNJ2XKBWN9iddhSmc9/fPjE51DYEQAQdj7N/rmjwXCCYDt3CBoTyIIJ2iLsRSRP8IiPx7WMS1uzRP/khH/j/o8BN5E1+zjuDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eYHQ+RE+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eYHQ+RE+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4AA2C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761100193;
	bh=IaQdDvXKSLjSeDJ/ov/sXPPk0nImDWbrHlbrfAacTos=;
	h=To:Subject:From:Date:From;
	b=eYHQ+RE+TFhVjqSiQHChYhu9WUga0vk2OQvNmLGoszIPiMf+quw7s30pvMhqzU8QD
	 8O37mq46wto3HFjuklY036fk5YrEB8uFgPoUACAq8C6P/Gak5hO2EDRdNrHfG6Lnz/
	 EDg07osobPYJsEH2AHVGXg9suDPpUhnsc63NTKFhkxV7Swv59Sz3Uz38U9A1sZB5jA
	 67mt/1t7RXY9vZ1+R8E6lEKb5UXWeCL8V3gFCa6do5fNJ4K/ZCbnpQ1DussUQx/M+U
	 7Ll0L1uG9cgk6sGwmKJjdGAy4UfaleBr/7o/KN/+3drqaZTf5EKz/My+O5B0QzYjRO
	 gYgtoECyEFMEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F2B4CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176110019364.7485.10949122129294465300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 624968cc04bbb0a8ca5094b097f83a22032b5c3dadcde8913b1fd3e48994f269
Date: Wed, 22 Oct 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761100193
