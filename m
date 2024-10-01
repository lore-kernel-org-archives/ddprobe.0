Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4427319ABC3
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727818554; cv=none; b=fr8BtTIvPkHe0loWYeIRCSLaAB+/7njJQRKekwPhYkyTavHBTP5FOmSSIiBGw89nxnQw6tdr69eXurVpNQNbwmEuM6M/VeW0wei8Y3inBNPXC4wKJMpuuVfTcYjQcDgyj3k6lfutKbId7vlWvAsQiTJ5EDZrU9T5HMpXgTZJidw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727818554; c=relaxed/simple;
	bh=CUshdTBZeCZnu8i9o8CXBC+YNbeHpVdl93ADfio6jXw=;
	h=To:Subject:From:Message-Id:Date; b=idhkjQ4nNjn7Jha/yqdorcHD4aASerUAzZ/pOf+GqHEjLEKSYTF6QU/KGj3BJOgv0R0nE9iVIUfODUVjQ93+VR0Jva/U3v9HHpZ6IKtIOX5DxrlRVEjND2TKCj8lUdvBwknaM6+CKpbf3bOCL431DY8j+7Iwh5xXlme7vfmFNhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7VNan4B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7VNan4B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FA9C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727818553;
	bh=CUshdTBZeCZnu8i9o8CXBC+YNbeHpVdl93ADfio6jXw=;
	h=To:Subject:From:Date:From;
	b=s7VNan4B89M3Lh5CNWYqdGmZETn/UjEdxFP5A/xlUtduwJ6c838+6LlIXv4RXjtzR
	 6Igb/rz8YvMg9xKfeDwphloLt8J8/rvDdBi47LxGXWiG0MbDqPoH+LvLvkSQ4JMRit
	 RD8FPKLLJqzvi1l+oPX8hBt+Wv29F93DqtAAfe3sWcFULLmpOS8+R/nCO4p7XkBNah
	 EbeAWrtX8XvlEWVh5ahYfDjIJjzq3Dh6tSFBBk+Ok/Z3Ah+CSHKM3qWzG+o3+gluad
	 fz+iwxw13ltHL+a0EF8ulY4psqlyZ+gXVNxy/197uQpb2dmsAx5XXt6te4wkJAKe7T
	 7rrbk6NpXfctQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953EBCF3185
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172781855360.23470.14062348282110044344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b2f4fdaeb60bbe3666d1fd78b7f15f17a9b01cf2bc3e20c769bb70ad55c1ce6
Date: Tue, 01 Oct 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727818553
