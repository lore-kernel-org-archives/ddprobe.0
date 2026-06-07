Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355084207A
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 19:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780859074; cv=none; b=VJ4CofY+FRJSha+dbpHamyKNpsskRYTP6x16TEKoYGNcU3jc3w84GgsnKBTbjuC+hI3FUlB+h//7/6i/ASiLZ3/rImcEK9GjV/YSqV6qETG3YSaiNMZlO2cn/3iti8CkAGZ+7asXCh52NMTBTQL1ZwL5yrZ1/fKIXOifJotqgRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780859074; c=relaxed/simple;
	bh=ERNv5Hyr38FL3arPnRebEhOTQyg8ovXrrTPP7dd0L9Y=;
	h=To:Subject:From:Message-Id:Date; b=Y3Wix0wyUMUgqQrSFkOxK12dTtkKVQzuiECAUVeKguGQQDy80aDpfHwh6tl8fVDe5DpwXJFL+xZekCZ4KsswmQc2o0dWUnv4Jqqjokp0wu5n0oBUMublUYIuL18k7AvBShtzGGXqwifA0LLwUHKzVwe9vUpzJ4kyOPoYY+STP88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LbVtjAjV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LbVtjAjV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6E3BC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 19:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780859073;
	bh=ERNv5Hyr38FL3arPnRebEhOTQyg8ovXrrTPP7dd0L9Y=;
	h=To:Subject:From:Date:From;
	b=LbVtjAjVa14VbhLfhkMTELKOKNaG2795n6E1J7dBC+evs/Xbm526/Vu8yFH1GKCp9
	 JhCtQydlBvSk0Fs1oxSc5mMasKemfiYDoQ1S7XHhMrQbn2xmfC3em+7swUpy/0CNCD
	 0nLmLPHxjU81p/e/WyxjsjbTmpQhXm2Zjx+gsnJhszYgStkd4TX6pEsg6ez2VVOriR
	 JkapGxo3AGXOOhiWbKcCAqUaek0xsNx0pFwUEUSzwodK+umwc0TvkCxBfM07ixDKv9
	 gkDCXMIBqIioKqqMOEqqxrmrbvBL+gBnkgqqxDtxEvZr19YsuF4KfoKY9h4XKxYcW+
	 yXdNPzSBerY5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF579CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 19:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178085907368.11247.17204126833878182282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ab302c54faf5aeff3b85094720b4dbf1ecf46fb30414bef188943a414428c6f
Date: Sun, 07 Jun 2026 19:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780859073
