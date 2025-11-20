Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B826F513
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 00:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763597514; cv=none; b=Pg9zieLb0Pr7pmEduxaeVppfaJBN+lJsafRRhEajp0wEtNL4lLQvjxdqcd7Ul5RosxpMXarqmWX8P0siZAFvFnfbce0fevbaI/bJv915Os2j/1+3QP3xNtr7KWt38kylvjBCqyWw7vY67Zfv3ZFdOrIgzRX6rygi6b/61eM5cnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763597514; c=relaxed/simple;
	bh=eFsZ4h6SfdMYroho4MhZtyr5Rh6s9ATOLJ8v/skcL5Q=;
	h=To:Subject:From:Message-Id:Date; b=CYFYJTaanRwEqDDdgJZsa0jho0M/Ym6ZLaYMkKkT9FIj2WFnarCZ4UV2CjdXFRAHuwOr1Z4L/KZEGmnF5fmZmFaAsxe/948Nb+EtwIroZrxrANsO3Seq0xBRgKwprU3/efvMo/bORgWqUgzux26zOkakla/xN1byXbGyp4Uk7pU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fMia1gBI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fMia1gBI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C19C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 00:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763597513;
	bh=eFsZ4h6SfdMYroho4MhZtyr5Rh6s9ATOLJ8v/skcL5Q=;
	h=To:Subject:From:Date:From;
	b=fMia1gBIXpLf7MZNAn8h7qNBUBekxgSRIdl2kJ7GvDnccvD7o2J+xx/8FS0e5r/Vd
	 LmQGSqn+Ka3Bvt+2tbRvPrZhC6JaMeUo5vpQjL5XLWipY882/8oSk76/vYBxLq43wu
	 t3cg+D8MSyH0lOqmSRWqTrPpJBcHMS/tPSUxiAYQ75i/IP9ikTwTiQEoLGoLqNVyyQ
	 ybxO7tzD9YDUGhdW/dEhUdg2qaRNb5t10Sx6PxY4KjbLp5VZUTgQCf/9A51y+LrEA+
	 ouarIEVvdYcYP3JXu8idnCkTGpL9ASoyKQc077u+qz/4Is6oGpOSyqAtSBXhQWK5mB
	 se8K9M0VI+fQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A4BCF649C
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 00:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176359751359.20583.14759813078911755256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9abef9998524e9749af6281f87fe52da51e8cfbeeea869417f0a0c45c47ba1fb
Date: Thu, 20 Nov 2025 00:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763597513
