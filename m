Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B234192D9D
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742068195; cv=none; b=Aim2ot4uQWrjU18xp8xiWIpXqU5oO873WBcK8suIYZEfM7SunYzfJKUA1f83LYVNS4HnYDFVX1HWAkpDrxeWWvNjFaIWJv+4RU6LiqwKOM8xX4tQ9H70MPkt0iE2y66ZQzeWHnATxBUR+XSvJstibf5O3bD1F8ILDfpzWsrTEQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742068195; c=relaxed/simple;
	bh=Z6YDM8XGsd6r5JKIUQ/0cOY+gJp4oD44mcfkLxfq+Gc=;
	h=To:Subject:From:Message-Id:Date; b=PsyxH2H5ScktmMsydG1JS25EZetIZapMyQ+Xv/WKtxrodvWxc2Gmh8mZhiRu36pHD7I/nui2qMOz2ztg5NVjtTYlc97CiKhC1+mk0OC2+5vJRZZLrT6/cGpgzEksnjPoU22Ik6uWJjFtfsYXtEPn+jGb7AdEKvN3FtWLXS/K9vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R9cbHDwI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9cbHDwI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1B9C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742068193;
	bh=Z6YDM8XGsd6r5JKIUQ/0cOY+gJp4oD44mcfkLxfq+Gc=;
	h=To:Subject:From:Date:From;
	b=R9cbHDwIz3/2oSGogq92+WPDMPuSqKLKibKll1iQMaX2V1KDiH592y+nplTk55Ccq
	 HKiaONzDJpxuzNO30wvgKULMG2FgblpUAQfJqRnEn1ALslZt9TeElHHNZuqoIOowmA
	 V+U6AqDcYb3MWqSE6iWmCi5Wv1YQw+nDXXCqnP0j1JalgqBApJ6wCDFMdfYIFL1rrS
	 puwZJsdpDedEOD2zUJQMb/3XzuvN7XiMTIinZUI6fy+Pc3xL7tiD8DmTh0dX9DXNKN
	 lhZ2KWKgdvv6R+4Eodm3XgsmGFy031NSnZ2rD3U4OpeDkhfCAsl+zU03jid9AhsoZm
	 QwFPEeiH3Ntlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D521C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174206819360.6333.16647920626184242966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f3e1420303fe3c24d9b91f3890a46c383dc71e4a1274753fc2c1d824dbe28a2
Date: Sat, 15 Mar 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742068193
