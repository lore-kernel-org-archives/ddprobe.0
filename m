Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1740733B6D2
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763032794; cv=none; b=QTmhKvN15WVAttxZlcFfilN2NaalKL9SgsRpyXkcVtjdaZDxDzPjT3y5SU1RrFRhzmi+aW9a72gnx+OsQ+a4w36ALEM4ypnicZ/ix8OI1KMAk0W9rLf8j5LPyQTL2SeotmBxbHTSxltcjW3soZ27BAYOEp3YgbbRa6sDsqo2Wn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763032794; c=relaxed/simple;
	bh=eI4iHZAxJsbeiJZInxo3sfa0xyetoKs/PRo9VKMW7UI=;
	h=To:Subject:From:Message-Id:Date; b=ml42mHSkMAbp3Kx0e6eAf1HgtmK5EYZusmM7yTr959E3YBm5kYquHpC96+SxlgzkE6PydkWilEn+DsrkNZWN6mZ97tjNtyMn5e5rPccSSsw5An7OfKub7SXLBfrqOWmLscvSEMhHREanBEOdxeDA4AvCuBv0u07FovNx4RnJ0DQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2AQA3QV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2AQA3QV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17FAC16AAE
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763032793;
	bh=eI4iHZAxJsbeiJZInxo3sfa0xyetoKs/PRo9VKMW7UI=;
	h=To:Subject:From:Date:From;
	b=Z2AQA3QVaULVJvHAfeLLMrxjnPyqQrFl/voIH7Z0pZLRDGLvj+HA5DLtX76mWF5Ax
	 e5mI/JgBd8ibXvYIWKiXrnz5jCu+jVyRyAue9OOHOapAXDRAooIIMwwBnxr17vvT56
	 IyaXqlFDO951N9dM57Ujvky4SKWu5PeMCqFsy+Bd7ny6EpP/0bPl8s4AbGkKdHOhcd
	 ZJ85GsRTOa4McqLVh5W3rgUr6r+MkJNZ+p2iHy6fOMHXM83O3DSxoIbLHUlkbRl60s
	 WgLyTA0dZuGumQvFNasd6vRSHz955ojLn/iOAzCp2xjuHAwweEo0NDDpGc0IKSKxeA
	 lZ3frNAU8h+3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90224CD5BC7
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176303279358.25868.15474622076931676020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d40f8b7c00fef894aee9f3211e359962bf7148fded6f1fb0bb66ffe96888c654
Date: Thu, 13 Nov 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763032793
