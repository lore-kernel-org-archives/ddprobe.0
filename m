Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC67248F60
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752500394; cv=none; b=kDkw6X4D53FUjcF1ePo2IelMV94/upTKOytvETE+ekJ9GohjFN3Tpz1BiDyk/3IOI7uXhn1Bqr3lhVTo5xG9xXYJfvuvedzYJLL4vvkgVXfrqP1aklyF4UwZdwb3gupkvV9CuHOX5lQj+hpZt8+FPGZtLmsiJ7QPiVcDvFAugLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752500394; c=relaxed/simple;
	bh=luLyrtQlzl/P4NRp4oled1Sa4sBKZdJakQsGUoHr9SI=;
	h=To:Subject:From:Message-Id:Date; b=lFxb3dgoH94d9L5OD+/rXvQxDTvlFj2VFo/C9XbDASVtrPyubs2x8vbU6lkpAdyTwbU1FA1h0ErPnyMvlIw8G2yrpstkvqh9ub6xRXCX2SBgwfb8+zc/PnT2B0TIRvRN9c2lzNLAPR1XxPoedTBvAQVj95V7vgx79OqNbLmao58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YsAcFfIm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YsAcFfIm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE65C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752500393;
	bh=luLyrtQlzl/P4NRp4oled1Sa4sBKZdJakQsGUoHr9SI=;
	h=To:Subject:From:Date:From;
	b=YsAcFfImbOT3v1Qt7a3Z6FXzW6KveQlMizyHsVLn/VFE5TmOaXkuglF2YQfT84gEh
	 DRXMqbiVRJPshJkfU4GTTbzky2gtrw3DUDpXriqwsorKjeRqAoB07koWt8muae7NSr
	 HOK9Oc+/vUhR9lG3um2iH11n1l7++l+T/vfI4uA8tKfij3LoLwLjJHlgia3dUwncOn
	 C8XOlPO5k7zsjtS0j677Z6SC/IACFxtXx4nYoa1CRwAgD7DH+HPNc7mH2E2QZq3yD3
	 rVPfCJUUFzj8rIuv+XIv/WXWybP2Qi80XYRoaz2Ay6LAQo8x45nrj8Mleg2vHW6zyE
	 DOYkY5JfxZs0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB6BC83F1B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175250039357.13830.10094860278057780662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96e0d06b0b5117553995141ed9e6f6aaa886f7ee919011007e6ffaddea097846
Date: Mon, 14 Jul 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752500393
