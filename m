Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C36D1487EB
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 09:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719568463; cv=none; b=kVaXd92MRdrreK+3Pn1VeE+YyzVFZXC6BPn96Enk0le2iubJVbklfv63kgqWKEatGCZlsBbxJ7BUmst7cNjf5k8Gchp38g21uxAyY/TyekbScjZZFNt7uIKbHzbomGGWuLCl3I12dHetr1V5DlCAAgZXmv7cURUaOhrCuf3v1vQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719568463; c=relaxed/simple;
	bh=SxphbdpiX5WyQYhTKNL1nz9YmXuvNpbtUGgsd7D+P0s=;
	h=To:Subject:From:Message-Id:Date; b=ahFgxujc3ynDOI8NlofKq1a6O877FBMHWjFUiuY7YZF6AMA3Mkvm17OUus6CH2ihwYd5lLpnd3fcSO6GZ0eyd3BHQIlFfVtWq6EXyOwOAqAm1KUybh9dNFpTiQ36yHobKEWCoR3ifjlPBVFciJ683s9XaFlkKlrP5Vl9ARBG47Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DMAqJp7n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DMAqJp7n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2411C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 09:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719568462;
	bh=SxphbdpiX5WyQYhTKNL1nz9YmXuvNpbtUGgsd7D+P0s=;
	h=To:Subject:From:Date:From;
	b=DMAqJp7nADmGeXATJQiu5hY8D0i4ZybNFJFm0jYh2iOkshjxqL1ZFek4hpYs2e+tX
	 IQ7q/PNnq0kz+RdsBcDfV9gw8wenK979T/ShuJ4mn8N1rufXRdxY6kvl/EQ2faMe6G
	 g+LHgWhrgohsn6Yp53tBBCZnVfx0F30RIqpbmWNE8OtT15Mga7frXksC7Gf+/xRnv5
	 MakOG8uT54Ok7ho4Hkcj1L3aPynkjV96QlqsppYO/AjxbCXTS/6pu1Vb36l/eAPixb
	 jWFyWjP624cQ5uzYeC3KEW2Wl0erSutM/nsmWm9hpKY4M2uemCS36doWlkjtaT+KZr
	 XW8KMuvwL3MnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE71EC2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 09:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171956846277.25854.14458595116443685914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cff3d459db089fd140671938a51192157f428415d922cddc8ca53767c3d96e3
Date: Fri, 28 Jun 2024 09:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719568462
