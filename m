Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4582DEAD5
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 06:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720248323; cv=none; b=d3GzdiQ8w3Ux7tFMeedXgsVg//ubqaMCQBvtobH74VO14dP8Y59edirhKcnqF5qu59HPOnN+dS5gHJMm3Thm92Jn9/6PAmFlCMyFueNLHWGNKkhnztTaDptZ6OhXbJR5GMFc8s1ZsXV2V9o8s5RRD+GlBwVeobs6t2oBADdCBGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720248323; c=relaxed/simple;
	bh=JRuNa5WBJ845W9mh8CKdRHxWgm6I7fTZh+ZYwfbydwY=;
	h=To:Subject:From:Message-Id:Date; b=oCVMrNduSqE/bKpK6+5f78d5HsFFuV7R+oVVpBjQp5KClg7JQWi/WzM/fhbKXrV4S1dNi3nw9CLFbFIaSXjgQBQBFTQYhTFNmp+qyDh48atTMSRkpQrg/A4wHud+6uMLUXnndsM1NmG2Tz/7pwvGPIODxbTi5SwpcWBKtM5sTdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTV5DHXw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gTV5DHXw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC4C6C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 06:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720248322;
	bh=JRuNa5WBJ845W9mh8CKdRHxWgm6I7fTZh+ZYwfbydwY=;
	h=To:Subject:From:Date:From;
	b=gTV5DHXwpmI5492/cUzW0HtmP4yFrjez+zJasViYezYO4eD+cJ38R74US7WpSEQwm
	 3vB7eogLbqu3w41S4se1UhVzM9Z6k5e70kMKMjLWoOYNlunsbXrwLM9wfOaCmQtStL
	 HHCf4EY/odNHHze9jvjeNiBNZj6390Ucquwc3sILbqFdGF/rM4+iOdX+QVe9lAxP8F
	 NOAduyM0uOwQlliFKzvTNQfBAKayeMi616x3FUYI5RxqNjJCMA0TVlbyY2M9/4ghca
	 631RcOyHftMq6IHQxL8bUjwIvqkOjwv7nSJWyuLT3JcbJJISS02c2zWB6gpPlVq72T
	 5NKNYSNtGwKPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8A86C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 06:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172024832281.21419.8981539136489588205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e9e9b462a746e69c8e56788f62c3ed227d145e055f240435a691021429b2d97
Date: Sat, 06 Jul 2024 06:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720248322
