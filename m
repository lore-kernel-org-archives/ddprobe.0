Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BA46383310
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785585634; cv=none; b=FKzFR/N4yXbuVq5Eq8R/2qv+VlOXzsA/KToqx1QjPaznnMtYJ58bkFesPHbx0Zlgc68WQd80xi11Kx6CXkmwq/H332OTSev1dNoHEUODJHkdu3+4dPEOQj4t5cRvjiRUZ8VymYH7MltN41EPuVfcLFv9a8xs24xifWuj1EZ0xhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785585634; c=relaxed/simple;
	bh=nCrv9Y8ghWmqnHVZAs7gIKUigDGDLmf7+WC8wr1uj0U=;
	h=To:Subject:From:Message-Id:Date; b=NsrdfpCKsKZd6FIwHH/xslouLh22rDdS4qxaD/BNc/h1NV9Hh/o/ayj0F3IjjpWVVZFMyArsbnnkSd46dDafn8Mw1Ymwudsbu7CeacVJao9OoivdxZ1MK1ahL2PMgu5qIR+sklEMWBVJ/oAbA2svk2PHEZP1cY5MbWzu07QeI/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FmsiaUVw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FmsiaUVw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2728C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785585633;
	bh=nCrv9Y8ghWmqnHVZAs7gIKUigDGDLmf7+WC8wr1uj0U=;
	h=To:Subject:From:Date:From;
	b=FmsiaUVw/OxDPE/GylsTTugegC5mpMmr4XMgzSQsD/djkyDmjM7mvkpeRNTkRWAQG
	 NIeOVbeI3Kbi0YPLEuMZcAHFlQfiLNGCmzg99zVRUE/fZyNVtZzQiTyYgiMBn0TjdK
	 Kn6yqO7JBB5loc0w2yofEOvF2wvqAGdmHyMGJP8sJk5fEvzd3g8NUXmBvLbyzSJNkc
	 1x3z6GypsThGIX+/SN9D5ZFmJYVUSYZ7pagL+5SDsd7IOeSNxzlg66zo9vgr5FW43z
	 YKZVAnnrIzU8h2OfQq1Hlh1vMST6ynT4TL8uMn+o8d/ca1z1inuEJgNYQ2+4Q4YVW0
	 c4FJCYdxXrgpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1809C55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178558563369.19817.1329346644165977771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60913d3f879770689dd4c4417cf9ec0a6a324d4b74eef087fa4bc5261e4a5de8
Date: Sat, 01 Aug 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785585633
