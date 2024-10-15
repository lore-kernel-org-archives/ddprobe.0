Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 101CB2AD00
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 08:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728980155; cv=none; b=Od92LnDZU9IokOgyyllE4J3RMyKJpgVIr7w6aeXetd1cl226YzxiZuoJU2wORs9d2vSYe2BDMxU41JxGACfPtxnI1R/WR29nO4+3vUzk0WH0enF1smvkkFjjgY9H/Y3M48LiPN5f3zxSJZ+hK33ki3KfEaQ6rLc8Fk601kGLro0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728980155; c=relaxed/simple;
	bh=vPHdXibk6rOWLRTG5aG83TLNC4b0LL72oUIkegfJP9I=;
	h=To:Subject:From:Message-Id:Date; b=fHJH/f6H90aKkKtOjxLbkn/sg6QP5lNQAiADdQYQ0YKvG/fHa9pPzq0T2BudIoL/AS7vsAPamaRT9yjZF+m5UdCcSmnUrgSUZnEh5S0sqbMRhOnwhCBVK9jeCnI5jEPpSRzSJYxZ50zs+QxJDoPITnZPIeCyVbG8O9xd1ZGmrbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KdvuY2Zs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KdvuY2Zs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB976C4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728980154;
	bh=vPHdXibk6rOWLRTG5aG83TLNC4b0LL72oUIkegfJP9I=;
	h=To:Subject:From:Date:From;
	b=KdvuY2Zsm2sIHIdLbFn5TzlOYorRKFBbCa/3IOVx4QSoue+axXsVmlUakT1FV5UnT
	 YjNXCtluvw2SLM1fyCo+OI5n+IqVxDjz8CfLl+SVvAYFS0vpjioTO8Cn930SCCbkIW
	 UOcPcY+Pa8F3er2Mymxp4e5E+00pkrX4X2ZoExLUJxn93QU/DLHQb72jOfx9oesvwQ
	 qfeA6ytdlrRWf1AaCfLsWoFTjNkgBZZ5wQne93USYQ3EMslGSzLXbTnyFWZ3rNSuW8
	 Gyjay2EVDV/FJy3tv3ETdtxlCOnbVXyYdEjoMGSw+lH9OZqkbAxfPSbrgI+5WiNyD4
	 YCTT39oBfu8pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B114CFC274
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172898015362.9101.17725290747052385446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21d63ad7e47780446050c994f113be92cb2157704a3bffe43126442544e479a0
Date: Tue, 15 Oct 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728980153
