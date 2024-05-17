Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E94F399
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 15:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715961143; cv=none; b=rouixEsb9KcVU0Ssg3Fo73ZOCXQ7TaWYqbWaMxa6aoaOT8EA4CHr8iRh1go1x/XeUeXmFlNsRNGeBG/0FHXzOzBsvYKBEQHHzJ1NKZPOHvhumIksC1qvIY+fSiSWWAAxD3bfan9HWMy2OEzvEyzuYSwFxSCqUDEFF7IEqSuO5Mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715961143; c=relaxed/simple;
	bh=pOcLLnHfOBUjcGTJl6FxuWpxY2j3gjk9cEUkraZiMvk=;
	h=To:Subject:From:Message-Id:Date; b=pT3kUA8tvJ33I3DVRQdJhtvew0s0rYv+mIzoFBY/E1VTlaCOt5QEz6f95PPsXHHSUWXmn7WAt6fAkxM2aGEClzufBdtYWUnqEBXx6oRSCed8ddryJXzweShyB+Kl3aT/wq8pYK5JUFRwjqemfNG84XcYw5yxSGxxujdby+1Ea1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HuzxZiDE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HuzxZiDE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D70CEC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 15:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715961142;
	bh=pOcLLnHfOBUjcGTJl6FxuWpxY2j3gjk9cEUkraZiMvk=;
	h=To:Subject:From:Date:From;
	b=HuzxZiDE5/KdR0fLdU1So5WkWKJIb2lWQ7LhfKIY0qB0I1cMYc/eae3aHx6f4byIV
	 Wb/+WbnQ+y0Zvaneu+GLtk5nCzJYdNaqNnMEAFyJL432QpC1AfWxczAQch4eiBU7sG
	 iMilV631gc9e6p0lYZSM/odFDFHpTXQ3COvqrojPx6EWyeFoSQ+//EzWBpdQOhuw0L
	 Sw8SfDJxgDcZlsMLxGVvKHGotHCnH0rwGxfL2P2j/Ku4WRLlqZVVfsD9NK+w9L6zIU
	 8ApMdRrr2BdCATZAhN9k02osk/1spdMvoXYHsuF09hSUeSyoszFwPZm4jM3/yhV0IV
	 H1BagrbyS+RiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2FCAC04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 15:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171596114278.9289.3576264077064142077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adaad1f67f5d540c7c5555243a04e42a57dadb6b253f8aef8ca2b1c850a7787b
Date: Fri, 17 May 2024 15:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715961142
