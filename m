Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B81DDDAB
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768868634; cv=none; b=Vw56Kh6TmWkmb8r0GfCxm2ojFKYseXjWIC7STWTbmURCvgLwcftyPj9bXLr7MbrJxH7lzzBDaWSatrD+ZdWYF9v2l4Td10TPCNb0ENmwFiKct7J7USYN/JAwCRd6dEtqSDZAAgChhPL8/Zw4ydgMV19PZJm4KhagC09L7Tgq5nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768868634; c=relaxed/simple;
	bh=vT65kLw8kKkN9sqJgJ7pEV5Ic68nErnNYLvrSZaT30E=;
	h=To:Subject:From:Message-Id:Date; b=nWE9cVUuxdNSKAv+8e7NTUDL5cfJAsLSMPmkljZaRWuU292FpwcGmPA1lj6P5PnXx+5ezXyZtGSxzhaG7Vg6Fz4EbWd6cQsr1wJHL8wN55Xa0qWpUf2upm3lnwlubmgvXxELUOexpgz8JAAKT/xW3q4QBMEb1DS0Qnz40aZs9bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rV71eYGc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rV71eYGc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BB9C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768868633;
	bh=vT65kLw8kKkN9sqJgJ7pEV5Ic68nErnNYLvrSZaT30E=;
	h=To:Subject:From:Date:From;
	b=rV71eYGcGLUGyg0owqMVyN50cXq2RBHFVUVj/FTqfWHIA7HGnPgD843fWys+xN120
	 qcR8707Zvcd67BCragUMSOpQq2NzGtbyz7HEQq17DbnVX7JeHYRl0IUxvD/zH+NzM0
	 GUdHG8NiIL8X20yNI4yIrPtffxE9v+v4nAP2dtzjGXAVgJ2wcCeqFBsajgeSrApSyg
	 O7eqRe6AW7gu2YV7MXckF7+VHVUZ/IVk1eihhpQPLaYadSUL3H1/FgvKrrcHXlU841
	 wiIktdespCSgXWrprxdEnRn2LYFsUNaV6BpTcIDqrVR+ChOlqdQQoQkG6AKm7Woksa
	 y2PAX3FAXLEDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A69D2ECEF
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176886863358.23275.9268780818353508940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1791fd99360730e2303ae4c94305f0d4a66013047ca9f2a4c5ac2bcee427551c
Date: Tue, 20 Jan 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768868633
