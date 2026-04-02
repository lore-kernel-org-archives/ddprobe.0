Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E97527A476
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 02:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775097334; cv=none; b=HeT59uqo3npUxQKw9jzBx+iYtMlmnB0Q1S4axex+qXR0TwmD4q/CdlRbBNM9c4Vr59kpjWFQqIoYDZp+O6SyEh8wKs1uA4S24eY6L+jI/W9R2gl5GDFFApKieasbaNY7qiIkSeP8XVSt5pMDNFammb2MsxcRB21vvBaCW8J+spg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775097334; c=relaxed/simple;
	bh=0WBu4WzaanWwMvzwGLcqDVD1gyGJrtELTm267kPQeX4=;
	h=To:Subject:From:Message-Id:Date; b=Fs+PRDK2mVYwWdHreytW3q/zhGFtAKj2urRYAT8wInzc/92Pc2Cg/pQhdmBqmsvfGuU9sI9e6WH9eGcWnRP8C1j79N9Rb1CqTvQqRSz020CY9AEU7r3pgOTar08xOt5VKbze23RwEGrYD/YmiwcuvkTcE8tYCg0FDN506gCiyEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hWPddT2J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hWPddT2J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3514C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 02:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775097333;
	bh=0WBu4WzaanWwMvzwGLcqDVD1gyGJrtELTm267kPQeX4=;
	h=To:Subject:From:Date:From;
	b=hWPddT2JPCYYDQo3RzH785fGxHfBro5DaWgVXYIyxyKM2vZZFZI2gvaoNHFw78jL+
	 UCAcKSv6HuQul0uXLItvV5ycTa2KeWAsQaotFXVGQOoAJYE1poFIm7G9ZMjrgZrbaV
	 N7bMrd7GnXNutupfb8ovV5MkEn6AjeZf4Fxz+892mqEL54ojng3z2buQULOjS7ZfHI
	 kgVhF42+axlRhdCabJCJdxEmzBxBd+MlOpL4EeXmdt4JvXpa8goa9DL2+7V4PlKQbo
	 q7/Mg5uVdu6QuzoXdSLD1PJkEABZbcl9dw8uJJj6vguAWwOIHQQ2SrJXehjXJhqmz0
	 rV3HDd/HLRiWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF06D1112279
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 02:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177509733369.30331.6955163852928871277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8495da49ed64216f7d6e4f9aacd983e0f0164bc330f83927dd01f5d6cad882a6
Date: Thu, 02 Apr 2026 02:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775097333
