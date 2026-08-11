Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BCB7385D60
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786411834; cv=none; b=faq+qT/YbhYatOoujUgHrd3ZT+aCKl9/gIkNz/5zg+bDsB7kxBrz020UN0zzGk0YIAc6L0bdlFi9bTlAMsqL7VThDI+f9Ps1L3mYoJkci53dXNmnR31M7o8e7BHBNykSvbaGqv089zb7Gn8NMq2Hf/gZMGPpkbp+8W9/a2tLJjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786411834; c=relaxed/simple;
	bh=4ej9EEKB2ChvohqxPy6T/8IwfxVG25PdL+68MjuBIXo=;
	h=To:Subject:From:Message-Id:Date; b=LOR/IfQF4Idq62tpf6CSjNMU8g3dy01Y3iDqky1Hn/FM6+viFEAqxcQm4gHzDg5h928E/RMAyvFirHH0HV24Ay0awXv6rJTFBhyYqTyI1V3BruM6KMUV1evSVneWnGl5l1syj2LTpTJmsiyMCEHeQfZZVC6jnZdt6kKkH1NAlO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AB5i5jO2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AB5i5jO2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A8EC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786411833;
	bh=4ej9EEKB2ChvohqxPy6T/8IwfxVG25PdL+68MjuBIXo=;
	h=To:Subject:From:Date:From;
	b=AB5i5jO2YzMMYdRDcY5PVM5eSDgbMK9Ig0ktgE/O7yLVH9wHqdPfKExIxCzunnWF2
	 WqmmHGp73a14gsBtlea/ZrOpAkgdghg7FMouTazdX6z1VLUB8NgXotb09zoDKQHct0
	 0vh3Q3pnoy7hWwn3ULVq65qerT2fwau/siJ2sIUrzuD7l3jkgWxMyEGY8S81gWVIHN
	 IW7coMgEzw09EvdAsorp+gR4EQmJXADiqCcPRSzE/DB8TpKc/M17W1RRbYsAyOpkhO
	 BkDb8845RQ+8ngNaSb3pxIfcHOepSf5DLwGpIC/dnf9olArFEy0VCSOd7WbcY1zMLd
	 SB0+5ReGL1Htg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC010C5AD7B
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178641183368.23491.11288228378803501832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34d843dda7a1f1935830f2535a69c303f7fcb6d50a0de454db515f85dae1bd7d
Date: Tue, 11 Aug 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786411833
