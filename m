Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D3A302CB2
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758740394; cv=none; b=RSnpqkwKC04ZhMxVNLBpoC5JwEux9cQWOMb4WCd7Erf+r1FxW/vspvtpAe1ZO4PoqPDvaWTueKtUzf++tff2KsSbspq4a1HT4SxnDJa6VBmALdmiyaKgeEpe2cuPdv5iW5Gv6nh78MJWj9DvqywcXlBT+m/p/hr++/oxS09P0hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758740394; c=relaxed/simple;
	bh=VoUckasy33F9qRwG+XphuOpcDEe+JUkm1RFfkeNlZYI=;
	h=To:Subject:From:Message-Id:Date; b=C2eGgfBrQSFnqneZdWLHJH2TA8uJviivqRYX5O0HPJ6G/kCYuNXfm9mLgmEqVBS0lGvEIt61BcCUej+1nnTZhwLLTB4kLNwXRMeMfw9cUKBt883mgeqz4VKqzD7y2re/oHUUnlXp7STC1ITnewdQc+kerBhTf1v0+N1tBMWe/8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLb7FGX4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLb7FGX4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92B6C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758740393;
	bh=VoUckasy33F9qRwG+XphuOpcDEe+JUkm1RFfkeNlZYI=;
	h=To:Subject:From:Date:From;
	b=bLb7FGX43aYa64JMjtKtGQS52hFzBtw2HQ+DUZdxBVmEWZdKVhUezErBr2nyMGDpb
	 QiKSUYbZUJFnWsrZtVJrAm3Uify0S4IXo6Wzb14q8glFqb3AGEctkBbMmVfWhgxW9/
	 tZne/XyDtbUrFmA9h7in8Gu5hPWH23gcug7E9IzAmHi55fqiqMMeIFK0U3kECE6K7i
	 jmyWOb4lAEcJeg1wIvraTDBitHIF9TshyVPUA0g+YXkC62IiqYpl79sVhPtOw4q6VK
	 sYetkrwSdjfhvZVc+5kQhUfg6GKVaYQnWyPhVh6AG2teXzOlD6znk++LmxprBHQWFw
	 1F3uLfM0obgkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92843CAC5AE
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175874039359.17720.15059768169929585823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5927ca1cb7e689fcd685c7ac2766c6afe4f94a3854bc22e263231ddb3066f22f
Date: Wed, 24 Sep 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758740393
