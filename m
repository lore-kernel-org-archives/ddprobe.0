Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D5352F8E8F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 16:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778342854; cv=none; b=AxaV+QAKZ5379trcal33WLDfK+TOtbs3oAWmAKBgxtUXSAn3skr54uuoBRFgT6U8sfdLpquSTj7oYEf+1irvCIhtm0nP4BUwtiqwvJx3KyYS4HHm1YhgYDrv73xg5dsn1nz2Pz22/QpneNjDQ9D/1a39WeSdQ5eiufbvKUv76pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778342854; c=relaxed/simple;
	bh=7Qlwg4zHaEfP9CBt0DxGG9HXOE6PPO71pVQsOtktE98=;
	h=To:Subject:From:Message-Id:Date; b=p+RKGsGqekaEt6tVqcz79AzyLC9Ihqs4rgSIGG8uAf29gOjtmmzdzAbTxPDi1yJN7jtccR4dmV8+ItrOMKDBa66slnfmCWogSqleBspv+U/W3idkzxFZyIf74J8m1sye9peKzJFyBSeCbbogQfhgcoeQHO7yYov9kvxWsAj+1BQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=efuGKNvo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="efuGKNvo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 407D0C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 16:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778342854;
	bh=7Qlwg4zHaEfP9CBt0DxGG9HXOE6PPO71pVQsOtktE98=;
	h=To:Subject:From:Date:From;
	b=efuGKNvoW62YGI0Pr98vxffOzJK8k0a7uESDi6+b26v1EMNIKAI+uS4uQ/S3j7j3O
	 VgNi6EbWJ+nCeNA1ZoDOzEJxfxD/Qx0RXp4xLnH4R4ty/nj4ItGNqIiVxUdRGYbXCC
	 HrSDqRUmCcRAjow/66+FFozkGZZTPQJsvJAhvwY8T69d0t2iWLmYGU+IO+L8/MVNND
	 dGDfyxltZ5Yi+2IvGG9XQGyfuZ02YOQcZfvayIx1xmpoVU6Rna++ARV4xVloYh8pFo
	 sZJMs9j56wL7j0qtWJKnQ1LNMGnNtFGqeRDUdB8aSpnu4ot3xQMwuu2Bysb/hU++kE
	 NmNz8Z4I4CHLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE8AFCD3445
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 16:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177834285380.13462.8452512050381013132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e680d08d2c260f8d63ace15cd8c8c8cf0b301d219c2f84bd999f84423ceed026
Date: Sat, 09 May 2026 16:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778342853
