Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401707F477
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731420954; cv=none; b=CqicJCl+1jIKrBPwQ+tz9b++HKwh+IbcpbPoNICvXMxuHWL6jtk0jcYFeJ4EKbOXW0J80Q5b1u80UyvpbLoz+6SBf/nVfzCO7DvMcSnogGdyWRO90idMZvTRxl8hxzb/HjaYy5ti+oJYLXo3cGlVmYZyOEgeY4cu/vi4q9iqvog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731420954; c=relaxed/simple;
	bh=woPvLcZPMaupdHjv12uoE6jNCbuPlFdn9W0IpmH6OSE=;
	h=To:Subject:From:Message-Id:Date; b=Ms1g7xIdLLntEAXKI5E3TiaqWqQsoqFz0JX8EPrYYeUDyDAlP3yn6sq4BSjTHqL7Ne//pZ1NUVDRCQcD8oVssydwMxi5MX1Y3emNaYGzvyoTHtkeDQrNQc6wSGob+SjDt7uszTiwL8YVWuNZG4pQdvB8m8XosiJuth1tLSMkxJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RmF29Aja; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RmF29Aja"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1578C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731420953;
	bh=woPvLcZPMaupdHjv12uoE6jNCbuPlFdn9W0IpmH6OSE=;
	h=To:Subject:From:Date:From;
	b=RmF29AjajDEGRwR+DOWQV2pFvMxvRf30LGKv65BPylN8r5SASWKvrUVLGQA6p2KV3
	 hK6Jgc02zk+Yc/S37BrX520XVL2rSmzDvKoDU46IMsYduSo94XsOQTEY+IYdifZUou
	 Yjh+I9vwW36QcIGwKuX/K18NcYr8MAuD27fvfYIWVQ2Yr8HRiTklWSI/1Nh3i5LEYs
	 eIopMr/5tmPAf6OREYNClyChKUW9xJGDzAjSMGO8y5cR7aUpQgqCTKdC7tB22NRgxf
	 0beehCQB5t8wZOol36xG5JaMvnHQod71gKGZp1SqzVkreAFTS6HiZ6NTJpYkDejFcQ
	 6sFuTbncKp/zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A201D42B85
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173142095362.1991.15295014706988316621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0df710f2d5d654c8c8829adf4beece766ba43b05b4c8d03c37e9dc983df8224
Date: Tue, 12 Nov 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731420953
