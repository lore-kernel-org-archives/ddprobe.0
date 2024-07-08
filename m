Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67899A934
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 02:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720405583; cv=none; b=PUjKiQPaELDnDWaHt7N7ehkWEw2reIhhTzEVPwp9+DG2vuMAyji3TBFSUl8yqw49cpJ5a55RsOep2RMSzFlAgBgS0HNhtiM75k80Z7s7TS623ACHs9J02Yq0JqJx9cnblZaaLqz9CzOaYBbHcvXrtmxh/UU89L9ATb+MYpSgvkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720405583; c=relaxed/simple;
	bh=el38qJ1ooeokQ1VlH6jbdsvl3P9IpFXPJII4Yud653M=;
	h=To:Subject:From:Message-Id:Date; b=qyorMHcwungxZDFpPNucmxMP2nm99xb4eG3DuuiPITdMTvQAXhWPQZjqoughNYrZR+t8mXF/VtNnDPZKXgiH82avPVV6bLG1VQcunMg0NAfI0fBwvnemQod+W6mYCcZ295C0AKP5/tWYT+J49cB364TpUWZSdiNfmus/2yLMJR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HnA5LFj+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HnA5LFj+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5065C3277B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 02:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720405582;
	bh=el38qJ1ooeokQ1VlH6jbdsvl3P9IpFXPJII4Yud653M=;
	h=To:Subject:From:Date:From;
	b=HnA5LFj+oFH0jAPYoYH4ouuASS4LdKJP6mF0X6dX3Z40cWvHZ5TXgpdhmAvSPAFXd
	 0KxsseVeTp74csGoAOh2RSAMr21BJf4QAVRVnvMr32nRLKd2kwOOiUJux1z/KoDDlj
	 zps7jsbq0IwmD/XrJowM1CU28ZiUqDP0O3HayIP2v46UZHGi0SSj6IC36ySDCSpWkK
	 BsAS98L2bPDd6JKEwDRf5GXoRFSpogWDwJNgNvgqKqCjWvGSJy1gwn6y1FZej8P63L
	 Y8oSCRxWYGcb/x41eZPdnaaOz3aVnLv0mu5KTZ4PnB4wyc4e29UGG7bVu1GSOpNvL9
	 Yrc6nur9AkyPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C84A1C38150
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 02:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172040558279.10727.12268374902246377818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 859407079e2e4f9c75f36b57bfd8e728c5038efdf9c956bad4f36702610b2209
Date: Mon, 08 Jul 2024 02:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720405582
