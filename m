Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215CF1F4C89
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754770794; cv=none; b=V7f5YEhfwLVuTRQYh1uAsd9k/BAAysVIrH2fXtmsxhjqBHc3/KV3h/7pO4uncUjVlzBMjF/7ZbTiDSFvkg0SSZcmpovMQxtPuqyFrQ3tbYhUcGlblaqJIjz4POCrGPim1Q3w/ddFAVH91tMCWfxv8ZPxdIwVopzSTE0RhKW8yXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754770794; c=relaxed/simple;
	bh=PiA9bRo7Qvgus4pSflCAv36hNl1miEHKo9m9T0xBweE=;
	h=To:Subject:From:Message-Id:Date; b=rTd4wqW5ncDZhUSFU0tTY3xfPffygTr6rsgse0JB0ZdoS5pfl8scepM1dGnQDSJvG8RX1hgfkV/Dt2Z53rjSd5deNhB2tAz4VDuP/QCaqNKAGENcaKjqvX2l5n3spFa4FUP+PSE72Z8gZ04yd20G/4zCT1AqYzs5kE/y4ImmmNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RMhFkw5S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RMhFkw5S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D894C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754770793;
	bh=PiA9bRo7Qvgus4pSflCAv36hNl1miEHKo9m9T0xBweE=;
	h=To:Subject:From:Date:From;
	b=RMhFkw5S0tyUxJIIaoyCqPOO0yFGcft426uIpL4A3oiFoRQWPS01cyQVOzCR1X3Uk
	 7yfpAfuc5/QBed9JcA4g0DtvQDnLgQo8EfkvmxOn2v7I5C0neDaK2Ep/4JXFwLlJqS
	 J/zjyoAZGnTgZsX1OO29Q3gML6MZ2Q1Z5ABSR1Elcf8t47w86R/7eXJUnRXbcqPJZw
	 /w0CpAOfHgo8sH+dH2PAA/7uku7ssIZpefXS+5kK8ZG9IBBESW6LVFw4lTPH2kqr+p
	 tNunDJNRsk/mH4bDH4wuWzcczQz8vxYgdCeyIMKbuetE/lqFN5wO9dBOUa1PA+gCT6
	 KdleTFuqIUWoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB4CC87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175477079357.17013.4103954964564817993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc59b656ed51cfac8b460c5eff0442b1cbc2e287da4680bd809c527eccf4c790
Date: Sat, 09 Aug 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754770793
