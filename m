Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158922CCA0
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 09:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715937743; cv=none; b=HuM3Y4nOxPwon6LPQhBRsNPOU1ugggr8/+2PDOH86LjG7DfQn8sxEWME2S7Omkv+enlMWF7Wsurz+mfLBAK23NV531EWQQ43pKZMPN96ee+6PqlOzABrcB47ie6h57WbmdSG0HHYOChsKrWHrtgU1f7aHni+upfGyQzoOhBKLNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715937743; c=relaxed/simple;
	bh=XNte6qcHw5YPOnVild3i16J3pPmKg9+ClMY90a/c0oM=;
	h=To:Subject:From:Message-Id:Date; b=M5pD+QjtZVPAatOOvEW4WQ4j0+5f7odntCLr0mzOfkXPknqeiWfo5qqGlp37AQhfpRSx+gLnbzCQz4oAB/UoR/0bucI4w2xKmPtY2T8mrZ/p3nUC640DFxjyxFQwrODA3opM2l74XUarPgHsi0e/NlsPy601/o8CCruhfZu78pY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MARU4AqT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MARU4AqT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1394C32782
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 09:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715937742;
	bh=XNte6qcHw5YPOnVild3i16J3pPmKg9+ClMY90a/c0oM=;
	h=To:Subject:From:Date:From;
	b=MARU4AqTcKUz31FhsvRKttcJwqiiJ4+1NwacEv2EZo2JINDMUmA8GQnc72bhwam3e
	 rW/UaHrcvu1NxWLB/w9O/vDwY+Sxxma1hMDUd2NfX5fyRk8fMFxLaSvdcB6J34jy6Y
	 FFM/eY9SFJAvBRqQIIKjBzdj2qCukjZPLHwBfvBAdRrENa5F7v1dr1AqOthWvPSlVU
	 a2024HYWwvVrstdMudkRr3FRx2WKSEtrfGASKnAAdaviVZqMwuu+Do3G/l13PNIHoL
	 P9cGJYAwigJj5LmGbNSfgrP+wARKQY/yXHzY7N7DtmPCb55HCxBdt45odegZNQcjrY
	 0dO5CVEGPJAJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE192C04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 09:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171593774280.17328.15707907993543014011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14bcf3b8eb2dd7cdfbeb4a452c3e5ecd4a2c79dcdc286571a1ffcef20d1cbdd9
Date: Fri, 17 May 2024 09:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715937742
