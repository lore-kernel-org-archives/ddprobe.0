Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37AD6DF49
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743778794; cv=none; b=DjNdo0tLpX/wxPdQDVQGX7zo/oWnkfDCXJBoyiBD+qCcVn44n2cD8YGyvhVDZFKhstkpf3YXc1A5cnAEKmqTk9Ia1ViVafl48bdkH6koSoS3wi8mUaAzySu4xQ+2sXK03bXm8ykXnYY1AT/lrI72stErN8c6E+3lAcraDl4OZXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743778794; c=relaxed/simple;
	bh=YyxsyC71MtajfodNSPg0ki4QVBTEd7RDzU8mTZMexoc=;
	h=To:Subject:From:Message-Id:Date; b=RXI9Eg0ztCnnC4B53xNSeCPLHcK9YP52toQzsROwZVMqJiNCtD2ibW7GWY5DPuAWXGQ63xex54CAKjnRq+3dvQhokOnNvJC0RMujMmNXgdywqqkDNchG+5+SYxohaCBvb1hz8f5/3dkejIUjBHLo3HFDgHNbGGOiI4GPVpQfGOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=poXYagtK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="poXYagtK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC3FC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743778793;
	bh=YyxsyC71MtajfodNSPg0ki4QVBTEd7RDzU8mTZMexoc=;
	h=To:Subject:From:Date:From;
	b=poXYagtKpX6L7iz/Ej4tPYvEt9FevulsyfFYly8HnTlgxnHfHCU9Zky9lI6ioDImg
	 gWFefpXqYPhqaASYtehqJPHn3yx7XWp/9HR3uDRq2fiiTBtxioey4Zv0kgQ8pVJV0m
	 rz2Vht1TQ4Acj+BA+I2tuIJ7M1sQQfHt7eU38Volvh8hPH9rm9P+isYuabRfq7UT4/
	 T30RHE0LU6AjTO75nxZGL5evpToQ8sCnWH6+XKGGfQhN1K8oujM9KByNMBdl6eo8Q1
	 ZS7uddx7UED02SLrUvVIkKXEmUpM2VRehxS7xf162kAJe3RtsoU4d8m2xanB97+r5Q
	 w6L1yvaXpvy4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CEC3C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174377879363.2739.16865258432322609049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6e8145b32c926dafdc824a9580212135c0efa20bf095d10c92ba612edc04b07
Date: Fri, 04 Apr 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743778793
