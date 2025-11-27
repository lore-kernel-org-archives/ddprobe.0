Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9457219A7A
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 13:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764248573; cv=none; b=twiou19mW+Zb3IdP5bjBQobaQ0q+4mgrXuB9zSPrHd/luWOFJohh/4V8f5O9jyrDufpF62hUcEtwE+w0KDiX+lch2l48EGNjlbkk/NyKp3mARFMtAdLpELUEuQEvl7PJn28rSmTViHy1mqKL8s1hbjW8UUHPLHLqJoFj8fJSsyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764248573; c=relaxed/simple;
	bh=6KAktioXE5zRdPTKUzkd3ccHRQ7/TFIbYptt2pbB5Tg=;
	h=To:Subject:From:Message-Id:Date; b=bpAtSgpZV3hkLAXxQBGK0VY65/monu9SEmWkdThT/kt5FEXZLzVbaUIVQP0bviDJqto9LpWIS7K0tI4rJGkBZKDFHePEvqJTvD64/MiMz7AI12W2BDShtb1aE90cM7mbnygdAb6YwcdewayRa15qGq3yaAOoeyTwLQ5N1vzeWCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rUJJR5Or; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rUJJR5Or"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAD47C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 13:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764248573;
	bh=6KAktioXE5zRdPTKUzkd3ccHRQ7/TFIbYptt2pbB5Tg=;
	h=To:Subject:From:Date:From;
	b=rUJJR5OrZKp+8lFM/8pWMrBFiR4rclFGhI54CwsCuPiw9QVEDDqrn+jaW+uBgWxHG
	 N60/aFm8+naT54Hz9b70Du/HAQXuy4QYBpvMO4uSCRUbgclHV4DCLIUGYKB3FfGd5a
	 YkFpL7GSVbcK6XMX5U2vrPQy90+uK176bRdvXEVQYdW5fCED7opbOHONFI30gSLH2g
	 724f+ib3+3p7ioUoEF5yo+XmMNdH9LcqFu1lcFKxScx/ckG9e95ahA3ux4oHer1vVM
	 Cf72dnEnKSVujmTKxskE09Eox2NqcvgWyu9qMnVM8G4gefMe6Nx3+dPQobBfKwCfRR
	 ZHq8P7nr21bEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA34ED11183
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 13:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176424857368.32573.12735335762892000288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ee40433470e22f10f589bdda98bdbf4dd51a57fd2d46d18baa73436973f645c
Date: Thu, 27 Nov 2025 13:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764248573
