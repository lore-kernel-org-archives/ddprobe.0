Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19ECB23EAAB
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 17:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776532054; cv=none; b=PzaL2BRyypoHX5anGaa4GopFCNpY28YlXtw86Qg5xFWBwP27udQbIFtstNzmeJoqw+5KYXWiXf8OysuJ/Q/E5413ohvftU6FChjVfGM1VILMpwfg0rlO7lnDIpW28pLB+1ZReoSE1bIip0jS7ZhSsnrd0Cgew0uVH6PUr/m7P4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776532054; c=relaxed/simple;
	bh=YsnJQhW8D4DPKtXANFGhqL3KM5YHXwdTs0kiIYWCxtQ=;
	h=To:Subject:From:Message-Id:Date; b=Yxw0EwqHpUwEyIOwTJvll6mHSOKeUU3dVUmSxusy80MeMFH1x4+tXZzJTn1Sfddj6i0h2gK9Hov47PqCLLzt3jw/VpOjKbflKLiZ6GDbJVoF7VnrpAyYi4xPnjep7Wpi6cSAdn+Y2TJeZFfdYu00r4K81KTkXSQE204YMWWe1hY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KfDkuJmC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KfDkuJmC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE75CC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 17:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776532053;
	bh=YsnJQhW8D4DPKtXANFGhqL3KM5YHXwdTs0kiIYWCxtQ=;
	h=To:Subject:From:Date:From;
	b=KfDkuJmCjiUcSLWFq7JNFveaxwn9H/GM4uaFqG+t27jaf8IJPpqUErP4WDczdzOVA
	 hIHCD/hDBOiPrxSnx1EjA35slxFMFRCTeXaGvrD/kqXNy0AHYlZc8v2NiwsWsTDsZc
	 iGn7U09TJIXqwHdCydRopdE6P8Wrp7hcz+bLpD+TgJRBm0lNXmwCDZUfzhUNXHb1B6
	 o2eMIoampxfZzoH6rlPC4nStkHi2rnqTmZ96OU4aJbKwzTJO9n8DD8kXFALDPINsB5
	 1yL2QgVPEl8VquX0tG3PPxk9JmIlGcDVYf0OZljH0Wg8L86U4F3RDowGxVc402hvmP
	 SZ+DFCqFqKDvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA02F99C89
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 17:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177653205368.25854.3786584413427347647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3337b4aa3cc4b184dc837239c8fe485a7ff7b216536d40c4235716c12325a0a
Date: Sat, 18 Apr 2026 17:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776532053
