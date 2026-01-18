Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08BBC17D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768718034; cv=none; b=PgW4lrL7OAoiawUEx4fGswT+vrAn5WxvE8zryieUbbTLNmC2OLDFGf1ie9AIyi4ouK9DK2evJgZfdSc0xjddjakQBuCQSQCCR+NlAAvdakLHXU8X/0fLIaOBeRO+zIkU+Ej1AWdDfEVHxVqzRSpCh2VhWRiw+zrcF3KiMQOf4R8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768718034; c=relaxed/simple;
	bh=MsN+5Gq1EqZDBsyj/hv4odXwXpmknJ4D/LOXAHbOL94=;
	h=To:Subject:From:Message-Id:Date; b=FWJ9ACnVezAnUqdtqt7xlNgG1i9EYWjDc6crbh6dWp4iejj4jrdyhvZsgfdWDu0m3IhnnzQCSQNs/bsnTSAinRHALI6hfmYttBTNyxeyK9B+BxBpGpAN6Yp/VTKhM1cegepLYsECqaXg0cCjnYW7LOaho6sbbCgThtZXfCM3TUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rSLnSihZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rSLnSihZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C36C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768718033;
	bh=MsN+5Gq1EqZDBsyj/hv4odXwXpmknJ4D/LOXAHbOL94=;
	h=To:Subject:From:Date:From;
	b=rSLnSihZpoUhhErJVPnq8qEai6IB1mB/u9bDGNGbDCFfbxgqU0XaLS5OU/bDn4rW7
	 j4EMvCW8aFv2pcJDnhuF2zDcW60+8PNHG0ihNOQ9RbU+KHQ9X5MRPChJZeEzrz552w
	 8nhDerTcWBfDRXKay/G9C5podw0ZVKolCer3UZE7Pk3YMPxmyYKKwVloAMdzJ4yfRe
	 kLcCZLZc4Ouj0LS8OtNW355shBxZzRmaDv2IFtHcaSE0tluDGZFrgctcPZpxvaMzE4
	 dVA9BBFnT1+z6cpSA7zLylR2VKBev14x1eqkSsSUo+cZBzA35zIovcpklH1pPNE1UX
	 ICIcyNadgIsaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3DCC9832F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176871803357.27627.13223131575896661057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3de1686dd91bb257ed0aebb5c2ad5be8798de28aa7d39b7bfbaa968b2cf35bf2
Date: Sun, 18 Jan 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768718033
