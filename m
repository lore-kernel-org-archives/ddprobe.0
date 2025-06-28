Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26BF4F9CB
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751073594; cv=none; b=d8IS/drhwNw2CnVdLUTQQH4tYLT2POXMSOsFVRBrgJB2T7mbPViC8exiXJEUmzQCBM6LB7tQWHhawPJc1rXhGd+0SQhuFjA3LFZvOuhpIoCpNwyD5pvDQnGhWbGGp4aUo7dha8rM22CaXOGtbsPugypsQuGo9pL96Y4ZhEJnn60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751073594; c=relaxed/simple;
	bh=ANDDwYhkK86QTW5NlyBFZSBmJ6TIXL6Xyh4EAXEZhHg=;
	h=To:Subject:From:Message-Id:Date; b=GVtAo82j9NQGJcP3EJ2m1LKjMqunbCaK45R5Mm2KfppLbmQcdsBW25Nt2LUq8M6E/6jxua/vTROrBISUs6XK9gyZAnjNPlFEWoJWkSIfnyocQA+BCETtApkRmM/z6D1BUuxPIizrFLqwmIjsOb9o7Er6na1jMM/OAUYuyJwIXMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvH26L/g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvH26L/g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0315C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751073593;
	bh=ANDDwYhkK86QTW5NlyBFZSBmJ6TIXL6Xyh4EAXEZhHg=;
	h=To:Subject:From:Date:From;
	b=pvH26L/gewcuEvl3Ttbk6t++HAsFba4M0sTYOxkt7ZJtkt9dEu9Bm659C++3bOu83
	 dms7eD95uyA48HIjBdTP3a4LDrFevwRYuqcVaOHoddB+qCW4l9pu72gkxX1RLQBqTM
	 fccwUPfwwNMByKc8nTBTCUlN9RvkfVhaMgrQf60i5oHQKCC6uVBqOswg2x6VCx3tz0
	 AUAztrKSL808hYoFVdfwRIwdnJUMJHSTXSrFYcemmBB+w18LdwcQhVsZtpMtSyHQir
	 TeiSAk/FAIlywTPeyZl2exHFu5soGwPCIMTGFzAJm6bQE6NagxzI5i/GS7s6dJJPT7
	 1iXiAEtNHG9BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DCC4C77B7F
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175107359360.7104.12036749234079738080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e00cf84869869f7ec62040942de33201c97b3ff50e8b4c8e77b90d0fec586a7
Date: Sat, 28 Jun 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751073593
