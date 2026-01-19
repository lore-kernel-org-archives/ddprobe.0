Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04A6036BCC7
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768830234; cv=none; b=Uo2xNHt+tbajcjiKcUEUEK8OAnkj0yEVgtb3uaG2594UdRrG0c4iQGFqzTSmYl3n/sWLoHdXy7kgHdzNdcT5WR5RcIl7vQeU/NmnJc7NkznAGCrmKgNbtlMb7TpCLPk/P46E7LvOFiSFfzJPwjvFMn1jL5pxgkDHIjmYqC3vFsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768830234; c=relaxed/simple;
	bh=HvK4DbaZxDdgSvr7jiGvXmzE/fRdIFWM23J+Fcn0yyg=;
	h=To:Subject:From:Message-Id:Date; b=gM81JK8yxscAtm2Iqu4Fpf8rnYaxyLjZ0xhMDMrMr33IX7tMmeTnfaN0k6tDdbWggGxrm5mCDftPniqkgE5KInXYA31QiPW1MQ7wtIpD1tIbZEBIoIMI8Q2FkrsvnTuXvCAoYWtGBqhq9MRjZuYyT3BRM6h1Js26ys6ipgaeFJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eu/gu2bk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eu/gu2bk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D61DC116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768830233;
	bh=HvK4DbaZxDdgSvr7jiGvXmzE/fRdIFWM23J+Fcn0yyg=;
	h=To:Subject:From:Date:From;
	b=eu/gu2bkRCvxc34NAYxop9sLe0k99jdmkLGcnhDozHBL11Gmx36iuON7HAcnKXZBZ
	 oWLoo8rfX2y0zSI2Agk2HaUSEuM7HodobfNMGZhA6FXlFrYo+yaa0aSeabns4RvAJ4
	 DuwC9mzZlpXZBcAtklco5QDbc+HiYJ9V7Ssbvb6RyPtaBFleIl1spXu/2/utUhODSV
	 65PaNuCtVDmNETek2aDoItLJ0NWXh/r/mnWWYxuaZdV7MQCBoFwOiDLeCXCh1JHJXJ
	 NGHy5/r/x+4OpVvPSrM7g/91+oNagCqcAW+tXvvRav5ZxOe2OzMbzkKfiZAkhNvhhs
	 EA8qDNQS0+tlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901BAD29C2A
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176883023358.10602.11628922584859479688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 483eb4c015ad7bef77d62fb5806c734d9341c883e3f5607cc6c6079198ef6386
Date: Mon, 19 Jan 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768830233
