Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225F43C0C
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753834795; cv=none; b=KtLKlgI+n0nv9F+WmND8Zb+1EBnkrf9L5ZZbS0tcFApbXvKXeK6zjBVCE02XbKmdv+++ZDcGl0+R5VyNFcULvou/B/xFfiY611FRVJljjBpmQsRjPLOwl9g9l8KycSedtoyBINFg8GdNL2k+cNzAj7BBCTidn/CkquLvuIooFb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753834795; c=relaxed/simple;
	bh=FhtuJZXFSuHl3sGxwEUQbroxZR5irCFy7gc34y+fx/I=;
	h=To:Subject:From:Message-Id:Date; b=gUsapaCKMq9MdRnn8c0LBDC/ll05jJr7dqWQFNzGA/hsGqo4pZQcbpfD8bdO5/u+7pPx9U3c6W/Wz/kq3erLjV4qkIgLSoE5RnpxMj0glqqeG1J/LurqxBMsjsjeGpHIavlQu8r7dilLsBj+ZIylgvesZ1lDCRx07hZpTdO93aU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+CXJLF3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+CXJLF3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A188DC4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753834793;
	bh=FhtuJZXFSuHl3sGxwEUQbroxZR5irCFy7gc34y+fx/I=;
	h=To:Subject:From:Date:From;
	b=s+CXJLF3Ivpp5lT9h459bVZyMbJLvGeYYstYRtcGyIC2YZ2vEAiw3Gwe5pDgezg4m
	 qGUuIcBdoLs8/btToeS8vnm/RXS46S9dDESgW0GUZVKbobfA5o6irbwWLHq6W67IGa
	 FktuoMKxexggavVDJbCWYelPlCY8AtLRXQL3NGEMINbXznopmn410D4w1wwhewZUej
	 my6yUwlBeqc1YsnQnjavwRgrXwvKNt2sl9KkhAwq4G42xkCiuboNFj4QniwxWJjmcq
	 OFiujepn25rkbufraWmhPgjisCNT9gbPFLV2VgsX4UafcbILBCWJHkD6wtoBvSwu8e
	 b1wuRVD5R7Xhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE70C87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175383479357.2348.733697115225510100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 969104f05a86ed5aaa24e89fc59202bf0d61d5beaf6b952369b7cd8a3822e4f9
Date: Wed, 30 Jul 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753834793
