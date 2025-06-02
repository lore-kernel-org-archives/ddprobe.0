Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD76623CE
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748895593; cv=none; b=kMFPpO1k5gQqT72PrvX2m0G1PqKDed8NOi3L1uEQkK41L5gsny97/4CHb0B2ECjrfC+Vvi/nvkd0CRAnPRNxdsGVh3fHXkSSaFEaKZtVNAYAfTBKyCvWWqqg/2tuGRZQAW497rguhOZv0ebCN92aqPxvFEBctIoGltkT0/qB7fY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748895593; c=relaxed/simple;
	bh=sok2wEv82ZZYNGu+Vwh+TJeDF3y7EzvH3B/mCnJx15g=;
	h=To:Subject:From:Message-Id:Date; b=E0YjrhlLbJsvLfBAEibvkY9l1eVqkdjByMnoYtzCEUXsgYuBRd1ODjUKls/E/kWWWNbwtNiaSNcACsqR6d7YFREpTglo/q9aMtqOSJWOIIxUqGUmaguVlKSrwD+/HA8iAePiYLei7x8QpcZzCtw1qgOl+INXqUoWmwRcR6/qnzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kmdqAeRW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kmdqAeRW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3B5C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748895593;
	bh=sok2wEv82ZZYNGu+Vwh+TJeDF3y7EzvH3B/mCnJx15g=;
	h=To:Subject:From:Date:From;
	b=kmdqAeRW3Hdflyp1qmPqI70uj3E3rk6RixW3MxsnyksxTnLFYzBLt7yQhC1z19m73
	 nFC7lxLFLNKU+KenDSyz5nuJHBRK+vPIq3qNxoYdF/08c7fq05p9sGTYxl+YiH0oTM
	 MnIQMhSvqjykIPtLNvkm7fFKjOfs1VaT+cxOSRr3tXbHC2bfQQnQHkPKJowSbp/su2
	 pUsThkBUIB0beUWg7zUIjiV/vtiOuXL1+arLwNYa4cXtMUjvNcpQe4hthF2ltFxRw2
	 FfCjzc2VnqfSPFd67wyHnyBaBBgziaTL8/hHzoBkX866PM5b3ykEPOI0M18QWWp2MQ
	 fLNn3T3UuF8nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952F8C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174889559357.22941.12456663372189734326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84332c89d530ea1e676a878af94ee8d11ee1c00656a621918d6666d52989df41
Date: Mon, 02 Jun 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748895593
