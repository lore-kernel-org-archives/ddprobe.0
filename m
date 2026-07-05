Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07240175A93
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 01:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783214914; cv=none; b=q+W6es0PvtPFnSHFyE+T3hD/yaicQXrMCmw7bdz7buQ3bmVemAWQRV1ptLVec9Zf07t+ZKdVv4OaH3XDGupo3i9BOfZoAkraCm+BlhHnHw2s/zzsjEZZJLnTHONATD4PAnirrTvrKGAlPi0i3aWF/XsoIGRw7V4+Hww9FL5XR8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783214914; c=relaxed/simple;
	bh=BOsUcbTkTjn+ViHGM6Dj7vimpt1nrye+CP9OKqD4fXw=;
	h=To:Subject:From:Message-Id:Date; b=es9OXwwcFJTyQHD7fBdeUwunYUN1uNSO+awUU1nkA5RaoarNAAazMXuaJ38TJKOMte6vM1dZKq5tn1Y+yfBAa8LRQowBvKQuKTP+0sUJJ29kgt5bfIDCiU39GpwyxAHcSnpxw3UwY5GpLFwm/sKeVJmTr4k2C+Dz6Ia7iXFeJAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tecMLNA1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tecMLNA1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE3AC2BCC9
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 01:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783214913;
	bh=BOsUcbTkTjn+ViHGM6Dj7vimpt1nrye+CP9OKqD4fXw=;
	h=To:Subject:From:Date:From;
	b=tecMLNA1e3Altdnj1V+81dl2IYKPTKAJdoZkmIb6phNWCP8EmikkjEA5OFAgf+KOG
	 2pHlSDrziqzDKTn/ddpX1upDqW9/doboedNdxByLSZ6a24jPSDmpKlJeuBIOSzSpCs
	 wjMD+cxqK8AcWnbSfaapXLjvc1y9kifv/88JRX8btQwti0FlbGqWywafrW6HSIdC3z
	 8SUvUhgqVtXEgY4yw+RPQXzec7XOhuS08y+NrVMC6jsfFMdXznKPn0x/r0ZWUk7KuT
	 FWl7Llo5d3JbF81VFsPI2zqXB5g/Ttn1BUnByy/cRj9pqPQ1RoQuOdYyirxi2vgE4Q
	 Bj5jHAjrIwupA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF28C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 01:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178321491368.23485.6674207048956500587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f899f7a20b5115f8750b1f2a50aea4fb2471203bf648379a88b362a0191fc994
Date: Sun, 05 Jul 2026 01:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783214913
