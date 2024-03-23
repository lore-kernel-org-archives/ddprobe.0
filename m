Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D7C25568
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 15:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711206497; cv=none; b=MgaPKIwu6Y7tKplo6xQmSDHkep19MIzGafJmGS4hu9RMKKWrnk+wyft4kVXj/1Osg/7APFpYHn965MHFAdDdK2lefdHpBzRnp5CT5tSuvDW96HSC4C7LYic1z6lIjM2putK13XJ87AuMukov1WBKqfYkwkc/QTZo96llRQGO4NY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711206497; c=relaxed/simple;
	bh=Ir3N9n0is6kDFUK5vVmle6Feh0vElIR+h6CG2PKdqOE=;
	h=To:Subject:From:Message-Id:Date; b=ozKlip1CvGYE5PIAGcc5PIbUKT9xMHPS4MdzcBWaXl39QFoLbvzh4L0G+ctcr2HKyMN5i75IKd9FdGhLF3N1WsH5HsrfD8t3pXcy3TAy7OM8ZPG7hE0pR7UVWbXHTybNPauHwR3jDlTZUPWnbf7Oj7qX39UCSWr/Bn2K0dEG3Vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqFV89pl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gqFV89pl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AF43C433F1
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 15:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711206496;
	bh=Ir3N9n0is6kDFUK5vVmle6Feh0vElIR+h6CG2PKdqOE=;
	h=To:Subject:From:Date:From;
	b=gqFV89plqgmZxW0YBbnHSlfoIArPre0KplvzOHOXmKwfjZ02jXpRbnhN/sOZI+XED
	 HjCJWVL06/eRaWp9JuNz5/2tqnd2YMHP1aBfM5+sJag8FmEXyf1KLMLnCISs5vnn4q
	 WlUzfPtCdBa0zf4OUNAPRe/XAhoe14HYbFEY6igU0ImepJCGa/3k9Rzmm9xRAFxaAs
	 wc2uz0N+YnLFC6ohxtmxZkfRb7et7tkt7Yob/zQ4ZV/8RggfxmcUNVAd9buamOSf2e
	 IsIbW28SFi0g7IP2PTrabJka9XLhgBLdWUWO+lfJFTwy2W4+AWRti2+T/CSopdIeh1
	 CCChUFr+LJ82g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76C36C54E58
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 15:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171120649641.19401.15594631205790434945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 659cdf7cae324bbe8a57f51b74943959be0cf326750660ebaf1979ed9fa3511a
Date: Sat, 23 Mar 2024 15:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711206496
