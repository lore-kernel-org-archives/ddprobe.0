Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628EF3D76
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791683434; cv=none; b=KI6mJtQzF4EcWNqrcZGucnRnq2YTUhUERPZbVsW2LHzQ2uOsB+JOZSDBkAiXPdvtMNrAlx0Pi3QquCq2q/52tnao7+l5wsmyppD345jM3bt3tUbUwDPT92GUaNmtTWA48zywaQIJeXi6Rqznz4FtanRMsyKpK/qsdho1LQP1ECY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791683434; c=relaxed/simple;
	bh=Iq9Jwxx/L1+kfRfOMimf31XdGThkkiffPd6SY9s5vpk=;
	h=To:Subject:From:Message-Id:Date; b=QpPmTlLP2GzOsvi58AT2evGCgGH6/N5epL8TwS0m0uxt1L8hOuYoS00VmwiCjpbfg6QSdJ+Vh293TfSfbBDfKX+JXgAA5GkfgEfsBpZdHaubeOehsvs2eXpjZmxHz2Fy/oFiS1ifqHeaZs2Mk/IK1RehuFNhyjJpgnd/u745Wow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9fONaeY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9fONaeY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCC1C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791683433;
	bh=Iq9Jwxx/L1+kfRfOMimf31XdGThkkiffPd6SY9s5vpk=;
	h=To:Subject:From:Date:From;
	b=W9fONaeYAY+1Mu9DEMSmzQOyAc+kXyJgj76i+I38Hgt8UAsZS+fCMGkR8RUsCSI0B
	 TzbdF4/ZfCtHvdZ/nmpNLiXpp7ucQNyeQKW2b12Bh6jYnaYhkkazgwe/SrfKt9g9Y4
	 JbLY76b4pVyY+KIERTwM4tkkasN0asNYTMXs8hmtqUnlM4nGWOn2H6mMDOdA9eU2dW
	 M1L9eXjRAVf21VV79J8IvpQwOBUl3zZqRlV6alox3xPoWzfr3Tr9HSlmeE3SZtkn9E
	 OPcJ1pTYYPbY0SwGsOPCcEftzZryhnwwFg0aF62WZMoVTPiFpOWdBIqmew8ly7Ymkh
	 voGhwgMmojOSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6A8CA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179168343368.30948.655052748850975604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93381e1dfbc7bebd090a8e99385a6d162c945979f3f601bceade2546cdd18d61
Date: Sun, 11 Oct 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791683433
