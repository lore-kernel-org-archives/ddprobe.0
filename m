Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3494B259495
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736383554; cv=none; b=koAbiiW0EoYzcMTfhkI4sJr6pVGTk/aFADeGUTXMP4TPpHCFg4sUD4bTKTDs7e7BALhmDR0EG0Sl0wmPV1wrabhSOLC1QZUOBMQeNVULxYk4e6td9UZoyJ7pbJ8EXxc85/1LHwej/D8L8rqgW6ScXNT4WeV0sLJT5EGomCTr9FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736383554; c=relaxed/simple;
	bh=lpRLJ3pxQTQUyW9gF1FlLs3nX4T66pebpdUB7eKw1Sw=;
	h=To:Subject:From:Message-Id:Date; b=KT0A1zAqeOSaf5jCaAtZV1SrklZaaZxf+xC+f1ja4FUJr2IvBhSliU5AxOKJDYml5N5baJZ93K3zhn4PTZpuje6semBqxFKCn7HUxwaKs59tkTTteyRh0hTX+dupeZJba6qhIv8DSs6T5Vc1hRrVVjXT9xDB0PyIZtWIdwuaADw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D50Y+87V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D50Y+87V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6908C4CED3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736383553;
	bh=lpRLJ3pxQTQUyW9gF1FlLs3nX4T66pebpdUB7eKw1Sw=;
	h=To:Subject:From:Date:From;
	b=D50Y+87VlZwWgyY1vulBG/yaKvH7bYzBPTZVupMCnbPutuX5Ms30Db0QAT8PrsiMq
	 H8xglFFgu99IxcguIUltoo2/oFWk3uXXIZsLICIBQ2U+nJ+3BbsvZI9ElBmKHjK8tU
	 WN7SMf8qcM+wl0p+O+KO2MG1tdpIkazLIcTFrcXshgu3FznWjdDvuTJiESAm0XxVIA
	 OLdnz5ANOpkwXkaB99mXVIpMISYeld2i4jpDXaw/IyL7IwYuikLDjT7cEY+PfpzUTS
	 6X6yaGQfLkKTHg9E4fYS7BrVqwASf1bG5NWm2HOW6zffjVqD0IQXnBk+XU6TgOJLRT
	 uD8zXT4toWX9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AF6E77188
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173638355359.13818.4599637468964025370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edb1fe20f58630473826ffcb500fceaf3dd4b4149daec6530fe1d81b26387b04
Date: Thu, 09 Jan 2025 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736383553
