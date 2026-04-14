Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCFB11A01BE
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 21:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776203253; cv=none; b=T3XmA3RoXr5Yb/qm69UPPkQ37S7iXJlz/CbkS7icDRZdngswKOhFkc4TLR15+0rUlQXn4Ppv4mPtCU/CJAaTOPxG9hXLNBnWx52kHk6mNH5FLs5+H2zrzHlandWsXKALojkH3Tq5jciAcPhr/kzjCHKppYHyeXKYc9YmB+kAkMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776203253; c=relaxed/simple;
	bh=JtMnM+6FO19a5LunqhQKsWPNPB8PbyqeXINoRM/Z5Jo=;
	h=To:Subject:From:Message-Id:Date; b=mIfUZc/ztuhjqLe0N8kgkdh1G+4DWFodkkKZkpRdcn6K4sOjjB6qqI0/83Saqea73K0ku+dSGKbz+CFME/rvqkliFrT+ae9hCpfP7YxoKXogDkD0kz9v1aI+3RhlMRsCs0912DR1guzWNI3OmI5sya5eD68BPGYad2kQQYvZnb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yr2XYiXn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yr2XYiXn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE8E2C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 21:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776203253;
	bh=JtMnM+6FO19a5LunqhQKsWPNPB8PbyqeXINoRM/Z5Jo=;
	h=To:Subject:From:Date:From;
	b=Yr2XYiXnUJkvpjB1ohcIS+/bzkHc6ev4AjpIOGxEdR6UMZwUIAiEm04PfuaLVjAZb
	 J/lFsxu+ud1i3ZZM6/InYmOzM2RFBrfgQvRkGFlVwkYjs+fYjfjyPfVTqyJlkZnK/l
	 c8cRQ47gL0P4vy4hwtuiXXWzU4uYgm+o8UG+JJOLlosvMdx08UZOpNVnHB4I+DDR8M
	 fPGJ3bJDOcc5s2hxq/hcWJaW/Sme/eJtXIZP4lA+exPuyOeJ7q9K+Wuo7NK8AU4Nuc
	 UoL1gDoGanGol0/W0pN8Y+Ip6WJhtSZmhxb178jQtnzKlyfF2fCkMJBdPWiSWpvHaf
	 Hcjgrso+KcjCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB4EF9D0F6
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 21:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177620325368.27986.13659320177214223287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18d50adf20ac38bc658ca71b43647a33e03de93bcb9d7f7aeef9888c759632a5
Date: Tue, 14 Apr 2026 21:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776203253
