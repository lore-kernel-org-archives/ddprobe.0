Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09AF658217
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706519897; cv=none; b=RxcA+9gLGjK6uaRXcSRXEV1UmtU9DNkXrD0eg9psPpAZ+EFiqHvynOonGNwNIbUO4GC8Of1ROxZHrgWBabYLG0DLsMIP+3YE2w/XfnyMdoGOjeJxwyvTa40XTmTBrRcwvIVz3opWhJZ2fD2zv+1Ip2POouKv+K8DkFKSWpVidhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706519897; c=relaxed/simple;
	bh=Aspk9101cIdsjO4rzB7axUcLFuVMm6BsOLok6oGcBxQ=;
	h=To:Subject:From:Message-Id:Date; b=QqZaNXMjgiJi11lsFMhW2NjyIts6jtqmjXqDrAAjQ0lmvgjT9a9JLJmPbX2zcz20IER4f1+8bzCksUiSdQyuinttTlouhG8dfY0K7xxkYJS58veL1yvfz8Nj9eygLcY14NrDqRNmZTR3ipHfBxif2PDW1nZ621lF8o67njBmCZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p+iHMjsB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p+iHMjsB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 814E3C433C7
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706519896;
	bh=Aspk9101cIdsjO4rzB7axUcLFuVMm6BsOLok6oGcBxQ=;
	h=To:Subject:From:Date:From;
	b=p+iHMjsBmlc8jIsR3OsLyI6m30ytghot7RiVSbclvK4fd+YhBMJbNEl7nUUCIGq66
	 bWjkQE+nElfsf0GsL04QWS/TyT29W5cVCfIvbNhtjljkqxiktpvrNS53oOMsZTYh9N
	 Ka5QTiCDH+RxXsEJ8ANqjB4zowMDiuhqhcUUkaeDqqWJLAHEDmjFGDoS1ANfaYG2GD
	 sIcSOqfuKwtu/oM9BZ2oJt4oUq0vILBijW/LhwRUpNPkg/Jk7Sk8GdDdrpVUbrI4Lb
	 LohouMn/xvidQOppBAN0ytdW3QHXvA8XvS4unX0tgoltbSLzMtYrOtfKuIu64gyKNt
	 9uf/qtgm8TFfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65B53C47DA9
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170651989640.1481.15419309801973317871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 718086eb5f309433e0917f2ade99acc2901d92b2fc15dfadf81a013cbbd66eb8
Date: Mon, 29 Jan 2024 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706519896
