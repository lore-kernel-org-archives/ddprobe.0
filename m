Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFB8321D584
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745486993; cv=none; b=EcrBGmEDNNUmHk9U2DVxiOo3QRrreGYwz8U+tDZ9oHtKmdJFAprKnRqu4gfw0T+5QDQXZP+ioDfODH8kW5fxAxP6MrYCUfSRO4jQHx7qHx+Jk40PFqJEkBnWgdLZpo5/qjxSv0xXaOg6ykNwMvkDhabI+hWNynxS3kbYfFttK7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745486993; c=relaxed/simple;
	bh=U5nnV+ImI620vC/AjShK/LqTBJMxbvAWVd8SsgZtVsg=;
	h=To:Subject:From:Message-Id:Date; b=WA4d42eyJeXsUAE5AVc0PX3PXly91DjYE6FZVLv0bbyCK3IzMF8ymEr8dfd8GU8u+Dp3N8KYEIPpn4wixDhRzK4tDDKkzsz1EhQS3dUbYE0kEYn5ywYKkHkcU3SKhcDL85Gq1qzZCjMDyGBNTw1/MdwtWZoW9WTeR2t6xLMKPOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F9IxwKS4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F9IxwKS4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9B4C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745486993;
	bh=U5nnV+ImI620vC/AjShK/LqTBJMxbvAWVd8SsgZtVsg=;
	h=To:Subject:From:Date:From;
	b=F9IxwKS4uVEyYxs9MK7hlajKN46xxM+ZAAnqxqVRTBDTcl7ACslC//ciORclkVqxX
	 jwH0bQUnhQlx6qVDpcxUJrFSDrfzaW1FcpmZkaGdgQA5K5H3VvcuSfMCGXne5an4id
	 skgsmeRTSEHEld1KP3y4wduM0lFT4hgidqUwsECfDrWMiJBQjstB7lc2tTrCJ2UBkV
	 AaFJ/zqe2sEt99wNCbgOKYtcCTog6ou04i4Z/wTUnyAQ33aB/efBdrcSidIvFLKue4
	 qFxh/Bd2IA7Di+MeQhDQW1zh0a0kzWhgcQ596uIbOr5enDCLJMSGdY2wu7aQ2e3Hn4
	 vJPbPRQcdKFIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F22FC369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174548699357.25521.6192459598754473987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5100735a0b79b5ce1d12122c66f9bad963425c5bfd97f0d6fd7231b07c4d7f0
Date: Thu, 24 Apr 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745486993
