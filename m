Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AAD53CB2D7
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 23:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782775114; cv=none; b=UXPNBve7QKH7avpDx0rXzMli9GTe5QNuaCOmZqk/2O/U66FChmddOdCYameuD/SyTwY8AA71XbufmPoO7m4tB768IwCak83zpJfDkm3azLw52E9mPFXthHoc69yfYCOZCIEOEqQikVRyd0yafKQft9HPYpOs98rFs0VPlqdV+c0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782775114; c=relaxed/simple;
	bh=uMXAJXAt6AnfSzo/0BmFE/ETGBgLOcnDUMboxP/AyHE=;
	h=To:Subject:From:Message-Id:Date; b=ouJ5Wcm2QeXB2MnyZiAl38U5ntL6keRQts/flrKPXxcByjjlFmEC6uhOvlU7jzGCmVzZLD/4Ddwk53iIjL3fGO58NtSmARSea0WAshS39eCS9G3pDumWiEXZbLDaj3YndKBHCqNiaCPPLxzMsVoQD/GUwzkoEy0mYpfHqDQFphY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AhXdQhvr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AhXdQhvr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C33FFC2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 23:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782775113;
	bh=uMXAJXAt6AnfSzo/0BmFE/ETGBgLOcnDUMboxP/AyHE=;
	h=To:Subject:From:Date:From;
	b=AhXdQhvrNb0tCEkxstSJxSGfzjTX315m/Uzd6/Ftwy2Fzoqt0OnqRZgHZnz2W9V55
	 RWPaSAnlFTRFAfJ0g1k5MXcX9Xah7QTVnfK2PPgxRZeC8UOEn+deCeFClbhq5m7sJe
	 yydGwQFiy3zhvy5hV+sY+k9ooBkdYRQFYvEEzKw9nWLRBFpFAXy6+VC/I+meYL1dql
	 e8oFonxfcv/5ZjBHam1OzjUFM/Ur6IDggfSZQIMXgQY9GkPzELSxHMcs9eGawDDmq6
	 fCoaz9GgW0tB15wqPSLDJOXfTfn22S3+JAHxahHijyFVYGJUnyZQJ7+2tU3jmgxAQl
	 lu/PFebFUllEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA651C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 23:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178277511369.21928.1652958835599494631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca3f87655441fb3bfd1c1e88a766dbd65990b640b905aaf0a48686e8679182b8
Date: Mon, 29 Jun 2026 23:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782775113
