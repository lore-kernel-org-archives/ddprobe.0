Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9B91519BA
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744453794; cv=none; b=WB5HS9VJ6lxFb4AuCV1/26F8V0Sn3HfND5yaPxZjAPZmQImYXqudW4+fqFWya+lOtVaEltFd3JHanRJeFK3CKgoVwX2W2PAHsONql30K8GbLCjwHZhulJIRO7Mban8ILMK6n4oBxIxgMmCgSl+Bl3x4pKC+kIL1/cPkfPVq2v30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744453794; c=relaxed/simple;
	bh=yEAJUp/4wEBVNS7XzB3HAv9YKmUoYKUNzXSaAEeTSHo=;
	h=To:Subject:From:Message-Id:Date; b=YyJkWvCTa5BJLzXMB2EAZrhfoDcG5Lt3yBTfdWkFQ4Fq3rDdl10P3moEpXDl2KoE9BtmUCjxKZI8TqTn+AF2RrRuRZfGJ3nVO5bL0iZBfY5K8CnGPVICE+1cjBFEAjJtWeRPzy+L8yhhO4KcQRFeDBVFUdY26RMJLILPzieMiRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KM2sHBlb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KM2sHBlb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A830DC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744453793;
	bh=yEAJUp/4wEBVNS7XzB3HAv9YKmUoYKUNzXSaAEeTSHo=;
	h=To:Subject:From:Date:From;
	b=KM2sHBlbNG5Qc43OooaV76cg7xjHhcoG0ucAHqAzFrt0rfSrg63ZBtuwncvmdzQ43
	 zpb1LYRySeIhQ2n7v7vlXbBmNpZ8AjdnAzoSuSZzpOxIZbz88n+sDS+CXB9bB5iYEP
	 LKADUi1m5PmasBcPY0ba7WLGLHvcAO+YX63A/ygRQgQdDvWNVqZ09d10SA/7MVlk1i
	 z//lR8hhg2JYmin/0jyyFeJyac7eo34Q7aLhWFdpl23YKUnG/l1UHcNlRkvDuYQqGO
	 DrAZFZYXOWuLcdo2KCUpFLGlLgn9i0FKoSZfg+UbJAT9tPEP5aJX5dt8QJCrjyKNY6
	 XpPP5HGyzHQcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977F5C369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174445379358.20354.12057711086038148426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8afd385a14f3e2a3ca25aa41c0b976afb02e5cc84f454ef5147bf41a381dbe15
Date: Sat, 12 Apr 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744453793
