Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C391489FCC
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791963034; cv=none; b=qF8lSqf7IjSsPSnoPPO3TMyufq1zXtGLFGeghiHn4fO6D64ohFHagrHYNtevdwQgmzoC0jp8JSHv8yatTZDiqID1vRNAz6ub2K3b6rxz+9UL8Rk26grT3RFake+eHeCwefOpwThkGTKx3GMdawEHG2fChAItQFtq47F0bGWIzg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791963034; c=relaxed/simple;
	bh=r6rh99U8FaSB2ZCZMAG2QMesgDoHmhjopbKzc76VRFw=;
	h=To:Subject:From:Message-Id:Date; b=rnvmSMA8wew1G4lr9GuwlcQnT8mFuBKd6DFib1m297XGsDndC5HgQoBd9AFX6/wT4h6pDZNoO3chPtBkmGxYdPGW95+tE8xzeCC52TlQu8rsSxpVoWeILPofqSk4J9mHh4OxF5WWu5u+6dsyBaIdE+GG/M2njN+ZAn7u2Y6DtIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQHiYeTr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQHiYeTr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4DBC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791963033;
	bh=r6rh99U8FaSB2ZCZMAG2QMesgDoHmhjopbKzc76VRFw=;
	h=To:Subject:From:Date:From;
	b=oQHiYeTrhqrPiQAelJJB6VeXPT27oSxsCztTRf0WuzaqAow6Tw0zTvAPugziqfAAH
	 zBtd9geNjxfIrgRIx+3rKilF30OghrjzfYfIk2Banov3KSI+VHv6uDv8IQiUkr0KIO
	 fZIShu7WPveUb5sQkF6GVmUP0/ItvG+bAe0Di6XhraAigN/RgH5ui6uWorThgbJApf
	 s+tmnZuVd45Upu078SOTSouCirHmD64U9Q47Qrec47IpMlLlSLWY0tDxfABR3G+IaP
	 ITAeRoZQk2hQHtns9U2UDv0wvH0s1dobIncebpmV5mWQmYCRPWq/H1xnWCv4jeDF1Z
	 YNBDGzMoxAWWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC3EFCC6B27
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179196303370.16612.1285786224344671734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2b198fc9106336a8a7f3ac48b965cf54a7c1e3990875a0a83e5cccb7ea746ea
Date: Wed, 14 Oct 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791963033
