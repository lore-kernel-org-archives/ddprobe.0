Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3E78834
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773987294; cv=none; b=uqY2ik/3uKtAOE8HRM7KvpJ1vqpSbenrHdqFTwNVTA7FGsH0tmBPT6m16McHk8zjInt3FamMQ1AQB++6LPexTpmgOCsVbxM5NqEYtdcQAqnR+Lkm6BIgYJy0+ELVPUC54W8GKKEdvOfML2MaR6Dn5ZQqNOoo/kZAET7utg3wXZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773987294; c=relaxed/simple;
	bh=/0b1i0I2JK/LJHjFDOq7TbvXip06J3rM1intFb+PQFI=;
	h=To:Subject:From:Message-Id:Date; b=h8IZ4JRheS5RQnX7dtY+6yVx+My1Hsc+Wx9yU8jDQifhuhWVlB7QclEuIEjdTM4fDqEWISPmi8X7XX6A9pvm3PPiNlUnmcQck9HrkJvtAJmGuKyTuLqF1PsbqVifX11p1yOgQ8BNhVDAbwvW9B86tubjuqSVzH0G11ugFVtvQmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sE0SP87t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sE0SP87t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A385AC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773987293;
	bh=/0b1i0I2JK/LJHjFDOq7TbvXip06J3rM1intFb+PQFI=;
	h=To:Subject:From:Date:From;
	b=sE0SP87tq1wcufy6fHn18mluRiXs6gg553ylUVCzRcAOatqJjY8etoGAjqU7lsYFK
	 WWMTi6+2q5/nQoJysRs1OxV/Kcxghl9phiZKvTFtnXKCq41vOWgg0QdwVZIAEs3krK
	 EFQhKohivCMP53cHS0PTSJobPhqN5uMRuO3cJ6o4hFI47x6ybiyweB7nyJyuzbfqS4
	 SqTBrzKkdYj62vx7u9GXYS//YKzOA/b9c3Z1/UvOtixcqHU4oMnKd/JQT7F6q5ItX2
	 OlflgFRJQwJuvHvmlxy07bBiouI0Spg0/gTCDSM4ML5Ja2NXxBErz6+PJ/+wuk4/Vg
	 JCjJ54vpeWkvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B2D1093177
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177398729358.12000.18173393164545631506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ac7a2660fcef3eb4f21b1ea16e96837815f66f21112a42aef9009973bbfc2aa
Date: Fri, 20 Mar 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773987293
