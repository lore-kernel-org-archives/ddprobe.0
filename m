Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EA915D5CE
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728978354; cv=none; b=XhzTngNesl/KB4KsBPSMNLjBJzwUxuTTELBgybsufgMdDo7np6jvX3JeuewjAKzK7ZqYw0k0Eetz/odTlB0o0mFugCYXoKrwKzV/PkrwrgBD/P9RUhsuxEbgHRob/u+lM8QavyH4SVoz3bpo6Tcjq4C/8sE1AcAsI5HJ6ShUyhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728978354; c=relaxed/simple;
	bh=IIZI5zd1feQk8e5YxytCWXEhClz/fNEAHoJ470Wrt9Q=;
	h=To:Subject:From:Message-Id:Date; b=BgmsoYZfS5Sa8dG/OpjLqB1HyOp5HjjexXa9ALLyXzXRL5SQcTzuBDpNOL5Az3qJKr/kOLnPHBJChIiIrlXj+KfMTTiotLOqB54LKyQplx8loHn3cxY28Fm6NPnfAPgnAwbk1DFodM3liXTSlsx6640zS5pG87K+hYQ9xBkYtKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zi4krj63; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zi4krj63"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4A7C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728978353;
	bh=IIZI5zd1feQk8e5YxytCWXEhClz/fNEAHoJ470Wrt9Q=;
	h=To:Subject:From:Date:From;
	b=Zi4krj63jbEFBHULOvrr48t/9di5xXa2jzLkJA/fRHKOP+hOcmZVlaYn2ZvRq2LTx
	 2zi6iYGlWv5BPWReGUTvsuhRXivSsXqwviqJv7PnQ88MKNc+AHbqL/iig8b6C6sWIG
	 OvyrqhmqEgZA4+JOY3kpZpLFfSqluyqLNpzdAejS2BaBRCBkkT+y7UHZ7vEg2J7Zj1
	 vOXHVHIT3nvh94KAZIPLQx69ZK8m+gXjL6BXVyq1oXxRmduJLOnDvs9qxUIjotXrRr
	 JYh4Kz8LmIZ/RrTsHZiu3mOWiMC76hQ4dtxRnx+kBiCdHBOFCfpbDtZ1zfelq0d1La
	 B7Qu2NhuRJQxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96642CFC271
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172897835359.8212.166015534483502480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4128ffdf2e9c063a16276c9a467e14194252af0333a227a35e2515033c068bf1
Date: Tue, 15 Oct 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728978353
