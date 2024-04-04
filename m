Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D58AD6F06B
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712274496; cv=none; b=UkR9kZdhT3BWE+Qmum9dmSNUDe6MKzCnzdIeW5bijZn4RAhVp6B3k38nn3NPv/q3ak3Xy+9cbmWfvGai5aCwmo0ejom6+zTarpgur+64p3MJ/Cs+QucltfM3nyJfUYAxnQgAgvhIZP6YQJW6+myWsMyfBrecS/d16xE19+NsL/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712274496; c=relaxed/simple;
	bh=7nsPp0gsShjNRYrEMPJGO6vGILSRhQ/WnAy/PIWRTF0=;
	h=To:Subject:From:Message-Id:Date; b=G1iyhISuKURmSaHIOZtWEAox2JaJ2phdCfwA/T+ANmgmnld/MGuuWAhBFg+WZv3/80jSW3YGx+9Bsr0h4l6RtJm1ypetSCZLny07uSKJLYuF4v4qvrUjcMYLJV//LTcfYX2FJKQUfczd3idUAM6L+dcpRK2z9jPYgPfcJJgMFlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dgu2Tpow; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dgu2Tpow"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78DB5C433C7
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712274496;
	bh=7nsPp0gsShjNRYrEMPJGO6vGILSRhQ/WnAy/PIWRTF0=;
	h=To:Subject:From:Date:From;
	b=Dgu2Tpow6YFg0wgPp457ACHarcMxddUyjR4ebllywlPpY/podjbEtUVUZ48MKtmrz
	 YQNjz26FvWk0C38zg61TiuoLOi4LoMBr/LVrdjdB3RBntEnqHky33DCTK6wfPDkAyp
	 +bqQHOVnU4cTIYAX3mP/Q1PDbmA3ZRrNWVDcPnuJ2byuLN/YLDNw9MVzqOjUZNvfTB
	 OBR0xXxuOyvH7IOH85t+4HEDWW4CZDFecbLkfgcRdm7XHDwHOg1HzbkaEAgwlkMIOL
	 fJGrPJj/N2s3MUxtnU+xM51m+UEvehXp6+VRI4+6BEPtilpzb6X2wGYQtpOI0fP8i/
	 /kHrBRtco9i3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 668D4CD1292
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171227449638.14990.5616957666309621812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fe0a4bf92959f98b788d8a60f8cd4b41bb36b5df3a5c323e54f9616e1a4d147
Date: Thu, 04 Apr 2024 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712274496
