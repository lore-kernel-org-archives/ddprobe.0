Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383C122DFA4
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770064434; cv=none; b=J3saQS7mCWr+hmliCAUeTnlEtijt7ymlRQVXRZg5ahEqaTMUoPJ4H3FBrwjyNisFEL7Xmey1IxPVxSjQMprPQpjn1I7TjOOd/picT0ZKUil4m7fUGkrwU5Xn8xGEu5w009EcPWzRSfFo4Ddq7KXyP31trd3u8z/NM6gV9lP0Br4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770064434; c=relaxed/simple;
	bh=oeXmnW1drZSzYfBQFnMe2AT+58kONrKyqphjo1O5cNk=;
	h=To:Subject:From:Message-Id:Date; b=hgKiVgJO65DzGvVcCfPyJ/BiVMP9BKxf8gITsJd4EDUoiBW1HiCwsASEWQeOssTH5R+28UG+nuqtQaAIK+8Wthv+HuUDTAWEpCZ9EnFxGJ9r5eUv59I/hL8LEguJDpF75cucADXvgaG5jDJmoDa3YwlQVD+rKaelglQY8mYaX3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gGoiwwsK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gGoiwwsK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE320C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770064433;
	bh=oeXmnW1drZSzYfBQFnMe2AT+58kONrKyqphjo1O5cNk=;
	h=To:Subject:From:Date:From;
	b=gGoiwwsKEONIg8v0JBQ789RgaubjO+UkpTEwrP952EjxHBV+8iGLQzY9OX3EAwKfZ
	 XA0mygxn9fKygwJh/fASNSYssEg4/XKoYLX77xff75Bloj7w9JtHTdF1LOTh3xtUQy
	 zbJDxhMnrZST2dhvj58jkv+ZuKDNTT6g3MdsL+1QNoy0qeD+Jzio6N/1ATjFfdAxJE
	 I1qRNS8/99R60XV6Npn4byspDm2CbMk0RN/A/HbVCsxSDXdrbt3drc9tiV9+/zuaUc
	 3fEzj45AVgxN8eTysuBNx/lFabVdPRwD28Wa4FGeUetAkATz3Ip1QF11/qZfEZWJp/
	 eeox25NLKFapQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2D98E7FDC0
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177006443361.29509.11175221280004458435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 737db10c5392f8fa75a0a1f7f0c4c73a4e753a488f1e765eb551516a047a2a36
Date: Mon, 02 Feb 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770064433
