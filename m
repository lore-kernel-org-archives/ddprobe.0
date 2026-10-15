Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5455A149C7B
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792025434; cv=none; b=NJncAQJEuR3piNYDxUxbCir6TFy3awGoiUoRNTmgcVRx1p9XE6rxLOwTVXBAXY/ucBxyPBuc7JBe5xZa6N1Ghiev1sGuGds3j45zPvvkg9JGFkJslVhKdlTZZXOvPwiVArLeKbgZiW76aafRm9i+2txv7C/KV2wJhrPDMZlM1b4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792025434; c=relaxed/simple;
	bh=vGCJH8tDcX1S/2No5Hr1jx29gJ+LcaqjMlybhFv+9nw=;
	h=To:Subject:From:Message-Id:Date; b=tFSZJuQqhM9csUy4n93R7zF7+LHW6X7pIormatEpcMfjk2i6x4vhy9dyDw2K06UsxVvXeNjL0VcjdRO21QeGImPlXfsFdTWqmVgTFYT02p79WhcFgMyiqGkKTDRgf/73UWNtGEzNX+3LO5t0WHfhsvOnrqWqDZ1n919uHAl0PCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cPqqxYgN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cPqqxYgN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E5DC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792025433;
	bh=vGCJH8tDcX1S/2No5Hr1jx29gJ+LcaqjMlybhFv+9nw=;
	h=To:Subject:From:Date:From;
	b=cPqqxYgNOGZUVv8iyDIj1t5MbTeEmIXbmOwGAQIcWsDPr7jS8cRZMRar0C1FbJn4t
	 W0lU9nccw+9t91eSUczAq69/hgPqXgA56SVAcekfl4jYQSd5j30HgzzxB2IF6QY8qT
	 /2YW3NbfciBktir9XaSW8dn632ZdN8pYMt+YyT2g0VBBeguhpvVbgrx1ecN/oeDZ5T
	 qB20EkHS7uyESF3INzWkTSeYdaY1g+IGUaMwN/lt887Upl8B6B93xAtGXzi39nFrYw
	 PVINcp2eYOR9/6vV2G4FzVBV3YTwtCBTr2rIWw1bCSL0Dwp7DGlqKMcOdk/WRxmZI6
	 pRqjsX50YGNIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B183CCC6B2D
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179202543369.5181.10630509641641737938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70419c459f43a8161fc318448d1d9c8abfc93dc6ec1ea16f9305fdce4bdf8cf1
Date: Thu, 15 Oct 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792025433
