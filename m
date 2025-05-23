Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACDF83A14
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748005795; cv=none; b=QGfOFnANHjbmTm4/+joPepInJTmmf3DbM5kAzcqBL0nlqyf1T4mz8bMYzupzlXsy2ToOmfc2PtmeQUq6XQnuq5szKmHM5LtQSRIOUNm6xE7w5vGr6B8CP/pa1LpImjm679cApwsv+kHJO5fN1vVK+IFhcWWbqCGaKfpN0Z3tw8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748005795; c=relaxed/simple;
	bh=UHTXXGbAPmT9G0nzg/uoy6o5xmbT5zm1x9MrgndDArg=;
	h=To:Subject:From:Message-Id:Date; b=PWgGR4ghwCTeEjb5c6SIBsgyijYZO46E3Pyu2/J/Wyjn2CZU2/NS48+9Pdm8qKsi8pKoqSGM/UWKcuR6BZwDxmOYsNwtAd43dERdrXo42AOGd2bxOmoqn44aWC7FhStOWfU1TGZMlKK5ClliVMd9yHMJO6wIu/GXb7BXV1vLAFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ozNxUJOW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ozNxUJOW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00A0C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748005793;
	bh=UHTXXGbAPmT9G0nzg/uoy6o5xmbT5zm1x9MrgndDArg=;
	h=To:Subject:From:Date:From;
	b=ozNxUJOWpTTeyzW5yh49LRNDAKvCAnXLKw5k/wbwiB6NKE3RooNyfDG89C5PpFfjL
	 cFF/QbixaiABZ7JcatBpheucXxpRolxZt/CZCVFTQa7MKvgyUIQqEJ3LRt/GDLe3vu
	 fKjxNsvWwMUIVweTfSFQv4I89TdwOkB07Vm8u7vnWFgLrCuiSWink+WNOPAHE+deM3
	 k5QTR151qrWXcelVnC3elf0E8jsL51sAt7W6SIDqWr2mQbgu55CPnFMf3ERJFgEFQT
	 seoHztEM/4cnsA3WGuFbkvR1vgrvPjD3jE/Q00PSmJNepyb/vH7sQ3Lq8tbMiIEpyK
	 NJ/+hw9lAQ3Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF8DC54F2E
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174800579358.29587.14231457982976472926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 094991221a9f677ad3e7ca59bf9a187e846b67190ac2d312e052c412f3624af8
Date: Fri, 23 May 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748005793
