Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164403002D2
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758370794; cv=none; b=TECOiv7FM30WrwYe0PuccvgUWT0V9JBfNox/GPCs93wJqrx5Ci+/aDwCgRnZO2e0ugrM1LVq6ROgoddFvzL4+AmSmKFhZtFC1svRGPoS/21HiZbvK+4rths5K5HEJIUMd4rSm9BDo4zTTgzGB651Sbhg5M8I8EtH5lLPl5kQ8yA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758370794; c=relaxed/simple;
	bh=4V+zpYrRrnCC5PYkW17T5V7nVxwt6gpKAW0bt+zQfhI=;
	h=To:Subject:From:Message-Id:Date; b=GY2zldHYA/k/MqbhvyU/AOjwNiZYfv5YjkI6r5CVrz72ftNsNyamKmQOesF34R1A/WmDaJtZiuYEHtVIOXbrrUwacpsFnFQCzdSHtKTyFAZbKNg35uPlnEnm3DatOmbvM3T8g03JRAPW2Hjcq5Ts3Efd/CTdO74/ztsmp46cHJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChwWN4zs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChwWN4zs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DE2C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758370793;
	bh=4V+zpYrRrnCC5PYkW17T5V7nVxwt6gpKAW0bt+zQfhI=;
	h=To:Subject:From:Date:From;
	b=ChwWN4zsQkPIgp+uq8Z45PjyfPmnftoHOPSOg45vUvahNCv+PrERBxaA6M6YwX/Fi
	 16ZcqDnGmdCyGYgThb2hVpEuojGCzvMRCORKBe2ZG2pLI0mkUM0b8ZYDDuxvOuL/2M
	 f/q24QDzM2Nq2feSARj55zuOCigEMTYqgngDpqknY/hgnhpHt4tk3/+NXFHy/KOG0T
	 le/Oks36j7pz6hHRMe+HdGfgL1XadGFNI9V3eTZsRVxhI0zmOz/+AJzPsRTOlT197J
	 9RmEnerA0fVZXO96Ua+U8REUQaYUh0uhIffQijFK3UyyuZcLNj9P4vA0Ta61ikg3bZ
	 k3Wet9BlPod1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946F3CAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175837079358.30508.16297877500383641477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5b26e10f5956781184401e9acac9ffd179b0f8495dee0bb7f44a8c4e054ab4c
Date: Sat, 20 Sep 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758370793
