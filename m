Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA9B1F16B
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745369994; cv=none; b=Fs7MGqHeIcisMGVKQWGpt/V4LRSygN8K57oH1N6Czwtj9rWWFz6ZRIe6ROe0KoujsbgGYGM5K4BZRDpqXTU6VmU/Yqi/wwQqM3KpSOop8ZPiJL8Qb4lEcdQdJnnRi6Ci1yJgmYxqf7Q877Bnwd8MNMsxvlu0rDjUmrqPLmTwI7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745369994; c=relaxed/simple;
	bh=vk7LsOL5O62TeZ1zIJ3KRXp5/wQAYX2N2ch2BPS9XaA=;
	h=To:Subject:From:Message-Id:Date; b=JgOMbTa1Crd7Z5vUrUZeS8Op97gwdKfNIG9zynsaloI4qtUY/jf0FRWBzCRLnCsES87fFqwQr0k69//F0a/KT+6vWQTEobPOX8N81Zy9/CFPjl4g3JbgXIOqaxseSPRyQYEZmRi2Xdhf+mXZfBsyUYb2mKDiNRW61qYTocTfy2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VtubUNT9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VtubUNT9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D79C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745369993;
	bh=vk7LsOL5O62TeZ1zIJ3KRXp5/wQAYX2N2ch2BPS9XaA=;
	h=To:Subject:From:Date:From;
	b=VtubUNT9Vgs89Ee9AYP3Y2DreZk0nKqHRZG6upKvHNUGxhgmG8k5Zgs10tMA9oxbs
	 wm4gdqQbh71dEVQ/AoQ79wiqVzVYFsyLE+MjDedzDVoqPlFeQe2ieJ2tGfn/vZwUIH
	 ugsscujllT34zBK8IW1U2Os+QC9OvrEwQvwsgAM8KoLuAmCGzLikRF8gfBE/JENrPh
	 qlhEJQnQ9dI8MS0jY417vPjOWJpTngGssts3GN6x2CE2WErwyZAVATAmrUN++cIeBg
	 F6xEtj5jAZvj5/ujGlqx2A8H4wIRlWTI3awPQoTXJ/S7ewgTSk+Gxhf4cdV7OwU36z
	 J1bQ/uHxJG8ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93387C369C2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174536999357.8818.17976574324330562517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 841f2a0f148e84b86e711aac2360d49f8aa2c39ada6026f3bd718d5f7f175e7d
Date: Wed, 23 Apr 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745369993
