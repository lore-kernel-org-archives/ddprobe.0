Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF1416FC5
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756336194; cv=none; b=e1OyIOGStb6x8U7vPKmsNbsXJpofKA8MZr94TZJP+f5kWdm7Z6A1rzVtzhtHILGYbxVWtwUNhEdxQU1XWmy3mF8l0/TJp0r2WhFcQWOb+zQXkV6U00ZNIpe1HtgujQFRKIzVgwQEhtBzHw8N8rLlRqxJmrOTxNVkY7J9TCBRbww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756336194; c=relaxed/simple;
	bh=C5oTQ4YdWO3Yg2eiviKKl4G0lZwSfJQP3nsnTRmxlnk=;
	h=To:Subject:From:Message-Id:Date; b=F75NJ+mMku4DACxQcHAXzbGyRjEeMyi+XHFRCBUMIKEMYXsAC3EbxN5S3y55V9B6enWLbzBuI1LTxDaAYQVkhneOLFLczV/FPtPlXXqHwUbS6vDrDzwSg6nhKRj7FB/uHNRWoPze4R80aANZP/SNxiCa3yRX/i+o2zEvFRxCp+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nDm0JT5B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nDm0JT5B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A367CC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756336193;
	bh=C5oTQ4YdWO3Yg2eiviKKl4G0lZwSfJQP3nsnTRmxlnk=;
	h=To:Subject:From:Date:From;
	b=nDm0JT5BHNmSPDJl2IgAvmXPZPPggb6A5Vhl60cxvAiAJ3xrwA/ykn0aEk1+VXOd1
	 IdWm3kERzAhs/eCYSSpiU25UNsoHUCJaP2Di6+3/xQcbyT+c2Fg9Gbiw45+bjiHNYO
	 sQXe+/zc6V5wGQ8bbBPIIWvCHAlg+bIHWhNCPc33CUkQ1RnP2TItA782WMaYcM+yE5
	 tyZHDmaE80PiZtYTut43gkjz9ehIHK19qBoE195UCLwly/l0ODBSBKylqrKLfz01Q/
	 N6ArSu9xpTiVOvGo74zceeLaW9tZfztbLkc3rsPNiiuE/8DjpLSrOfhXWRP3l22uab
	 Q9ujqf5uH3IRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9432FCA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175633619357.15944.16622585904022178240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35347b40df58845a332a5bb0dce7ab9ee237429f14f587e534ece2f71a06dfa8
Date: Wed, 27 Aug 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756336193
