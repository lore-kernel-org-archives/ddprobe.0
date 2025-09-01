Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E29267387
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756726194; cv=none; b=kPeQA6Biwc/HB+iSVSaMnDZwiwWEtB94yfcXq5tJJz+Huf2CFNxRGXdlkT3yVJYIVSbTm+IAgiLZ0Us2yMXWB9xJIAKSTwRiLtbZtbEBe4BjLkURSEcYOsAqc6Hq6/S6gty7w75nDFEENkn9ASk3ZgSJQPB8Z829dBYMx15pHno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756726194; c=relaxed/simple;
	bh=+WyALBckY0xSWM74KTYWx22c8mq6W6ePwx1n3IT0ONM=;
	h=To:Subject:From:Message-Id:Date; b=njYHkHd33RADZJRJ2C0ZPy+SaHp21t2WtVfsAaNrJ+2mb6NyCiKGCyqugrKA933O5/XBy6EbNwJKlWd8tD8yDuJjUEar2B4++Ofs+WGUcJWCylvawXkz6r90MR0icE7O57R1pVrU5HxxhEp0Kd0MJvo9WOxpsZ9M0uq8fMHInUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V8NCyP/j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V8NCyP/j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F35EC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756726193;
	bh=+WyALBckY0xSWM74KTYWx22c8mq6W6ePwx1n3IT0ONM=;
	h=To:Subject:From:Date:From;
	b=V8NCyP/jC7jLSiMaEal9XyoINTRP0Lo6shNW/FiTTzayHtH7kujW6TBI3aiP7tZTI
	 AzmnqaPbqo+uMlQlfed5OXldzrtvGRExGHXKhdCW+ySLs1U3T8FuLShJ6WGyx1+yw3
	 ZhcjzzC7pT5CG2GXFX0TOdBL0mLnViljEyBPtr+iuq+RDPxypm8tLKxlzXD6sUjFtE
	 ap1oCmKT+b3U14B1hsCPVT1+NjUy8PNu6daN3gbc55Wgeoi5izF/gRGxkURmog0Xvo
	 KE8i78E+GodsFRiN5PvDG+Pp5uXHIC6v+EU7C1W/+4rwlRvD2l+cyiPjpYeO1W/0N4
	 QIKAP0E7z2Bjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCF1CA1002
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175672619358.24167.11070335610002606252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77bec57853a6be97edae550dc0eae243830c5d06ffa807bf08ab7eedea01aff8
Date: Mon, 01 Sep 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756726193
