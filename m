Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0619C168C3F
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 14:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719844523; cv=none; b=K14Yud3eolEpsn1DXzk4ap2nlJdaM1MIizrwwLIX3rF5yj+PFgN3rBSz2PhDkIUu147Nn9A7l7pGa5dwlb6o4PrhzucbcCn+RCYJLkcn5xXyw3b/C6PPdxIJvbd05rq5XS4ATP9i8+fdn204Mn+rYV/0oaToKtsOlaqP/doG3Ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719844523; c=relaxed/simple;
	bh=5/SJaKa/7967AkZJfP4GeG/8F1xpu16me0ploweygH4=;
	h=To:Subject:From:Message-Id:Date; b=Pqdhi9o5TpSqQ5A/Fu1h6PgUhq1uCagFYOUj5F+7mT1tOj7RroqAtSOxqqMsVOSWEqhjkdLy3fenn4EC6fELTyaEEBbvNIzpBHcHegjlpI86HiqB1r5wax3T+vEwh4l+ppEcngjA1ogYLuch2NYbncQEHV+S1isuzGxog4Q5/A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bndTBUDA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bndTBUDA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8755C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 14:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719844522;
	bh=5/SJaKa/7967AkZJfP4GeG/8F1xpu16me0ploweygH4=;
	h=To:Subject:From:Date:From;
	b=bndTBUDAPbh2Ww4Bbm2KGZenMWqacStfqW+f+X+V5Zyzqc/K/vSo8h/0UEWIq/arB
	 K+yCP3+S4PVSryR3xHxssIt3zb6VsEIAHhLchpIRUkSJNxM9R2mMlin/h6/GRi9VvI
	 xtbXzzu7XQzeUhOjjkDYP5yxAmU0RedRUASp3GLkLJ86FCseAm4BACbzyq6zyyLlMV
	 amnB7ouKsVy6Qv6I8/38zG70p1wuUHVVCT5Hb7C0+M2rkW/cvTvpOZhM4GPW0H6hiJ
	 LmaiKSFaAtuQicHLy3U7LSFsXmdtAb6nTb+m4+5vW40VRGx8p6nfGjnJPXPwmc49LZ
	 fz6rp3xMRNJ8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1AFBC2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 14:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171984452278.12747.1036242988575322167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3626ca4508c4505ee2230756be5183d7013db48e65f2988d6515cb12a5377a99
Date: Mon, 01 Jul 2024 14:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719844522
