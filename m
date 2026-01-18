Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2348D500962
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768714434; cv=none; b=bDco4IaGlCV9cCGTxEoGdjptIWLWWhd4eYa65aHGFqGSm+kilUq7nQHvcu5mFkR9S9degThYcanOxiktoYOxGJyiuxgcELVbb9UsW6a7rUVmXm4Xwe5kepFnZX4WPyWH4Klp7qvL+uqDTEGbHfX6cyte6Qgyk4I6hB/KrLtgJyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768714434; c=relaxed/simple;
	bh=hh+bZanwt93yXVmCnThUXbmkZXLr2myAJWgo/HtM/nY=;
	h=To:Subject:From:Message-Id:Date; b=J3azBgdIB1SWnetI+2VJRcoNThhmrD6DF2G5JTV+Y0XLODRdqqBp/nBbh/iMx0juyncHBdn2+OMdib2uIr/7OZU+vncfqKy4oY5VHDtSRq0QNltjBx48qx9WEMu95dk+BAbAhc+kyZVwIiGZByF5AXshk7D4uEXkAaHI/xv27zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=doLgFIjs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="doLgFIjs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11A6C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768714433;
	bh=hh+bZanwt93yXVmCnThUXbmkZXLr2myAJWgo/HtM/nY=;
	h=To:Subject:From:Date:From;
	b=doLgFIjs8eZULevtaQ93PlUO+Eoib4sTGQ1fZfGcsgf7UPRBDcC7LVW/l2fcnzgX9
	 4DizGDA50ZYgQbRn0yQI3Wpe3vDX1hkpP3NvkL+4WdjUNMCxS2Cq0OojH8981f3T7O
	 gqd1GMCSBM9CDu0dNRkU1/PVYQg9BeylmHXopozMKYW1NDyLHr3AAWQ4ro2lai9aiu
	 mMpxBq2DjAYJs78JIOeofAvS73HWGnTWeqRWmrjg1cTHJXCAQa+QNQrnpyWoaUZWT/
	 RlZvZrH1+CEbP5l7fLhldkmsKADWN5OdEVnTYfxewNSndYCxsfPqtazkyM//2k2ORf
	 bBbgmF5vD9WRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB7AD4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176871443358.16911.7855027159945123200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2de2119943580bd6abbd605a0498b3b7b2cd8660b1024df7761bb32db0e299c
Date: Sun, 18 Jan 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768714433
