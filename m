Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAA92F8EAF
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 10:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778237254; cv=none; b=b9b8DSET2iCc78LVFXcQjPOWtaE89HAltdJ70ymClcjcZ/jhCG22bumVEbb7lBR5TFCP0WOQjVTvCHqTDSxxVubXKYyQhsGr9LonyJQKnZcduZ0GFnx2GkamX/2MHuM7a6i4betGT7/E8MClLchGRuYP/zWUf9XYMoAjuSGfCx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778237254; c=relaxed/simple;
	bh=eNQA+UDMWGOFwxI4szNHnmfKg67/FhhTAUzxXT2U8kE=;
	h=To:Subject:From:Message-Id:Date; b=lG3xx604E1yBuQYwJOBdqLBF/1v8go/WFoJrH3rx4tw4TDMorp01er+wwi3B7PPgRyxI7xUR+pIH71I4Ou1sgnfmjlNQfSNi8LI+dvUAJmFVolhgwdRewkxpH8VaVNKNK201CDWUBf5T93nWKpsWBsbfvPhPIno0Oso5h25HoSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bPryLACI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bPryLACI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC80C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 10:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778237253;
	bh=eNQA+UDMWGOFwxI4szNHnmfKg67/FhhTAUzxXT2U8kE=;
	h=To:Subject:From:Date:From;
	b=bPryLACI7UtTY0+HEXDSAKJLT7fJBpB9GdTtM2OWBVlcLbiAtRlhnr6g1/VIQBAjS
	 xL+fkTBzw2+9q7igV+bR9uDo2On9CKIONWjfXpuovm28nW/YJpA7zg134Q5+MmMjHa
	 uTkHPfq8TPYPHgX9iYdi4YQR1ybkCMm+b5lXN9ad7mJT2vWN97umKyiS7p2Zt38Clz
	 Fnbk8AY/l/7Srt/+iPXGpYEPxBYC4anP3cWI4rdkVxwL8/oLBUoq/vmwQSIj/aVuoO
	 cfU+Q6cLGtqlByzhg9t4QHZunDkqze45mnea4ZIcEZkJM6STtRY3LWieToe3mRlWOe
	 iVI0+z4oRJ0vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA61ECD3447
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 10:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177823725368.29117.9445699372740070766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e56f05b19eddab9d19a401d0d8f07350ffb170a3342185de2fbbcb78b669dcc
Date: Fri, 08 May 2026 10:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778237253
