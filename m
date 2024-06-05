Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6C62107
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 01:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717550183; cv=none; b=cbzJkHgo5bMEIeM4jJDjLlH34j2mpzYF0DD9TCF9bscH3UZNwVitDQmGcxH2Wmn25a2THzuyC5mCTtY7VpCUrGHqtMd5l+xZ7Ief1zOjj7RmCn7cyCZQlLYRZFXsQD7fSZ2G2859MjPkuAYbgs0ayMHMKABDyxl2kPVD154f+/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717550183; c=relaxed/simple;
	bh=Dj0Sv2FkOvX/BLdYtKX8SRuDFolOx1wk9wolrZnuloE=;
	h=To:Subject:From:Message-Id:Date; b=pVe9f7BPxpYW/DM8fHZLk01i2CLvq+3KexKvScAArFHbN1GsuD1AL8BdJLJM1ExZwMC8fnIKVhErLMGs61dbD/hE24TMwoF2rOKlPlCxSINSBEcKOnnCP+aHaS7RQ6g94ijUsdOsGwc3ISrOH+IBJHLHyOQ0q5zifKz7V4kRHJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E4Bc30sN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4Bc30sN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1BBFC2BBFC
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 01:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717550182;
	bh=Dj0Sv2FkOvX/BLdYtKX8SRuDFolOx1wk9wolrZnuloE=;
	h=To:Subject:From:Date:From;
	b=E4Bc30sN8tctXJ2r0WqdtMVxKcipqmbpHJgXDdvklkU1LB2u5/5+aXrN+X/WwCpgI
	 jnNmWIgDsehK0v95sC0ibQZzIyWu/jJ+M08l4mUjM2fvS5INLup4ELT0LolZGmkiJG
	 Psj+a5+oCazB/8VAXyCi5skfjSoqdNOq9+JBCYcTNNAMAIMFZEJ2/tyQHj3tUKnNYR
	 ATFD8Ewpu1vbr2P55NNxGkURQp3tngoSHJ0g90T+s018KZ2NnDnHiElEEdd5K6DPnt
	 zXb63lkhzUJQ16AwcINTTZ3M/7JIdY1CJ3ZLuOHrW6gz9yPjM7agVu/0R3ysAQTknN
	 aEqdJs06cpk3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C60FFC25B78
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 01:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171755018279.16027.4375694237836266068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 331ad7d85d7b7c36e126b5f543e3f18fb1d1ca5c4597fad2d99c9ecdaefd65c9
Date: Wed, 05 Jun 2024 01:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717550182
