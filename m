Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8C4A2031D
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705441096; cv=none; b=KnsKr0CuIww9/p2JnalqmS2qHiFbFDe2tYU0hXp6awv1kt/PG/HYqi3HmPOVXmQhfCabSamovLtnCiOp6B8N9X4mxDrJvCHcJGJEe935+mwv45GrJB0TNQ4QzQ+iqoVgO1xoAg9RgmN5vx+hiwlt59/eAFmPzpauSJSpI9WaDII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705441096; c=relaxed/simple;
	bh=si0NyO6Y/9ElfUew9mVlhfBBxUzhrw/Rk2pOqLgQcwg=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=h9GPxaTKzcXBj+4PGvjsxRsLRGZceK8AFOJwSLqoSbY9BN3xdHDdE0IiGR2nkU7FL0pAdj6kux2o0uj1mHr3FNtR1LZtnRsFM5wwPVwJC5EB83VqCv3Hp3wAg5dJvz9AcID2SAgRKE31cOAuZxhCUGmMoR2jrl8rAFYU2UIkvT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DEotpp/2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DEotpp/2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82AC6C433F1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705441096;
	bh=si0NyO6Y/9ElfUew9mVlhfBBxUzhrw/Rk2pOqLgQcwg=;
	h=To:Subject:From:Date:From;
	b=DEotpp/2uWGb6bUOG2Bal64ymrFADZS+mfMPoWphklj0mLBvQwZ1zXY52oIhp8sar
	 VsFrGBvuNDMqvBzyNUIHjVu8eyac9sf2mXWSVbEPeMer0PfSjX1rKY4u3VikRUi8jp
	 MMboyGPdfrBD8wpFEh9i5X0XsxVFFnsiCm42/aWSSatQ9Ke410A/OPYuVyqYEma0Lm
	 jKFe2riNGHYk7naJ8CnDJGSd8fDG8XjiwbAe37GqiWeLkXGet2S7c3MAiRvcjVSCpf
	 LMREkbBrizkqKEbHZYrBGcitfh5E1wlY9lCs8KHUEViEgRmHuLoc1WxtKSa3gRjICO
	 pm1grhqgtx2XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66AAAC47077
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170544109641.18687.9307288576806253804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f35f876eb6fa4bcee0e65f1f44a229ea9a8eaf7837222346a8cce13b10f676a2
Date: Tue, 16 Jan 2024 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705441096
