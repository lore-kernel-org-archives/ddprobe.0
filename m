Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3AB15FD13
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737212154; cv=none; b=I8/phWGkWoIalEA9eWhq6B/U3B8r+0rrDKl3n1Ohm9dCdQcPOwgZkwAFOH2XlFwstvsf4CAXavftOs4Dadf1uKzh+uFRk35I9hcML56y2SoUjrlXkDfOl/gEdCZcRxFRyQ7J0zC38ZllK/vO8sJi4s1x0UoKCdpchRtI7eHC3Kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737212154; c=relaxed/simple;
	bh=GAsSzQjeI45N2KdlDzACXvscBkZyL7UEH2Hq3qjk20w=;
	h=To:Subject:From:Message-Id:Date; b=Hb8UqGFk9AsRQG2voejfO9TdKatcf0pL6yb1BrP59QEZmmdDPJkBbRoBQKmaOF3N38KOklfH0F7hYnddb+XHGKAz3Km+nobJCbZi0T+fEZ4C3Nt2cqhUhx57+xFUD661uBSDbgJxOE+acn8EtDyxg6KNVyMRc831Czqwwb7MDOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQ4HxzwG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQ4HxzwG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE41C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737212153;
	bh=GAsSzQjeI45N2KdlDzACXvscBkZyL7UEH2Hq3qjk20w=;
	h=To:Subject:From:Date:From;
	b=kQ4HxzwGBGGrVyDbFgPp0QPNxqdNdust3pF1+9Ge7WThRdmf6cmzS41rL4FsT5nem
	 e3Vx1lc5dCADeSX5dWUmUfmEThATHMTzMjE/UiznGYjnaqZahqFUta2tSICnGEyV+n
	 5BMNk1nXcJ5BgaVu2DbKFpAiLs/t+DQL1nX0XmT7lhiOjluqEFBOMa3OkkJ24+9COP
	 TmITnX2upfUcfLxNLoAqMh/FGgxt8d3hJ/IgqxAajiW0CRNDxTitAKTGYq7JLC/sFg
	 VRopZZs/w6J54tppyukNtK7wljFdkPrQUePKjV0+PJ71xl+GW/f6TlVFJrKMofyTjH
	 cqu50IP09mHMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AEDC02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173721215358.22769.9525151191799946846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15dd056c0c65398a78042446fb98b67151508e74da1ad142ca469cf391eb3646
Date: Sat, 18 Jan 2025 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737212153
