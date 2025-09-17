Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2589930BB8C
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758148194; cv=none; b=I0A/2rq4582FdUzjtahOM4gfArEPtEaCBVGYGlOfrG94ZwlCVeVnM9wFDDZpBdIu4nXr36mrVVuHC3fY5pOHTEVjN3t3zriKbBcrXDP9hbixla99LkNm5dTWRE9kFtv15GyvZgo3GYz6Wkhnyw/eObNsGx6dU7NbwLFklTD3xS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758148194; c=relaxed/simple;
	bh=zXZsKHzLqN7Tq+K+nNYd2oa+epfWWWtEr4xpwvoUlfU=;
	h=To:Subject:From:Message-Id:Date; b=oG+wUH4SG8mfU4DtRSLSrdfaoiowq3dmRUZ9eKIbhM9hO1K0S6Jev57tTjO8s88WbvnDQLHRcGQNVD9/fZBhKLzQFykU3we+lib36UNfzj2APT3nAhcO0O5f1AdkhQQjiG0ux+Bp1JbvW1OMq/+WEgzjiIK/gESYvHuwM+cjsK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c9qomaPy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c9qomaPy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA77FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758148193;
	bh=zXZsKHzLqN7Tq+K+nNYd2oa+epfWWWtEr4xpwvoUlfU=;
	h=To:Subject:From:Date:From;
	b=c9qomaPyN3vGoxbTPLNlgU476PyFNlvAaeWLbdtzsVYQlmbYwKNizAn6dHEUOcfTc
	 q1pTn5/w7izh3AFnSEwdiREs0EbKiI367oIIfdFu5wDfONT+ubjaKWl358XaoYBc0T
	 4RN9vwML1H6OF17xEMN0YijWyPXcUl+kWiJ4u9/T74EKX1gndghmq4pdrRT7IIfkiS
	 90ZWl7R4UMPsC9xciGuYEbYukMny9R3DEutNCvpeKSD5Bg0PqED0MLAeez9unBFaoI
	 p71348poFoOVspV64la9stoESOccokrfMGdDycaEdwaho9NyoL+d4Z7/jbZ3q7BdSD
	 OrSPCvzBuig1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BFBCAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175814819358.5582.1921221714455665610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4618a6576fbfd71b5d65c8e3d5d3b410245eeb6b7de6daa48ee58d3bb81ac288
Date: Wed, 17 Sep 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758148193
