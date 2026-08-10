Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D5E53E7621
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786370434; cv=none; b=ioXxGIy8Qp2Y9OR/6VhXYMH6XSYNMjZd8ArTcG/9hIeaTx9z2Mi0U+1mRXDoa85PQjrlHmhyV9UHyhvvc52Qe0kUtxgKGYKBzu0ToZh0JboPEDqQ9Wwj3G5qi1LcEASQVvJwgfy7ApTRHGGZPeISKJCroi+gHGdlumrlTgYWDPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786370434; c=relaxed/simple;
	bh=8hOP7ecDT/UekMgFnc2SI3NBj8nLaQbBpi7M0c6Ksgs=;
	h=To:Subject:From:Message-Id:Date; b=udW6HPVF/U+m2ZRVwmA+IIfoeRuAS0ypL5qwQqN2cNyYVhOR8D5C4pqcrhBKKQd+OLRvBCPdalkt4RFB+C7oBel5YL+YriS413nA8V5LCQ6yhu5SBLKDy6a8abxloS+ytV1Ds9adz55tWKQE6ene012aoe33FF4g8DdgyKuT19I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iv01Mnlh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iv01Mnlh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29DBC19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786370433;
	bh=8hOP7ecDT/UekMgFnc2SI3NBj8nLaQbBpi7M0c6Ksgs=;
	h=To:Subject:From:Date:From;
	b=Iv01MnlhoL2qp+V6ZwkIpz/2/xVYVXCJXi6BInk864bWnwg6Da3tOa4uANmAYDkQj
	 1OZdj4uV+FSID3JHQtNgAunJahlzT3fmsBKvdHpIjRNhnUZAVryzwIEfV0goriWIaV
	 vOZMUpuNx+93/evohW51Ij/JIdexH9i21aVDye7jDJfeda/1p1MNhPQMkTDgNsd9NU
	 M0boIfoof2WhDO7S1tfuUfoVHMTSOP7GuCdaAUpzBUaRpPXuFF4+Y4zETj+gIB8ci2
	 xEx1+2jkGqluH/g9XTTEZ2oKU+lz0IiliP8hQEEjTCHcQa4Q57HEXm6pgVPKSuScVk
	 1WYngWODtqO/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7E4C5AE49
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178637043369.30947.15598758758263168611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7511e8e1e205879f56d583f86dfcc02acef16016d87d2b67332695323515e16b
Date: Mon, 10 Aug 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786370433
