Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6694A376E1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 23:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715296343; cv=none; b=MfQ07XBbzBPC2fcRmziUMTvRLZ0un1TA3Sjh62J8E936mYx67IEH3QKSvJb+6YvmQdbxhcKu/2afDB7aUSfLRY5pgT2uhaqxUb2V6zI0IUkWdJKwoPia0YGbi1KpWKXcOsD6osRSNvQ2L9reYPJ1KVE8YDfOFZ1CDfd8FIibyw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715296343; c=relaxed/simple;
	bh=APSTPJy/tdC6QyrQeN1Za4xk8iUrh1h5az9MXDZdDI8=;
	h=To:Subject:From:Message-Id:Date; b=kkBAPMY9JbtFzXOV4IKdZ8vUDysW1RdNCtTXfyyQs9L4IYvLfnI7WQGjacCEz78Etxqf8ONEvQSb6vJB9C1ON89HBlD9hIkvItG/3vA7vPeT81eGtfOZjYrUP1RA5YI6cRyg2Oj91NnUDp7Ls8Rib7M8Q6IIjKUPiL4dqZLPslg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JHNeQIXG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JHNeQIXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D71E7C116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 23:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715296342;
	bh=APSTPJy/tdC6QyrQeN1Za4xk8iUrh1h5az9MXDZdDI8=;
	h=To:Subject:From:Date:From;
	b=JHNeQIXGrrdHAD0yuBobS2ZPpVaJPZQ1OXn2UoSaqP4x2WA3WR0T/5qlyqHirthEw
	 G1a6D7FsNTaUfAbRlGtPMGlBfg36nwYG2JPiwY947t0pYMAbo5/0SIHQrkjDk2TZhV
	 xRXvbGdM2AarYMCmSDmieHwViK3YiBap+8DbkLOagdjWtAhtRdqOLU2wMlrd3OOCkX
	 jYXJmNood/b3HBg8AEswTO59fUCFxrHzm63IfsUSgx26KHNpeRED/FM4lxtinTec5l
	 nvGQBwXsLvNLfn/fP8g6rE2t4enXd5XTKexvYJVSu1r1LHcwwLaM/GwzGGNbHPDkRo
	 MRyKE4vo1yQXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE5B9C10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 23:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171529634277.5166.16503028789074167704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7977f53e3863b86db2696f16b004cf9c0470d280b3f2920ef7c60a1bd7b4a170
Date: Thu, 09 May 2024 23:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715296342
