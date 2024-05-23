Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46ADC1CFBE
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 17:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716485003; cv=none; b=OYKP20rNt2XmA0KSUZ5IWvz0LwcYOV7cH0SbsPT+sc4+a0kUCCpngICiE6myJfzlpwZ4NI4Fs1UCs9SuJdIIeI0P7qFjiNRPu3ptrZaVmflwjtQ9dCADT+80a4r3fRIUj3DFYDqyV3xVmUAypkrWtmNbhvyObAwge1uOu5Vi59M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716485003; c=relaxed/simple;
	bh=eYupG6yMntMWAl+IRZfSZROoKaZ927vXbCRYySLoFQ8=;
	h=To:Subject:From:Message-Id:Date; b=p9lBeF/l4opcWmE49uCSbSUtdCKegr3XMubYv/Vfl1s9riUsgX6Ovn7eCyIflHjdmZAB220c6q0sOHDvnDfLNvHzyJ5apCR1bPHlxhPRPLtpU96PAKqNhpy72nGl+4oj2fB8skjrV+ZOSuiBOhGC7j6zWt60ceXM212CjL79UIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N4Cszrji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N4Cszrji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0D74C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 17:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716485002;
	bh=eYupG6yMntMWAl+IRZfSZROoKaZ927vXbCRYySLoFQ8=;
	h=To:Subject:From:Date:From;
	b=N4CszrjiXuoJPmd7o2MW5ZlXYvuYjuoKHUac2Ip7P1Zoya+aoijsgc3IG1BI/lD0n
	 Fmzw59IYQGTuFyVBPWiQUUMSefiq8Qv3yd4ZWZy54XKEDWAlgSlpODKdaBxk4VK4uD
	 VuXO5IObuu0BVBJVBTyfeG0m1vifLbNgXG30bSuoM+hpTcbQfoPHCF7AxOukNeDBx6
	 YZR6BFaxSN6FTfrTRqkDVwXKRvgcK1umTEbvooRWQX1K34EsBibNfXoviDYMsgf04/
	 PkZ2srf/ndh+93gldDfbCNF002NAG26pq6VEPS1uHi0dYaKCg+X5hDbHrwQk95WZTB
	 9rLv+2n/dNFSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB985C25B7C
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 17:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171648500282.16192.6399395824797241514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1beb7ccb4c6fbd97ac46b057a852481288c6e73db58e89183bef9827d3571cdd
Date: Thu, 23 May 2024 17:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716485002
