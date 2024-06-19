Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFDC28EC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 06:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718779763; cv=none; b=nUxEcJeqYXAv845PUyRqmv+VuM+A3IFGMj3nyyBeTjhLBf8gWtaV5sHwe4zOOBVuALEkHAW6cCZD/ezmKWbufcTaktNjDIoPyjav+NNGQSpOn62DaZcqtBipY3hUdY0WTsNEFECoio2KcsRIlaEmYGHevhZ4d6LpKEduZqfnubA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718779763; c=relaxed/simple;
	bh=pntdGsygmjnko4tO2BpE+YeflGBw7HvTwmVYacDr97E=;
	h=To:Subject:From:Message-Id:Date; b=KiekBLS087vkCdVt+vciktlpTA5MlVWxrtNAj5xczjNVQL11spR6XvjxoEHgPBpJSi2ZmZiAnnHKDH9hMf4CtipkKKxzXxYWVLuBaOKf9ZY5HsIoZYoix22AVpy9EF58boQH49AEM//QT/kuVuxxNM5oxcAVFAh88oIUjLCzKW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpEtgOcQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpEtgOcQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF26C32786
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 06:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718779762;
	bh=pntdGsygmjnko4tO2BpE+YeflGBw7HvTwmVYacDr97E=;
	h=To:Subject:From:Date:From;
	b=kpEtgOcQuakIbWIvMtrGjMdqt4cly8AfPK56Etfk3OlT/GUhn+7t2gTdvmbDmYEX6
	 FbLRqOfck+5Rh+2MpoYYm2PSB11Mj42tyuRnouDVLo4avfPgYtGvT6+uoBgWH3ewZr
	 tDSxWsdVfo/3o6q8IeupSX0fvrpKmtJQfI1WoEc+Ky26fWatkXXoxg1Zi9dAaSSbJq
	 GaQYUPR3Bt1PNtseBNdEgYSoI4aX8j64V0XAokNG8XhvgCAFQdmuOypyZHVr3uV9+T
	 O3c6Vbpu7ZHsf3ACbgHRyGjwDfJ+r3IL4rMpqbb3M3RwzLTse6lu3N2XUr9GtZeIJ/
	 5v4nialhUH9cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDBA9C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 06:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171877976276.27505.7347847376645526131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d41e6088a03529b9b1bd1f161b4bc81876a10950e7dc637eb6f4fd0ee283453e
Date: Wed, 19 Jun 2024 06:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718779762
