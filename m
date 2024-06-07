Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE5015CD67
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 14:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717769243; cv=none; b=DphuVik55R+hwpNmxreEmWhPj6PJQtbSdUI06Klq4h0Libc6yW6LNsPVRPp1UW9kP+teEnIx0HrdarDFHL9l9RtMq6KaorAwwCbkpx/jfN2VWFFnOxmF/F2GPG+7E8Z55Cf2O/YIDHGGGs6JbfMjh0f5GG07HH+zFU4PhbJcabo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717769243; c=relaxed/simple;
	bh=OeaOXFmEJjym2lgG/Qj5S8LEgM573IGasZSSTaEXwTU=;
	h=To:Subject:From:Message-Id:Date; b=rFhXl+N2UFLQMKQdc5rXHBOi+XO66ydxnow+MdDNlo4MicmjHLhwGShQqAcgbQJWfhBTmUlaGTxNj0BNCAfVWB6oxk9nK04iPD/hv8OButWigiuMRy4GYO5Wal2+jjcj9Jp5Qxos5weeVqte8hJJNoQjZjNsFTaYZTR3msC+OKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+S/EQia; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+S/EQia"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4D10C32786
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 14:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717769242;
	bh=OeaOXFmEJjym2lgG/Qj5S8LEgM573IGasZSSTaEXwTU=;
	h=To:Subject:From:Date:From;
	b=t+S/EQia4nHIQclZLBiFnI3sff7ApbK5u0waer8OXMBGQE7JTXL2W+nZ/l+eXSYAd
	 oNbQmM7Cnd8Jm7oxWoeC7g9j6AkM2SQMI6TjtG9bSFrK2jrkS7qR2xhxGDxEMqCN1+
	 lfCEnh3PsOW2vK2h08Zvexhd3K54VBDXUWKrRFBpWn3ZtGpIZEZXcdBaqz2bVNfLrq
	 wSJRearNxU68XtAuuDBBf0JJqWrPPHi1R8d1Zasi+H+BzW//fZ2XeRlLL5HZy8i/4R
	 9/ID64fKO3f0eoK3C2TJDyssSbCoGcsykDSP0FrPV9VHvaf3imjOvyRxc291k6Tp3b
	 jthH3M3L8JGMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB1AAC27C6F
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 14:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171776924281.29178.8543155689996443384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51ff18ed5824aff1c5d8f25466b631a289781d01b3ae67b03987da24d3d3f7d3
Date: Fri, 07 Jun 2024 14:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717769242
