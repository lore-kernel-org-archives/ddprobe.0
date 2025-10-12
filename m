Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D7C2AEE4
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760308194; cv=none; b=jzdn3fAGEIiFebhtod6XpmHU04kS+qVMk5MN2uL6os1br4wJrIqfxFmamwH1vhbI4iEQandi3gtt3BDbb+64y6F+Q9/feVOzqyJhM+8yLqFX7+A8Ro0e7KwFsCbhRWTbVzl3YW6R6iXn4oDzvqMnL/VZLVJaTspSfkD7g48GQ/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760308194; c=relaxed/simple;
	bh=YIsmnqoQUwkWXGN6l81PKaWDUuZckdhVeL2uqfnXBBM=;
	h=To:Subject:From:Message-Id:Date; b=kUtUfaKUyBsjzivWw2GzFiMjc2Q1X+KNMbsqvZZ7owWbh0TpBHmYieY5bfJQRcxynSoeGxWLWlslf+xd6j3V+hJYsPeI8lpmCDjGy9u+14acnjqHNAHpEZ3BMXh4WGLsT6NPvaEDG2WSk9/G2raNsPX9K15aiXOo1rszxIseCd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HYX0Sd5u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HYX0Sd5u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77FAC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760308193;
	bh=YIsmnqoQUwkWXGN6l81PKaWDUuZckdhVeL2uqfnXBBM=;
	h=To:Subject:From:Date:From;
	b=HYX0Sd5u0JNP0TGzLtzDlECz3w5ak1yOSr/4T8IIBUHNpwoSSM98U+N/3RgerIVZi
	 Gu728xCAHD6hP3YPn1twL3ccLdhlVGJyOK4hgoY0qDeZaH9u9ct/RiVu0p64f+/K7l
	 8s48E6O9gnpb52S7uB5wcCaCdSHAisRGbSHL8Ux2qVGJfrB5hya0kmt/L0pYmDMzY1
	 ZDwahg8qkCi/lxPcz1YfWdN2adUP/RQap4KxezFXiC9HwzGvWxMip/gJ2JBdcoYkjP
	 ac5U8CzDcb1kgPMC5kpwyFTfACQ9BWTIJpu2/iKOZkDHSiQ03D5EyXHSR8/Ppf7vTe
	 qMofrDFRqoXkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930B7CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176030819359.1390.3357234571736173224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 484dbb88e85d0453a004b0332b1bd4550d56d32d109e7af00d3a390e82e2790d
Date: Sun, 12 Oct 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760308193
