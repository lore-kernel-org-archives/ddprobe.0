Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 547111E49F
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 16:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717257863; cv=none; b=fAiSfdIgQT2bLemjtHMam25zt+L0j3hV6Duzc5YjucK6qTq2SSkv+Og+CEyvDc3LUxaDF5MmxHk2NgjricEpZYqM61y8NPVKxqUKR5WZ//yazrgjlmmQgd+ZHPtO1IlSV/mKO50lkfzDmvLBKfmENC+lUp2u45pR9jRS6umqaEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717257863; c=relaxed/simple;
	bh=0HVVLo1sojh+vBZxZkAjqzfLxZjERYF09ggYIS5R/xw=;
	h=To:Subject:From:Message-Id:Date; b=Vks+gzNCLXawBkkpVJ7oyJTdmVQJICALrbo2B3lE9K+S+gXiWkdbgaK2NpF5DHB6ppifqB7f2LE+5Kd+O8etn7Ejs3Lc+8GjT5Cseu9kZ2XlR7zTjQ14MMvqGgTtG/P6ukpiwAnCDQhi69h0PpMcRwP3a3HaYidWEPk21CmfUQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1WljiAh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1WljiAh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A54C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 16:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717257862;
	bh=0HVVLo1sojh+vBZxZkAjqzfLxZjERYF09ggYIS5R/xw=;
	h=To:Subject:From:Date:From;
	b=t1WljiAhEwVSaxlz+rBV01NUbl9KG2Zrs6JcLslx5NUmAI1ZKRtWN1d/HWQZfl0yU
	 PvNaW5WdkyYFFbrKqRlWJsGKMme+fHpwPOfiHSSqontjbuLVuedho6woqo3M/WuC9P
	 tdg/2lI2iPYuWtippScMKliAUjjJlwT63GxxY/Cg0qb2KJxkS32mITOFieKQr30cwE
	 t4nP2t23s3v+CZ4pejk1HzK632clX+d1TpMzCFg9U8G8IuDnCwG15iDH3xcENvf/SD
	 GBbyeEkJh0co5xZVbi4dDSyuaukdFCSJGDlnn0ZigZExDsVXh44B9fmac3lE61vg5T
	 AB6RRKmDtHpSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C633AC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 16:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171725786277.28888.5742488986329613083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e539fed4a04cb3a2fca067dfb2763fe9fff7e1c4c3fbd24998572681fabeb62
Date: Sat, 01 Jun 2024 16:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717257862
