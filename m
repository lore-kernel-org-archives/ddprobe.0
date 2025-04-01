Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5145AC13B
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743476994; cv=none; b=Vb3FwW6I90TTiGd6rbOom8M0RzPq87RkW0Z2STl/NrSekKwdN/oaDO2EDiAroEgYpm/Z8zvj9bLpmiwVi1BZMcVYcyF9Kdr/Is8ESOtIhwTG6BdHTh6ieevilu3REUeHGbxdyafTgVLI1J68sYwUbA2YgWnWYwUeed95LL3spyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743476994; c=relaxed/simple;
	bh=8wPwnsrmxNXkAifOviYluDBUSx8IJ0cUMz7ltvuvZm8=;
	h=To:Subject:From:Message-Id:Date; b=sMK2ikkdjoc3Cws2Vo5SNV97vk/I08F7rATjXJprTbC66qN2/pEQluDEmtf1wwrfkPUqG98/117lJydjd6h9M42GcP2uCz5TrpPZcb1dq5K4l7sHoDI2VHd882btBLDaBQQ7744dhq/YEXe1VzHoC8Fl0ItvJvlzuKMTb5nDeUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Guj8ctdt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Guj8ctdt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B874AC4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743476993;
	bh=8wPwnsrmxNXkAifOviYluDBUSx8IJ0cUMz7ltvuvZm8=;
	h=To:Subject:From:Date:From;
	b=Guj8ctdtk65irJ4IiW8r1W2Z+t7kk1O9UNBbWNC6+nLX9ZSjM8AM/MbSSgE7xsht1
	 gUlOvboxp8yeGdwNxSSlocvfB2u6jvuEbxOnjpusBG/aa9RURAwhmkMKk4p3sPn441
	 SQS0ymojmW7i+XjwUxHifbzUNnZXgZ6fnTXujLWQahuUj1FhpI2hVr6/E6QI9jc0i5
	 N/Y/NUYV8f7nIgsm6wiZ8CJtnz60y/F6wjDL+RsDpK8fRwcmAPN7jE0KYfKGaOIaKX
	 ccCL+X3EM/AUz6jpHml2HXnQKmdKokFnYIv+qvPZ16dWy46z8vPeSs5lbksgMn5mHO
	 E+dA09EzKKo6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3DC6C3600C
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174347699363.21964.8434967602378390223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0ecbeebb261e9eeb5aef3e04e70e570fa63d734dc4c46fd46650519f75be6d0
Date: Tue, 01 Apr 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743476993
