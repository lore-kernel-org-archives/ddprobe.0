Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6257B1F37C5
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 11:15:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734779755; cv=none; b=lnyG9JYrcCzJ6+va0ZDEqCyOsaPlESSqAq5SLM6CLYXR1FFo85U+kqqH/9IYlOAMLH0HuoYuubgSObfURmhKNFu1nA6/ofQiq7+YpF6BQzlxkpURLIy/jBdobK8RfUfMP+evbjpEBX1lXnfLtd6zUXjHPIUbWu9zvETUtbgNa5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734779755; c=relaxed/simple;
	bh=Oz1YCaT0B8q2LvB9P7xaQe3jhSxvftNbubs1P93tbjk=;
	h=To:Subject:From:Message-Id:Date; b=JcWVw86VnvG3IpXotQquLHVVyS+3WClSzryuusbXV3Dv0sBNzlDTbLfPhQNIjHZHD2dAKK1mxyUOEqULlKdZk6hJ5eSLsWdKWXXONtmN4htxPDLXbFQ2JX5vGFxmbWaKiws7HdDZ+xVb4AixnElexOXOblKpUiL5GDZlj+gJYdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WaxxmwuN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WaxxmwuN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D8CC4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734779753;
	bh=Oz1YCaT0B8q2LvB9P7xaQe3jhSxvftNbubs1P93tbjk=;
	h=To:Subject:From:Date:From;
	b=WaxxmwuNiisL1NAtKGR2UVn1svygXJnvOnRgR2VUP3/7YAs+ANR6KfksmxibyzBiH
	 ZSAAS9nvJm7rHooNCj0fz3PXjChznrJjTmrS/QT7EJ1tl71Qdyr5xV33O1GaXliJwV
	 1lfnkTTV7e8JZqi+FG5s7l5yKCNXH5g8xBjty4pqLi1LFRYco6SMzkGtR1yBdC3j+2
	 lc8APPigJcOaAAVKu+A6n5Ycptglmt0GtoSYNe6drlnRvUMSofKcUfg7aoneOwI82F
	 24larwbFEjkOIhQK7ctsKOUQ17SLWacbSs5TBaFjT1hxmTArTJoJWyIe18P4bhajb7
	 IYj2YPtlQqIpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969B2E77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173477975358.24302.17404858839658933660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b2033799d054347a73aa38f55cc122e2a694b5487344120de4df9af9fb31106
Date: Sat, 21 Dec 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734779753
