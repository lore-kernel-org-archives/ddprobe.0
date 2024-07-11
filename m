Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62B3F1A08AD
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 23:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720739243; cv=none; b=sFpxpcEVXtr3S9qvbAmNZaROkivMn9AG1q5eJyPEdF3aFbWn/dfI4KLXTGxBFAMGHFvoQG/lgSOFhmJJtqPWwaNk8R9PSzKse/CYkknCMQnWjVjOJAq2OITM+augDiBzwu7ktvjAWOwPKNdQSqKZIklmmmyhrQYly8/T+7Q81dE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720739243; c=relaxed/simple;
	bh=QTJC6bGh3UpKYgEJ5n/xvlLHBZnOoplLdILmgILI3tQ=;
	h=To:Subject:From:Message-Id:Date; b=uncogLGEVyB7kzyB01pQ1Cbm1A2fn5u65UBAtH1tNNfWZ2HAhBFYH7nzGJmoZfJaCo5N42XaOhlTgpabBL81Z4ZQtVLipH9rV1WdADDgLFd6qscISnhEyAtGT+QDAuphmeVL7om+zhFiT+rBDo98irK/tEP24IkW82qZk8keAAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QwOgq6i5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QwOgq6i5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8099C4AF0C
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 23:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720739242;
	bh=QTJC6bGh3UpKYgEJ5n/xvlLHBZnOoplLdILmgILI3tQ=;
	h=To:Subject:From:Date:From;
	b=QwOgq6i5RKr7CD4p1fCLoRqyTXQEOQf3nvFDtHaptyyHoiDUUvZTkWrEkZeJ5dzy2
	 ENiD3AU85ByLWj7lbY8+ZuJCSV9pWdlhytd2JV0CpT4jT3AVkq+bjuJVxRGOpZ0zXD
	 auGw8toOZo4c2k4n4PK+9NShdeuNer9kDr2KhdFhyV16xtae29Qx7LYrH035NEoXUE
	 vL7yJyDIkhxyqbQ1dx5nEy6dUZUX2VDDPeH/InmxHdkc2q/JLe7bndL3/Yc+UlhydG
	 +KICL373qAjcXwx+gd0F3eAa+yXR2v601gMKahLYla6FAsYVacwPsj6raeeabnnTkZ
	 sTh3Z/nRLUEXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF362C3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 23:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172073924282.10106.5027712796450868574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab51f3c47cf5460d799d08a93ed19e7f03f1f058566b46e085307789c287620e
Date: Thu, 11 Jul 2024 23:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720739242
