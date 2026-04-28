Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B21832A3EC
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 06:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777359454; cv=none; b=tSgwo8Nwej9xPVNikeFZ36o3QErNR7820j1VO5i+l3Sv93cgP3RjhW0/I0wy7ya77Q3uVc8KiFfgWcY7mUxpzPpkTX9t4d8oSY6+F2rI3UumzyM4J1J5Ia0I4j6qnlzJqxFFSqkQgxiwOgtlfWXKDxK3gQV+avatLqvmhBeghAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777359454; c=relaxed/simple;
	bh=gnvkmqbz5QYrJfK8FHOBnbXibpWhoIZnCdI0gjwmIgQ=;
	h=To:Subject:From:Message-Id:Date; b=Ei8mjfhe9stKdc/Mnw3qIXH5PRgmvcoVTQ71qJo+19/EcJfgoYhRJiQrvkCO2/1FhYwzIo8Qt8e9ppQ+2820YRI58Rif3wGnz9ojoDHL1wVJdqKiYWuOkG5fFo2j9TbAYU/HnEKcxdVzT0UAdmKPkV/H/JdRUwnD6GkmLDBB3CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XY8eKGZM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XY8eKGZM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B72E9C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 06:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777359453;
	bh=gnvkmqbz5QYrJfK8FHOBnbXibpWhoIZnCdI0gjwmIgQ=;
	h=To:Subject:From:Date:From;
	b=XY8eKGZMobnG3Pfy7r2nH4F/nh/mv8opfpHd1Y4b1w3GlIWTsFGSckb7KQyvbqSD3
	 Vvg2LPDeqRqLatbQ7IgVAczyvbagdRDjRonCxbMMB3eL6qt4Xh3QGRq5VySVX9TZe5
	 N3ScDmhndqiYyKWLJawq+otNr/Wf38eRHT28Z9G+xey2w+3lR07c/kzO4Sedvs1Zxg
	 eS4wVb9B+zhy+NCYeU6b8z0fDjWfNE3snqlGmL0iIYD0bMp8p3/JkRTpKuDJC5tEm3
	 16BudUn7loYwZUzvr3jfFDfsFTwG4mybL/PSLf3k/sWvacP6NTbGyvFip9EUuxIpNG
	 st3yw/tMv9xRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8CACFF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 06:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177735945368.9520.11384959605448019854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc0427e1166bb186f75f9a4ae0989a19b7cd471e1664bc34778286c19b529511
Date: Tue, 28 Apr 2026 06:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777359453
