Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E093BF665
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788508834; cv=none; b=AvYEXik4KcsZbnkhs8KtWKTNWG458tlF3QieGneTdSOfjkjYM++feKM2GxOrVWWaByqKInzLaiYDl7LzIot2YiKk6GJ/hFJke8v3GBOY4ljq+ZwMYJNdwT/zBAL86/48hrykIn6pTyCiZWcuZR9zYjqhDMTIvIE81QYjzHe3DKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788508834; c=relaxed/simple;
	bh=koK5Ty91jG8ShyZySkunN0Gd3OVQfixF9SjBv69akoM=;
	h=To:Subject:From:Message-Id:Date; b=p/OU3t6TdPiC1Q5saz2V/HDLsCIx01pbL1uDwxIX5Ua2jjTLtez+jkrnAJu2pwzrmdDuqF+EAi7SHja5wBWy587RX/CNo2s0+xIMVRYfJ0qokkA64WdX2T/sBatItLJjj/PnVC0DvvRmhEvVWfHr3s9PPXKXycB93tjnfQ5H4/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xy312Lyh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xy312Lyh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E51C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788508833;
	bh=koK5Ty91jG8ShyZySkunN0Gd3OVQfixF9SjBv69akoM=;
	h=To:Subject:From:Date:From;
	b=Xy312Lyh3vHKjonJm1flrW2b5N1H0yav4tX1gwd0Zgt3+f1tBwtX4YYZpUwEVCnc2
	 nAAPP7+b5xzuKGuMYBUILQ2nroJsI9PkvD5ubI9usrqCuOeNZmOtQlzH/eBOmw2cGJ
	 L/G4O/gshrv6cwx/vAXS+pjg7x9C5K+rjze64qHWUfHChnkO9f75jnu1RdRZbzZ89p
	 6d7kSJG36jWTnW3WKvULqZwVxONsccNfiFiR9Mk3dDmgZgXAhz/kE4z1Gddt+eHwoX
	 HrSUphEGvqV8PAQ0AbGss/iuMNBcyxBGxz2/pbkMYdH0BPE7W/pdvUjA7xT3Aey53U
	 gxWBe9JzG5syg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0CEC79F80
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178850883369.2956.16658913503338540393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aee45785fda0059b35cfa3b1777302fc4e15b2883355e3a3ad4a95bf148a786
Date: Fri, 04 Sep 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788508833
