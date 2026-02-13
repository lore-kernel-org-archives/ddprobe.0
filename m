Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCD5626F291
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770974693; cv=none; b=jms/K02NFpUzWogWVxxOLwrktYwPJWTpbscfFF580tE6o5kynvz23gA7nzW03ZOXHsc9sosbbtVqFbpbR624BCgRRmzaNxsx/ZdFGWxnMHKMWhSeh6dC1EBehIfcCBLhzUGAFFpuIQEU76u2i0if+jPai5fGuMD7BhybfMzKGRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770974693; c=relaxed/simple;
	bh=XxD7cC1ZAup7s+7cI9rF125snjYDaHDy3oapS64aaWU=;
	h=To:Subject:From:Message-Id:Date; b=JHm9LwlNEnUBbyRFYVmEc+ugUKLzRDGr/tRjGFuGxac93G4eLrNKw/nXCvUEJ66DS/2nZOTRCLwu8uC9wyLAZHeu3Lo7sS92eKY+yL9//DeHz6ywui3TvdI7mB+bz5w/VvHJpaZB0fEAbQP4U5OjJwRi9cQTiS+pb8rJ0zMuMRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/rBdlhz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/rBdlhz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FE2C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770974693;
	bh=XxD7cC1ZAup7s+7cI9rF125snjYDaHDy3oapS64aaWU=;
	h=To:Subject:From:Date:From;
	b=D/rBdlhzcBkhCyui+vkpAEZt3XLvRNJXoAiNiwm6GGY2PQJK3JIn60DeRhcHbfQr/
	 Pbpm8vGZqR3uBSpId9yXqo0PhPwxRbQ4kHL/Cf8a0jcuCNRnYqFvcXx7nL8UanTuS0
	 FSZ2zO1yO6wEg5N4URVUtGBYzuRTuLrecEPR5ucDc10tbWw1TERV7inchoJvbYePKc
	 yxvCzytXaWtnNTykjNKym8DKOuFlGTUUlzUZETHNpduyNSD2GJlgQhiHucEjsi8E48
	 xhPmOdRlSL0AgWSMDpzJNhv+Ia0iKbdEG12aECkE2jpAddIaj00/3OrgoUa6dji1o+
	 I0EFaLEsobqcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D0BEE369A
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177097469359.16098.16339054946782725895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fb144039993ca763b7d3b0519705a41065fdb0ea10929818365bd3059104678
Date: Fri, 13 Feb 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770974693
