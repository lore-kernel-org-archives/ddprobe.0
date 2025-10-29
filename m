Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3217329E0E7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761777594; cv=none; b=ETZiXJEseZFY7XE93g3jYEWJLWZYmdRpQGP4tfs85NCHXvuaPLRAsXi95fmta6zGVHohLrN4+1k7IsFOLHUx+XZND9CextKytHFIdGWGyWdFGf4JLGKX6Ilk6g9CniG9zfyLn8dVq6RVkxGwoPxGdxYPGmsmxqwlVjkDLF796c8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761777594; c=relaxed/simple;
	bh=hO4jUKAHkKfOCsmRAUbRR9q84mNqWnpW61LR2tRoj7Y=;
	h=To:Subject:From:Message-Id:Date; b=IByClZY+RF0BfyePdqTT22nR56X/vX/Fv6jVQ14MQHYVo0ZEVwBH/kKw+kdkPEiPLWa1dWkofC6jipE8YSbOlvNTUDBtKekhnxFzOVAGVzrON79DOge1ZEA2O2MsJJ/+BJyMzAAX2VpeVxfve5w1vOSXLbJgisJp9gSePwzfU5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fd5nuddi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fd5nuddi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB125C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761777593;
	bh=hO4jUKAHkKfOCsmRAUbRR9q84mNqWnpW61LR2tRoj7Y=;
	h=To:Subject:From:Date:From;
	b=fd5nuddi0xKcrIrzp4Tm14MUU5FDbSpMT7MwsCw52kUHzPzPcYuPaNt1pm3mAwIxo
	 I8LHVmrXeht3UqHU1dPoBX0Tm3jNt16lazWe6aDVeLKsZge1r8xS0lEF4SV5YWWCOJ
	 uuiwW7zwQu34bgKCAIZJ8ww6ECQmkNgwrzK+wvNteojZhXMzHPKIbrwq+52yK5uifu
	 bcm2aJgO2ywBsgvK59f8WBgHk3zJPd6BQcyHoDfHHyBBQ6cKyLcXpF114xJPjRpW20
	 gtkcT+71VLVl6gnNObgbdB1jMifOcmUNugn8ubj7wm7y8YPL/d9h909Gj7NjgrbiX2
	 qtdyjxqVTazmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D6DCCF9EE
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176177759360.11675.2100372295027812330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6adfb466c67d87b5829bbf16a13a12cd9232278f8697fa2ba0a571f75f796caf
Date: Wed, 29 Oct 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761777593
