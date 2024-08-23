Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D391FD304
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724372753; cv=none; b=FgLI8whczpMz/uG8EQOJjeEYmrKOy0LsZNTnpENFj7T0/paVIb6C0qCEcXl2X/nBlPFGe7rtEFIOQzbzjguSLVH0q6c6L/jd/p3/xsC1WawFlpvdSBfkefIARuoMhGi/o44QDlb6yNesGduE0pM4Fnw5hke/W9szDHdmTRrWzOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724372753; c=relaxed/simple;
	bh=8XdfH6xIjVM1Sb4sDw4GC6/EP5TSRh/L5C9saQrOnnw=;
	h=To:Subject:From:Message-Id:Date; b=nwnbF1/+IITOS/2SFGHE6Ww2KZaFt97qfB9tkxuKMJ3tdgg3A03V6IvidI2jjqV1NBywYkyNk6xYR+73g8S16WFuCOaxKeHwf6MnJOfPHqywV2bTqMgNGu5OxFIG/sQGc6IiKlj7qSWPIK/VXsupiTql+7Go+29dX8lp9IeIpnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ohWD+BdY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ohWD+BdY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC588C32782
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724372753;
	bh=8XdfH6xIjVM1Sb4sDw4GC6/EP5TSRh/L5C9saQrOnnw=;
	h=To:Subject:From:Date:From;
	b=ohWD+BdYX0syQnU6t+JD1ZMu6J1PsPA/y2OBHNA/sAJmTp27j7oNqVymWWayz3Q0/
	 XmOp90X+jUZG/bvKNGKwzZ6Z5/YnsebDSKdsmiZGKSZgArFPVwXCpTbfkJ9my+dvxV
	 8YLCJ8Cmajm/WdJVuL03Nj9kUVYTpobKJPSWf0Bl1H1sRjDyZjatM+2pxPxt98exkV
	 PhBT84WG9WEPH5zP+ncyY1ToRSqgDWH20gSFyqx2v+YDBid8hsI6PswcV59Q5c/54T
	 cUy/L+HY6LUxMxMxgaPVgKPpF+biu7qzf7EN1NtwshbFDBBmbSuXycxXDoWXLvb3z5
	 vawspynAgipzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CAECC531DF
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172437275360.29861.2043498000262217171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76983a64bba9f8bc4b9a9563ff0ba50ba800f6fdebe226742c66d11d521b268f
Date: Fri, 23 Aug 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724372753
