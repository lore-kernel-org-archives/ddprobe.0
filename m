Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A7E3EB7FA
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774522494; cv=none; b=njo2ubqKSfQ82lq68rIQsfeU8pKJ2AwNpGSsLXJ12hX6mV7LWLCkgOk21IQVx/kn1WnsaIBW1hGalwefJPXz1AWWZkmpqVmSOVbwvy9Yczq2QyNyf0X97EN3Y4WOVksMK0FQnvVlj1jGAtYQ6+DHoepngiaybOvLBCJ9+5ugtO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774522494; c=relaxed/simple;
	bh=1l0SSne01gZtKscjROzh2T/rpVBecNjrT5oqjyDYsFA=;
	h=To:Subject:From:Message-Id:Date; b=PQa5HwqzXzjl11S2+wJTE0cgtSy9VecMnPDe7cGaVT/L30QFuHrHBsHuuJoi0jnc8q97eKNP+H2fqE1uS2JwUqwGDjidvSDmg9rEc9l97dfw/iqNAbadO/ht+xAbAZyLrRxBq7XMJrIpDZn5chBwu8dnuFKEf//PDcegAfdRxH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mo99oXmL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mo99oXmL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6ECC19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774522493;
	bh=1l0SSne01gZtKscjROzh2T/rpVBecNjrT5oqjyDYsFA=;
	h=To:Subject:From:Date:From;
	b=mo99oXmLZdh3XAKs6Tu0XmXWVeBqJ46LZbjxfh7roaB3skm/ZI46jJWkO/C4IFFkk
	 7ixxJmIwcT/DzTLbGKxkxxg1/cocZAJrJ0vX+fAf+O/4K6/AoR8/hXxVvbbApJ+Bo3
	 CLgz3tkTGxyYJFZQ0MH3jjkv3/1twVn3IOZPKUkWBMtPI3tNYqcIx3Gh13KeuL0wsT
	 IyKGnPPSF0fIfw1dFwtUqbn1Dr0zWJlEEBogpzhImDcYhQtBudAZ5dpDWvHg1ThNTo
	 fqrzova6TiNW6Go7tf9mCcOKG7C6D8WYwBa6Wc9gX2ff4y1ckxrkVq/08GII1UVQ4P
	 9LJ8YKY3mCXeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9216910A1E67
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177452249358.14215.329095937339591118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 322231306975a587bc659213cc87d792f663f4c8995360fe76bec7afc88eaf6c
Date: Thu, 26 Mar 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774522493
