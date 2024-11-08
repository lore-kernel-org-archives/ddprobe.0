Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234C21BD9FF
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731036954; cv=none; b=paSAaNy59fTk3SPvTa2lMKrWzMXhPyR98GyYJ0pYPFfU8w0zA073DNCddlY7zbiXQLMRCl96JHn3ufhkeVyQwaAyIQnvr1zTGHsoERk3OrRG4CHpGPBXUtgfU0qjZFubI3716dwrBcbqLYr3qO4/fuYt+SfAAnvye8wyPE6uDWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731036954; c=relaxed/simple;
	bh=F4HvVlp1Jnq+8dHx0XRBvdPZAlshu8OH5uVFrSbciNY=;
	h=To:Subject:From:Message-Id:Date; b=BqmY6uIdHP1nbQvh80Xo7TBZIwuhWqIpBj+K9mmAnzc/pK9I846cCI/innL6zL+iXX9FJg6V3i1X9RPBmiSfhbEh8u2ABu0HBuiypg0uRo19iXETF61CkGaCVAvvbxJbwc+mSsod7SuSGi5o73awqlO39wzWaYitcz97VnlzAN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MpaLk8s2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MpaLk8s2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82FEC4CECE
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731036953;
	bh=F4HvVlp1Jnq+8dHx0XRBvdPZAlshu8OH5uVFrSbciNY=;
	h=To:Subject:From:Date:From;
	b=MpaLk8s2c4w0DmNajQ3C8uZF6AXJVNgzV9i1tOBBta6Wio5I62vbAbZteUCTxrYlG
	 DsV0o5K5w9v+u0tWOppzHfglIhEQ1op1/jzFz26HQuO4EKQZg4NeqWqrKarQmm5Xq2
	 CI+kF6EBDr9Lj4DenrZ/xIPT+hNdX1p/ZC3v8kMLzzuUwJH4Z/EZnhHGBBusgxIKzy
	 DNsyw3k/zp8pKIxQ/aWkSDDwLKmEQSvzvd+0sgcB47+IYkqGBxmiSot5y4R+YSU17c
	 E7wSlgSYtqgr2VEn+1saV51ZfVPJiCt96bKeEe4TuarE2rPkMjL8W2C14FvQuJ1cKJ
	 9BLqpQnufhteQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95157D5E124
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173103695359.12796.9493030355445412678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 465f93621db41fceb0110acc7ba9e39087b5f948c9d97fed678ef5fa5462b678
Date: Fri, 08 Nov 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731036953
