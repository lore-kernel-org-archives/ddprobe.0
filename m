Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64FBD33E345
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792307434; cv=none; b=GVOkJngzDW1w6/jFJ+Makb5xY7A3q6DJgplex4APX0how9KqxMeniQGVS5Iyz5o9NkEEGxNSVNXGRJ37bgUz/h65FvuNB8bLSPCiRah0vXRqp8Ufsif3Jx33H9nhYR0Ih4wvff8tHt3dLHcTYNvmH9j2Cpn4lZbaj7VON2sS5kY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792307434; c=relaxed/simple;
	bh=bTkopeMbJcPFiafRnpDdZ71EroMDMpBF5QqxqwYU9rI=;
	h=To:Subject:From:Message-Id:Date; b=bskv8vff0zXcrU8Q8u14i2UunCHzrLkeCjBRN93wVAEZz5VE8RrjIec3ofUAjYkeSugY/0AvTwhUHKh8X8Ebeew2zhtZGwJhmICHMuMCFNVx02mYVwKOVyRZDghAzAZWsEO/W+SLNC5rKCntuvHyVJkdkdA7chm75hj8qLxxgQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lYmhp8xC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lYmhp8xC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2EEAC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792307433;
	bh=bTkopeMbJcPFiafRnpDdZ71EroMDMpBF5QqxqwYU9rI=;
	h=To:Subject:From:Date:From;
	b=lYmhp8xC0xEbWopXrMJwnGZDJQDQ96o+NtZnalwdHa0esLn5kIe/fmehZfeBXJqA/
	 Rr4Q9Uv95IS3ULU5bHXculFbTLt0k0oii3sGfjDn8zpoZbFLDwOuV04y2myfWrDUKv
	 DCbEYguJh3lol8xRDnEsbWhhW/yqXwOFSMsQtqjHc7ig/JoO/j+OgETV8vnZl/fAQt
	 mZf9dnOP/mwBVt5pZuZ776IJ9R6ETup6eE9v9rB9pUoLcq2ewUPuvxp+hVrpub8AsZ
	 ksHhaKewz+wvDlGuh6gJDaIP1XOFRsBz7IIZ2rAvaURgxmJTIoQ8gkjRL9bwG33INk
	 4dsPu+6WbNLEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6AACCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179230743368.27623.908703227779814863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce91cbbad079c5a179a660e65c3b5adc281375b859820172a6519c0a2ae17ecd
Date: Sun, 18 Oct 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792307433
