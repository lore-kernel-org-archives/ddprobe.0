Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336C91F4E4F
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755941394; cv=none; b=fYp7JIty4RM0wtoCyhTBKnonNmEAwbtt7/Srcx3+q22hEm9hmO8FRyY860u5I8rHSVcaLSRw/zk8BMw2S/OhWlnDRAgbxfa2yx+QSdCrxWgZBhAmAgcmSVKAXtkEgkW2kWlZWgIuBBURZl3Tthbr4Tp7yDbX7Ji7A4egJxrNgRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755941394; c=relaxed/simple;
	bh=9c7t8FH1Cmc2KNV+Y5EJi+u6a4D9n4x9z21WgL1Fdbs=;
	h=To:Subject:From:Message-Id:Date; b=Jx830C0u/W+2UxtmdCfPw9rBpn/+AbvQ5uq/zPiOiEDuLFqNwMZg5fcLbZ6SKYSSAnnLlM5j9ZH43ohuadSbZTzw/m6+1n2yb3xJprPrlLbhSHhKFXbNEBtK8CJ/1BIgorpeAhuU/aSSJK4JqFVz7rD5L2RoyTeDikwP28u4DPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HGn7+L/g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HGn7+L/g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EC4C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755941393;
	bh=9c7t8FH1Cmc2KNV+Y5EJi+u6a4D9n4x9z21WgL1Fdbs=;
	h=To:Subject:From:Date:From;
	b=HGn7+L/gBlNKrjpV+Lwf4CXhCB4tcom9ZanjZkWPFuxxzOrhPTt8PZanyx+2mjkwl
	 NPj1c4gh90F4WPbLvADzabgimD8XuFaGXmN05ma3P72HBLliTXIgXcH8VJ2wCZIp8u
	 NTUsMONNaOiR7aDG0N4qXDvdDJfEBqqcKbM6vrbQjITzX16KbzokA8Png0Dz/ioucA
	 C9M69krloo9IuCokAGv5aQ5QH1xrokM16CTxjxV4PdkorlWdFB2ggkWXU1J3Bw9CCY
	 f8NebPwHkh9X/g5adHx/IkM8ZLqSgV6BhSj8qsZAb7d4msuXwsIq6OGvG49OIVb+Es
	 HoKOwVdoGCG5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BFECA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175594139358.20206.1390931079667794477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45494924d1024ea7a2a69c87e5a552261a4ea5433f4d8a004c8dab2e7f97c572
Date: Sat, 23 Aug 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755941393
