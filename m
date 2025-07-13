Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F60B51C5A
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752425394; cv=none; b=sEbsI6IHrMx4qtnI+GsxPwZMCF6H52s6Soar34x+CvrLLsJpY2d+QcaDHeRt864zfg7hoO6TRhLKiLhtpYdqjb1EI2pZWYNkJe5ye7ZupGxChTCP3oOzeCeqIhyUIEk80OXezk3JrsoCjqLfrRKdNjfX5AGcwFIBowkrgOVEOMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752425394; c=relaxed/simple;
	bh=ycVVCzYbKTMn1w9li6HMj+aV7De2nkSaTUHxylpGQl0=;
	h=To:Subject:From:Message-Id:Date; b=pWx6M6VLSbOuZXtWr5s7Y9nINj7ppH+zQN80tcmm1OCbVS7lVS1r+KgnwJrmZJciOXOLtlW5ePemNVHzkDpXP6Co+1ZHPT6c/IwSwXzRp1WDvP9JmwaK6UhHz8BQAj4owdSUvHuXvlv94SfV+0wBHOn1cEt/FoIGXZMRxEI97uQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UwqPQswQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UwqPQswQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDC6C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752425393;
	bh=ycVVCzYbKTMn1w9li6HMj+aV7De2nkSaTUHxylpGQl0=;
	h=To:Subject:From:Date:From;
	b=UwqPQswQKN6ElH/OgTbLEUOz8/p/Y7JVDB8PDXoO+gPzQBiBe6kKMx5xVpdlX8mbI
	 UMaM+EzmYSwLVQBzTJ8fgTCuKfIOt40Q336R8O/UYw/mR94+v3iv9HcVv6D1wr3HOG
	 ODVDTrfmzMhbATHv7POsYOnKrplRUFeFt3WQLOBjeNhVyy3CIYlwkTd289iTWq48s0
	 cXPJSSW+ohm8vALxuXqdzkZ+LwE3pCyAYvXRNaEIYHxeSEtCSujz0bVJ65vfVOg53p
	 cRLMEFOKWR/Xt2akxOeNaARQwr9y2ahKlckvP0ku+kGyR85ZbOCga+gAMqpoTCMwjX
	 q1rq7i/us4k0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E409C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175242539357.7887.8318275183799280312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13d9677e2a75cffc94d00b486e3bddb383798a93c38b37a97a97d7f53caadd43
Date: Sun, 13 Jul 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752425393
