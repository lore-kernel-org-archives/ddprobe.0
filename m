Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118A4D299
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732664754; cv=none; b=cYoSYtbVgs8togDSvfh+erIw3a7l3Ug7GhI34hqAXrxndLpMwLOxojznD2umBCreAGJsuXdYCMYozhXlInSlld0xhwLaBdNBBkDL0XUUv7DdV5HSYPYMQ910SqyNN643h1Ahl4Dj4moBJMra5Ou8+b1O+7znbQWBKm2NVmV0JjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732664754; c=relaxed/simple;
	bh=S3m7cG4tfyZehhHf7DMTuaJ8Xf5hNg/pX+7Uxd83Q/U=;
	h=To:Subject:From:Message-Id:Date; b=XuSm2wuV6W1LQpmLXz4fOAiCMw/Qmwp8vD82UqbgODN19sg7lnzf5WPoHjSe6QVG2RmQDVWPAT1SZSxqWGeSgwutHqA9OLIz5xxj8h++h9d2BYl6qeJKr7qvO0ieqE75rjDrOmSZMpJcbPF5chLuao2VBzERiM1l4qK4pcGeEws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BNpek2oB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BNpek2oB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BCCC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732664753;
	bh=S3m7cG4tfyZehhHf7DMTuaJ8Xf5hNg/pX+7Uxd83Q/U=;
	h=To:Subject:From:Date:From;
	b=BNpek2oBFTO8SaKyt/VYPwK13NZI+KEHLhTT5KgRj7QD87m35cQ0asRFyjiXK9UET
	 BpgB2HQ1moc02QrFWaWz96JaJBUJxUapywNHC/4G8TYw2QQdmuAjFVX1Ntd9dGLgQ8
	 q0TKq53OXLS1WPPnnaz7GTCkRG4k/j2YRSS5wHv6SpuSNdit5ltUROXcoOiLnuRZ0x
	 2BgVJYTAJCUmtmA09/h0AsYC/5+rKpqTSMLyCcr28YVworfB803OLKYlBrLfplyFYM
	 UB30u9fRZH5wtMec/rek0Y8c1+J39SDO//qfy7dy/3+9ABXeZoBq+aVrm/4P7l27bN
	 xqT7qdb4TUQGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D3AD66B9A
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173266475360.15886.13680447296480009201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aa338fd5d506ef2d2cdf442748550e04477ada4b3984ebf624ba755ef83e025
Date: Tue, 26 Nov 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732664753
