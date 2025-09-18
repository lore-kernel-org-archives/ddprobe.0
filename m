Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2735930CD9D
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758202194; cv=none; b=nHerKq0SabsN+2M4F+LOrGeKXh8Z+wkJWCjsc4+Ttp3HIH2jvxf0+3C6tIdA1ugma7xjL41aN2jys08mdguEb7Ex6QQNh2rgV9szcj07sCfUjQraz6zgfnPm5l5iLOsEVf4i3xEl/1i4PWfHpjFBG+ePb4yPQy6Zq2GdmlqmGn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758202194; c=relaxed/simple;
	bh=2jVMUSFM6gNT62uhI4mgMQmDw/oyztKyQa3DxDvj8Rw=;
	h=To:Subject:From:Message-Id:Date; b=E9RyprgRjrtxzCYT9PCXZjP+v/Y8c8Kow1xXf8fMlufngguz12VkTrQ1xcz2gICQ8KMWcA9LDOEnhLpBRblHVnOsD+/FCEv/e/RS42zWp0O08LzpTWHMYUjx2twSpFAneQeNbp0Js9Da9mWFD5V+F6Qqf1h8H3T6/+cgM8hkdRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q6MVglgc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q6MVglgc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACEF8C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758202193;
	bh=2jVMUSFM6gNT62uhI4mgMQmDw/oyztKyQa3DxDvj8Rw=;
	h=To:Subject:From:Date:From;
	b=q6MVglgcl+xpvLMK3KYVQ62DSEwKAyH1d22QyOCzsb6oIuxx9D4MEFv4ZEDDdM2/d
	 fW+mjApn+FVd6t/aWc8wckt7RYDLAbWNm3rfDxbUtd8yYrKeYYUepQyKMsJXwfuhaU
	 ZhB1RkmtGhirGZjvzDkUIfKli+lvDa4zBlWSM5TK+bdHiSCViCe0rTmyRlhFHKPYpf
	 nGuEieBCIPofGVlMfBdh/+a/dMRBoToRgbw7UwmS4NZqH0G1sweq6+UsHguX7+8pU8
	 ymqc7mJyHiAAZygt/G6W1BAiJauG5aQUaVAiGVcudJXJT1VRx1XdcKV1y7RSLn1zRJ
	 xPq2HarL+r5QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96442CAC5A7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175820219359.23050.8104493274888026171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a808c2568c4f57baf118acb627eda8ab99c53573e119734aab1fc0ee0b4669ec
Date: Thu, 18 Sep 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758202193
