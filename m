Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476303C6BA
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743491994; cv=none; b=VCryZEMKvrbV52KbXS7l1UNY9wHexNUqIaRW2f8iQdJ3mI015aihJ9HvgmteAmnhQRXVrHfT3usdSKus8E+xpXVlbLG+QJ5OlmWCOTL3VJQLkV1fwn5/aVFGMskDDXUsVGQFKgvkUIAJ4HHZ+tBflqXiGjPJksZBRAUIuUS8o6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743491994; c=relaxed/simple;
	bh=H15/J+u6khcio8r8NdPyEg211wADtMlfb+92+PiuxQI=;
	h=To:Subject:From:Message-Id:Date; b=cqWHdRkbFjkyrW7/gsdepMFmqi1VACIEfmAUYpMmSzbvfPZ2MTH3qd/7cELAqHaqgRYswsKgNMSVHUFqJYNCzWmbaVDlLYz9m0jOTAf9sWUnAx8DLb6sYxkqGhViB3vBue1VsTWoC2994xKYlA8ptq1uE8X1+QMney6SEYnrbjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HtHajj4p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HtHajj4p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7B6C4CEE8
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743491993;
	bh=H15/J+u6khcio8r8NdPyEg211wADtMlfb+92+PiuxQI=;
	h=To:Subject:From:Date:From;
	b=HtHajj4pD0+hyLQqK4IxYTznXbZ2imbidudAUgHOuFKnEQ2bIxTfvzl5LzCtk2jNR
	 A+92+mzSuO+VlhAfanWBR368xybM3oBHeq6qmFahhxaJoA6NxAUHBXuh37AtECg1Vs
	 AQmC8ASjTuwjzJhdNKZgXlfjUl3sJzSCVctaaOL3SUkhInl77pvjPceocoCi9WOIKs
	 mdpbukbilFLb51pnCzkyyyC0hgX83E5iSx/0T0y0CfBKpVh2Mx43CgGmEmUip0ufRt
	 HswxylrDVEctkCYkB6m3wZdgnxsdHnr0YKgFWi0iL+Ks54H2btDf/E+Q0jXPgI4rsw
	 dxbeg1Jr4+t2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964E2C36008
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174349199360.12356.10499078309836005510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 661c874e7ef1f8bdead35c6b9e0f3461acac7f719f0f363adee6719c46567d13
Date: Tue, 01 Apr 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743491993
