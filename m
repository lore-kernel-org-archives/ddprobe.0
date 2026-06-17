Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 822AA3E6DF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 11:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781696794; cv=none; b=Nhect3pFqOyWLDAr6nu/rqDN0i8wCfywym2FFpSUKoHxRhdV2orpQoEBHImKraqhGBp7wmJr3TmhCH2SjjMUWCRt25p4HYmC61b9rrgjxDXCD54hrBWRpHygCpA6vpsKfNgxXx7c73MD2A3+l1jBlq80VIhhns7XdGJCkQrzsK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781696794; c=relaxed/simple;
	bh=tjW/pOvLQ69WNU6/5AkGEoJXSt9KFILTFR90lZQejE8=;
	h=To:Subject:From:Message-Id:Date; b=LXoBehe/uaksQ4ZvMDT6jQRtSMTIoPj98tQ7wQo0ce+wv9CpaLXRNoX3P8qeEq9QMajBjXpgNqFlOBbfMOlYqFVUC3MsslCE7u+6mdxCjE/N2N3V3bZgRHqDO41w8dfi3HsittXJZJnFvBMa4gEcAq7Q2V4LeleXC8Eq6OsTQpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9PAeQak; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9PAeQak"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA5BC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 11:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781696793;
	bh=tjW/pOvLQ69WNU6/5AkGEoJXSt9KFILTFR90lZQejE8=;
	h=To:Subject:From:Date:From;
	b=U9PAeQakZTu2JHWPsG++5esHRuZcbpdVUnzHjDYE/T+lSuYgDkbMowZybt5U272WW
	 60fmls1ea4yVva9cVMhrbewtmLG2nGb00oLB4uUkNBAmStjyMnTqHvm1+0EU9oTuMc
	 o3YnDxa5455k4FpWKH7cbZ0HqA+v7yDQAJ9NhYxL8j3fGc8c4GMHTVO8UGhI/56Da+
	 4LR/aquAUw1Rd/cvTcaMVtFneWVN2Ehhvnal3UmAXMSyFcWfLtRAonJJ5xapoUnGl1
	 04453xAwGa3tibVLuRna+OxwRpS788TliCWBk1g9gGMUsXrRT8OhPFHLGJXFyEBFO4
	 uez4ReQ/zXJJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7C8DCD98E4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 11:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178169679373.3840.2959892267261269775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73928a6a12c6266f41565d25b24b24a7eb1f9589bcfece4c768242870b49b3cf
Date: Wed, 17 Jun 2026 11:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781696793
