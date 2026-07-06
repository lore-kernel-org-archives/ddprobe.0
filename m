Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AAC7435A8C
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 22:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783377514; cv=none; b=IxSkv7llJSPYZKxLI1bJxlpBs8JNHIAq1IC8KR/fAonI4qWuFfHJK6gC5ybGdRhTjo2GqCxZVrcZlecuYDnzDKUkNp3hrcQL/6KpT5d2QhyZQo3/7g8POCewv+/DHEUPtkYgrhv1/gosdDBrcEgdnDF4JwOiTQr3ymC0emWeuio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783377514; c=relaxed/simple;
	bh=SYTdBjB1V5dB5g/uagUSCJ56nBX/EC7jUafatpl8UBY=;
	h=To:Subject:From:Message-Id:Date; b=PjzNdYn/eecsEzmCH95Xf/asM/mEN+mzB1OYyf8HynzJg5C1NXO1YFa6Sg+sFwSXYVDQiqTU8MiFGU8FUwfsYa1WVa3plhvuQL1NkSTGV5IeEbPbyB3SlY9yoXnuhxyG/Rj8OxTW9iSrfWPlZ6swMObMb5XhmkLjtMx+JaX45gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XCrNpRy2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XCrNpRy2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC97CC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 22:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783377513;
	bh=SYTdBjB1V5dB5g/uagUSCJ56nBX/EC7jUafatpl8UBY=;
	h=To:Subject:From:Date:From;
	b=XCrNpRy2/+qouwyR0FOXPTmZUCQGozqMYuZIbUsY9R9H7uJDB+erCeFDOCK6h4OmW
	 CV5fVE8dEwf6J6agHZZ5JGWj94ezye4q2WxhuPMaioYcmEsWaizN7VyYkVfEvS5mBx
	 FoNjregko9/urXskPnkEn/ch0WeJSSRMXEEDEsll08jobKK47JafoG2b7fqDbRgwMU
	 URR0BPQiSwYQ0mY/pnQcskwWeAfxRqA/qPHcYVjExoP+5ctF2f7XccNdgjHYgSGGfA
	 bhNUi+Yx6Rtn/ht3Ermio8z52ldrCYC48+CP/pHAv5DE9OtoxCt70uuo1j9x98keb8
	 8APRfjfZonFRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A995FC44500
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 22:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178337751368.30768.2791945832077577241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 597408d29575ebeb91247787d9296b16f23d37e8e87b47539d64c735bf61cf6f
Date: Mon, 06 Jul 2026 22:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783377513
