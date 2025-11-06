Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0178222A817
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762439394; cv=none; b=Dl+4hukWqM/u+Bvdmo3r21TNcccFlLdKWZ6tp/mhguVgsiM8P7x5Ig8Unm0gmPxYtn0AmbRHSoQ7qLDosouXBkWbl7qTtOPmgKjRokIR6L40Cd1WmE65YdXtQKEpDvxLiKtUZOJG1utLblT3o49umaqNZWpHLRmpqZmLC4pX8G8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762439394; c=relaxed/simple;
	bh=AU/OpkGo1m7RFSm7d/yz5QO6bs+oUMrgTpNMvlo2kQU=;
	h=To:Subject:From:Message-Id:Date; b=kJaf/aaY3BsU5zK/ucf6m55eVJb9k1uzzKH0au4hn4yFvxsOykvgaFMk4qxVNI9tR5Jh3VGG1JZ42KhrEcIvu07Kxxtbku1CbBGcOU5GxCMobBr06/YKnbNHVno5xolqn3zq6D1wlAgHmM23Q1TKPuJfRuCtBQgFzU7zpybJLpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPVsz9nK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPVsz9nK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFDDC116C6
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762439393;
	bh=AU/OpkGo1m7RFSm7d/yz5QO6bs+oUMrgTpNMvlo2kQU=;
	h=To:Subject:From:Date:From;
	b=IPVsz9nK63d0o8m9M8Ovu2ohkjpgISKW3Lu/V2cGPAXsVCd+gukSBQzUXwbjxJJ8v
	 RnhF0chnRtRtqlCBze6yBl9/WzBMNRHGnxOla5SXqxeuWa8ArwrVvnb+C4goM709Yt
	 wRRr74sgVdJ6DqFwefzDYdSRv/30eW0DE9nmTlRgDMSAqiw4RyPJJJHWNf143AUR+9
	 n+4BlM6bmC+XD9lZakN8m7DO6b+nDelFpdGLk/v1kccx8ulQrwvp/TmJQbkfoem2rv
	 SUMORiX1A3KIb2EBvdLDNH0fWxcxIaoSIpqDClPYiOhtZ3UBgkG024g/SOOC6zxU9q
	 MyNKZQE7kGt4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9043ACCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176243939358.16101.360760900409208545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f421ed69ea7b7e96c3326ab66aec3134fdfd841a8e7c46a83b4f9d63f386764
Date: Thu, 06 Nov 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762439393
