Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5362B4078CC
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790271034; cv=none; b=rU1InVANrFoZ+MKjSYpbBNMvNNyY4rOb6SKLLOxUpxVnEjXefSetqivbJQXbBPmiQ4hBmsR15hOnaGgPqHitMSAHZnPqRavjAzWZT+um9h5z1NRIs9DdbGsSJAuoiEbf6XMUsF6ZY+gyT/iLn6hwRKgTho5i5AeA9p4nqyeub80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790271034; c=relaxed/simple;
	bh=Ts7P2oPfmOvzlxOn4IF+6fpbnnCXLHaBiiqEXWIF4jQ=;
	h=To:Subject:From:Message-Id:Date; b=tU+V9vhSq4M1piDzqo97x04GpYtD3+hI2aC3D1HxElivA/BihDRma3ufF4JtJJKRyenYg6bRCBU/UBz2zN+/ofL5DbnUZhgm5NO7aIqKbIccVW6znf6lWNAMvHxMfWtua7j6u45ukplCjecP1oVAAjks+XdXfPQ8vV5MCi47/BY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pcWbhXRk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pcWbhXRk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC445C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790271033;
	bh=Ts7P2oPfmOvzlxOn4IF+6fpbnnCXLHaBiiqEXWIF4jQ=;
	h=To:Subject:From:Date:From;
	b=pcWbhXRks/PBqlSIUhPU528KjtOhHNSo4LxTUTQelRqtg+GDhqPBL/i+hQj2lupk0
	 34qsI/IEMsyYSwK3NKYsjCPekPHiBNxptjjKlK5oLFM8qn00Kd4on4WBvNxoYE8jOt
	 c7Btt0zSMgk9Iaiop1NidVyRmSDWtDUxu40iOHDs3Ljjk0dXoAeJI3yZCT+il0G8wq
	 klD/YmDekRCd9P9a3uUcM/D4pkK4Fn4wW4Hc4ePL8Dt7U8uinECa4m5ypbL2zFrO0o
	 L+Vzq5Hs8Y/L63QDPAggVd5AjP+Lz00AAB0s4FIRBCiMa+BC+6cv+XO7saBWtMTfHk
	 6TODX79QyTYcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B41DEC9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179027103372.30466.1634253209404482694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 229298a362ca4ea13166906ff177376fd186449bc4fab088ba7c356a002e0103
Date: Thu, 24 Sep 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790271033
