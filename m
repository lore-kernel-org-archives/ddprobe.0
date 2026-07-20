Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8B31FE451
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 04:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784522314; cv=none; b=fnHyBh2TLqWrtDZgGT6hbXkaII9XkH6/tpBEvJOB1Q0oFqJOVLpVfHGMm+b1cdtHUSRuitSdT1ZarALan/oxd3nSdcUyidgC+jQU6nuNYHE8hBhe2rritmtW/FqKvSUpT4CcyWDOdHU6d8Md2iWVUA8nTpoXRdYV0AQ9EXjy0To=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784522314; c=relaxed/simple;
	bh=nDuWLFQUAnxj0OqrdQNZ0ik11FzIyuItf+wFNvMyK2s=;
	h=To:Subject:From:Message-Id:Date; b=IEDPELKGjcxfAdD49W18ptxYbWF4ljSbsRanUTz6xbddgP+YjHbLCtYbiDrwvT+Ehfyr9z/rs5LOJw7JUv2wtZ1cVbWlsLSX1LI97VOo9d67V9OynD4AtlXfhwYpCbrWOOSWf4b8bEAqeIT3HCSr/copicK/bCbpscMdnZbnEqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cXiyfHyc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cXiyfHyc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6EDC2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 04:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784522313;
	bh=nDuWLFQUAnxj0OqrdQNZ0ik11FzIyuItf+wFNvMyK2s=;
	h=To:Subject:From:Date:From;
	b=cXiyfHyc9tEUdcCuPZdiDvhlAVd254B4IrKQV8WD51R5o/SEL4Pckourabj/S5aFp
	 FfLIBzuf2rKW/77m4o5ddMaN93l5mcooYbRT6GYoTnrCzIZ+fj0XCt89XWe7kSNm5x
	 eSZnLxKTpSaRxCaVjOSKDEAvjP8wGBMAnDn7GNr5qaJwq8BpPLYF3g0MLKrG5U8tt1
	 fM4rEt3FWWnFYRcjs5SdyM7Tx3TJHezntuM15FoK/SJEgmjbKkRxE8IEF15gOCdLLO
	 gWd91FiPwYHlaMETHFuRJbyqEMdtYG7glYOtUTOfXJGilJklRFMKSUS+0caH0VQTZk
	 kS/v1ZmfSaIOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86CEC4451B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 04:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178452231368.914.14451565488016525125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9c3c5724856b4512805f9885d54f62f40c9c017b2d61ccab5f259b9c82235bb
Date: Mon, 20 Jul 2026 04:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784522313
