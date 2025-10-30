Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D1121ABAC
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761795594; cv=none; b=Jocz3Nby4mDIF2IIJ13Ogmg5VstE32+T7/dFfu/wp6gjSGnyHSZbaFA9eX0Gm6YtKiQF3L6mjVyRAMeFblTtjZHMuWwcuUdqVpboXvZlFxoenc6Yd02vHM8W9vrBy0vt1v0uKuSltpw+HFOGvglJokvfhcjXcALFIJ4HoGhHQWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761795594; c=relaxed/simple;
	bh=Wf8HmXGnjvbhrSCIl4vVhWA3iN/WoC/0ZirTOyqvj2U=;
	h=To:Subject:From:Message-Id:Date; b=g2j74ZZ2guGovQqf97KWa2bWNiX4dDRFpay7XJuIm15DKFw7b8paP0Hu+y1q38kRQfxjL9nx2uIoGA48lvXDoMTDXTPd6g9jdndGv8FlaaPb5O7TTv5jvz9jHEmaK6StSerSnAQn4cj70zdgFCFUDDqVdxqj67TTc+P13SOdHH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcwWlW5n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcwWlW5n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0418C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761795593;
	bh=Wf8HmXGnjvbhrSCIl4vVhWA3iN/WoC/0ZirTOyqvj2U=;
	h=To:Subject:From:Date:From;
	b=gcwWlW5nTaCCGA4brrcAgdp1ju7SfRJ7QQzkanbW6TLDeaJIgKcz7CP9d6BV0nJd/
	 psz/ujMh1lsZK/hvkw4m5RrPlXQJnf1HAGtyQWwzKly9RNtTDkzcsacUKEAg1++wuW
	 YrIos8icQ8tfYweO1bYuj8awU2TRKmzRLk2gfyJtqrsSEXN+kUbisZUE6PJ7cKqr2S
	 VahG/K+eqlSbWpHxpua0UF/aDIOeM2TVMCB2u8r8wGV+eTAKlyF5LtA4IYtT1NYwYs
	 vc1cmA2WJXEigeayUx2a2/Y34Cnqird3ejC0W7PSKCfcjCO0PaFDf0aMV1neafJkPt
	 Sic3wFDOjmE5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C5CCCF9EB
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176179559358.8153.4732291586206897019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05892d4a933f0435620054dd75c308f14c316cfc89b42a1ec6d93f8653ab4819
Date: Thu, 30 Oct 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761795593
