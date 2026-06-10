Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79DA03FC5CE
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 14:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781103334; cv=none; b=spp8HDcGvJTMqgX5njKItZTtihyWBQQwPOW6ShafdOrmLQ+D/3vKnn6E92ojYU0aBjF1f/xpwhLSOGxdDlKM6EzBDlsm2FkOjDYcLNiM0TMMVd/eduy2evdgHqzKDsbVg75xckltOUlwZVW4aImHBtEHV6crKjfHyUfRdE/3Tkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781103334; c=relaxed/simple;
	bh=QE063qr26vb+pZD0GRUp6ofTK4aUFACFun+L+e+UPWw=;
	h=To:Subject:From:Message-Id:Date; b=E5r+c9Qc8c4fC9NsRkfRZsnyR0PF5Ktm1664LZvdBlt9357b4EYmDZCKzGDibMqIlKVQB43sKL1mwkbkc+8cr9VWe/wQMSdptyqkZQ3qvzsFc19Ax2bdYhdrzGv5kWI1/jzs0tEtpPqGoLo31ElISdZQmpkPVtnGxtagvch7wow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Heab7lV/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Heab7lV/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2840AC19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 14:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781103334;
	bh=QE063qr26vb+pZD0GRUp6ofTK4aUFACFun+L+e+UPWw=;
	h=To:Subject:From:Date:From;
	b=Heab7lV/37qXVzrK/3uKNr9vZu0ExHtI3uF1DANVRz4wQpDcm27fi4CfdNW/eBWi3
	 khvdTINPrGJG/GSuju8AXw91ra/3tPJbEUilJqs/CbUtk3Ji3EIVB3Kt/RXmYxywb+
	 oYNfRIjkxtN3dcUJvQY45h/o07VOt6ihx19aWtPYFyyhHQjD7ofi8SmHDkqcDwyspM
	 IrFeb23C2NLrteEk1Cvk619ZkryWskwaoLB6Ux+vEjdf8+53b5rLtsEiLp2Q8EETqO
	 zq+D7cMSm5AeyF31b9YniS2kM8Fm/Nl0HgxhTUy1FQe3y8Q+h3lNbgObWsqqFpi1q7
	 AQ4AZ/xZh60gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D699FCD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 14:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178110333386.17278.16429299428205455197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7925b22b64eea05398fc947abf47e5093a477ead8ad704f8aa9360369bfa3a0f
Date: Wed, 10 Jun 2026 14:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781103333
