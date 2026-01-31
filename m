Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9225D8F0
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769843034; cv=none; b=mlU/9MxIHhyVbsgGZ622pFp1pLTUeHIK9KoF69V5ORM5HFbMHjwqgUDnmF4F+0qxQZ/6wQOLqSiiTnlRiijxomEkfcU2Xt0TtTAuQDYbCi5lVfTNQDMsy+D/Gud+EDuD0vr20IdAugn9uz6b1IraWR0dUoEPTBkG8/JQbQDtkHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769843034; c=relaxed/simple;
	bh=8xHX4uI2mnHfd7SlhyrA88WTHNqeZxNpPs8yRmEgkqg=;
	h=To:Subject:From:Message-Id:Date; b=E1ssM/j5I9YC4EyrLlmJm/sODsfsmBQdw3jeO7QTAv7KgaPdXTnBZE4JU1IRW37b/emVg9n6YRaPWwZK1WM6NgU/5Shsr2z4u4pVELPwvIG5H/SJW6hput6l/BpOYop8I2HNpO0VQepd1LYATfD1FbWIem4YpJsf8pAhmqdLq/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AjvaQMyA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AjvaQMyA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DE8C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769843033;
	bh=8xHX4uI2mnHfd7SlhyrA88WTHNqeZxNpPs8yRmEgkqg=;
	h=To:Subject:From:Date:From;
	b=AjvaQMyAzPk2ekuL6G+p4ZiJA1/JbsSnCm2FOnFVF2uT+7bNamm3DSf0h3LTRn85T
	 i4mpns1hve47AhcYhS93IIMP1NOWH4QcIhc+Io6pDlZAj6pHFtdFQpH7S2PqLM+dfn
	 a9SazKvWeaR6Nna0MoBpEmmTZokUr+Xdepp1lRsDslV3DnOWY5NUBz8LaIQoygk0SM
	 /s+B002VrVllRdf7O2oglcR7LeBunUbtIKtz6X/0rvX/YLlfwvLwRefs9OrHIBdDva
	 JDolF5bm+6wU63iboj2glZpSXyoP8jfpzRLfZrZoKCodFz+cts0gKslBhduqYWbxvF
	 IDGsh4DHnF4Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959A9D79740
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176984303358.11246.2189200507547394031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45db06e2b54a511e1953aee7b2556862faec03af279357e9cab81f9ff659826a
Date: Sat, 31 Jan 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769843033
