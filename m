Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5220B20766E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744285794; cv=none; b=posDA/1ub4Q8qiVj8k7uJUDmqsNIRIgmqLHMuSCAAwMxA9oLOujov9xyYtCyjlOAYyN0cCagaG4x6G4fzvtZx4PVxExdDUel7pOOdIK2m4diFxr6LlKjVZIcaX3UNHQCUDF5xCM8xkGJefVuGjQBsEapflNFB6i+aoToZ/2FCbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744285794; c=relaxed/simple;
	bh=DGW8e4mdquggplMEgmtXFhUNRQreDJ0/fmx6VtToXvw=;
	h=To:Subject:From:Message-Id:Date; b=JgYEn+HUqLTu/N0kFJq3dGv9FpMEwTZD62HZwcVwWYnnhezmk6W6UKX/VJNQevgK66VWSECXoIhznb1lQq4Csujw1M2upkL3OBEHaofgYky/UI7d6Pw66teC9aeGBeUmc+2bxa+NwHtsZ73OWiOY+xllrKaRd13pksTC3fS0xLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cLjJYn7v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cLjJYn7v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C767AC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744285793;
	bh=DGW8e4mdquggplMEgmtXFhUNRQreDJ0/fmx6VtToXvw=;
	h=To:Subject:From:Date:From;
	b=cLjJYn7vHbFvrhPwe0iNGn+a7jKMXDAs0nC4pDRP1dZrzpQd8Es8kxIhPYSuyTVro
	 S71kqd8rgkIyCoLisJMz+tuXCdbJH6VyNfyx2hpu981F75G7NJeplytk6y7RXdn9CC
	 eLHsDLOkjo+gedqoCzuuXGK9egfjEO6VUWpCsdDXvDyiccll5+SLqDtB3bL7a9WSTH
	 0TjBCmmpshx924veNV2BARvPYP5sZDpECVsfkZN2YcD0SrtLneagVFg31V6lDKHoby
	 FSLx5tQaKeZUOyBsdFn92OSnOEd6Gdw05nVXTPsYVOWdvdG/Mr7mP36XZPqnGzwK6B
	 hItDsqkpv3KKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA72BC3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174428579367.24682.11547516118746448525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e9b688b0bb6d6ed72716c777c1b42698ab38a264811d136eb75940d6be44f76
Date: Thu, 10 Apr 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744285793
