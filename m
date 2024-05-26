Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B4EE1854
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 23:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716765863; cv=none; b=UqkqBDreooTUPnu8ugNG8fNkJSM/N1YhiSzt8Alq3oE5ldZ9Dtnt9hSik7gdm/dhgNmoEj0XfEHg2v2jxq9oBMs7X2Q0DFUKkZ1wCi1Bk8Q75ib+t1EDPMw6Z2T5P2QYxPBeac11yNE0NcBqkcjIf0ulnMKDZRUKiQ5kl8ktHUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716765863; c=relaxed/simple;
	bh=dXh87fFDxmONr0/h3iHx719VWZBFJ7LxrazuV+B5PcE=;
	h=To:Subject:From:Message-Id:Date; b=pS1+Wjr2WPvg++GNKPImUjJnSkJz3pl7QWqI/hz8Napf0H67iR6+OMC6yGC6GQbwM+st3WiILgtklW9zhvB4f31TaB7wszhl8tOVn9fQChah837HQn5uAtC1x9GbCcNc8PPYtD+KeF8/PxWv0+EQoEDEqMH3qt9JPDql7D28TTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oTA2HW2l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oTA2HW2l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD2FBC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 23:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716765862;
	bh=dXh87fFDxmONr0/h3iHx719VWZBFJ7LxrazuV+B5PcE=;
	h=To:Subject:From:Date:From;
	b=oTA2HW2lARTYfeVMHi46zJAzHFMe3bZ8AGLjEREoz7ZZPEq18B0Q0dg9Ng0TP/S/I
	 ZM9sMf+fgKN1GWiPHOikq1l4ay0d1Fu5VAImzW8LaSu7IsKtW352Fi8cwKZ8UuwPOg
	 cywcBmNwHWodT3PO2EZHowKqr5CMEXE8VR3Zx/bqVWaAQQli42nO7woK7cmY9SlAfT
	 TURvsKGj28sTOJNF18ArLwSYCFzptxfbl9cBfWYkWyUZY+fVasUZSEECo8TduinxOL
	 Os1ba+8k9/1g5saHWWNB3CUOpGmf+4tKTgoQZxPa/RD7jQ+HFtKyIQk/MMr+KQ70a6
	 UkXN7gBQyd5pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9A1AC25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 23:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171676586279.21870.5767959473741904168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f2570b5535b24b7df36cd87999b57fc7d99797c570df2cac0a1ce267ef11bda
Date: Sun, 26 May 2024 23:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716765862
