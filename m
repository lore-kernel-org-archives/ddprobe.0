Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285ED246BD2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756628994; cv=none; b=G86xkYtPkD/IMa37un+9jzNgTe2sWd9MXvjTK7KdF7hQKFfJMjyBRol5BB4i/+obEyjw4XyOCThToxgIYe24QvnaJJxD+lvkgcEa+Portni/N9GGhyAbDbo/hEgIoX28ymnYMR2SjJme6NeCk+zvw3YxU+X+0bTdMHFNU1Q5jc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756628994; c=relaxed/simple;
	bh=G4Qv3yNSJd6hOf+BSoCuz6Ie6BUmBePhzgUhafv6knI=;
	h=To:Subject:From:Message-Id:Date; b=W9cIcfMewdy57zKK/KJD9IVxZWxjiFRBNhI+YmUzj6RBZB2KTQGpIdTgCoMVB7STxzjZ5sjz6qcquuQeQrTXx/JXpArhgeQ2T/QWrtD4UeBFM7HNUAQdp7L3VTZip64nvGBCVTXQsVvkxPKyCZrzDtNFSvnfYTPKcy4F9GfnCTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G15f/gAn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G15f/gAn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A919EC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756628993;
	bh=G4Qv3yNSJd6hOf+BSoCuz6Ie6BUmBePhzgUhafv6knI=;
	h=To:Subject:From:Date:From;
	b=G15f/gAnKYsT8tQGy400KryHB9O1JZceGYv5JUr/McbvF8ntXdrNIy6xgVs9ZHZRO
	 8tYtnj6tjc47Or8fHm22hnCgbLmzjQsVMUAf98gnoF2lHEH0aGfQfATpI5aHY/Wpsg
	 OxuL4o20sWmccbRRN1mCJ1nuMHdK2M0E0Sxy90xH/jtkJ5jpL/8lxYY75IE0eBLuo7
	 oAhz6+m7vlVRM6u//xNZaRx6pG6tky/LWuKzpI/V7ku8NXds8Hd/VIbpYmWX/hLZ5A
	 cBZ8K7SnV5tCu/NrIrdQ2G6yHEPBJ34io9xqjj3VM+uLGjvu2rkP64m0rXNcMOxq1i
	 el0ZT8s2Z/emg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E50CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175662899359.3660.16597564548227529371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a2988832999002a92a012911bf4c5c864905e5d6515ac59d9726b8e38b9e3ec
Date: Sun, 31 Aug 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756628993
