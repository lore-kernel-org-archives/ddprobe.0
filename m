Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4444F233944
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786950634; cv=none; b=KHLOgkMwviAmdO/cbY60t6wyFNedFj2Gq4uAmwLiGMSEdQc9xJ+HPEJofNrTuv5mmEqJcreEhXjsbH1g5UTm3NC8iXbq2k+/48hXagin8gU4kbn1775WtD272JfiE2aCo4NlFC4MxqAPtzGQUXNOlQxlU0TOwx9g1xy/AZkQl/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786950634; c=relaxed/simple;
	bh=i5/Ah4OOPYzRcK5AhCBI+HAW44kw4Mb1W4IT8kNg0MY=;
	h=To:Subject:From:Message-Id:Date; b=aa+3bY8qp8r65TNIcnT15jMyNyQCciKemw8LUrQmfjENp/QLpuPX0AHoC54FyuhecGXaNeaZx/ahH2lA4hqbrGpC5MXZvadbk6aOEN8NSYzktu0hLRspoAWClaIuYXhNGsnTjqMdHPdcMUiiP7sT+b991X966nvyDr/xEVjoqNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dmYp7ZAe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dmYp7ZAe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32ECC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786950633;
	bh=i5/Ah4OOPYzRcK5AhCBI+HAW44kw4Mb1W4IT8kNg0MY=;
	h=To:Subject:From:Date:From;
	b=dmYp7ZAer2oOAnmEUX/RIpUUpUMwtpAkgDt62B+fxKUWnSqv7oozTfMIgrDwgl6JP
	 74J4hJkdS/g6D2Gucg71SX4grd/+usdwk19Eu9upV+6mQGCeYO8ATEg974VHzYCMxv
	 DtgYZ+gWDV294yKfN3BPgVmu/PsCVxK6KDrYXyCM27lZLVpJwHNtQfbkTxBnwSyLj9
	 cig+IyrmmsItU+G7+hSnTBafVza5fCfz62B8XQ9lkc32QNORTYiTXoo/OwLS8cMGOI
	 +/2hmhIDpLhctJz1iAmA43l80jNisMtwz+zOKJm79JeMKoU6QBBr8dQDszVpee1j4k
	 0HYSHozp9G+tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB27AC5CFC1
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178695063369.7132.3468648578684017928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f1e242b0ebf3c5aa6319636e4c006c854c2942b8df8facf444290bac4607392
Date: Mon, 17 Aug 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786950633
