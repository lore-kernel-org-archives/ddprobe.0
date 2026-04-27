Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2004C19ADA4
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 23:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777331854; cv=none; b=HLzcqb6X5ONNp2JQ+7pNfc3CJWn8Ooc2fsgbuQEPCy9i+bhjArPqa02UCUGOOuzB3GM/JKJ0EpPntMH35A4kC+4QrR+Xe60cpfJpERgbP8fdy5g5A3rW7CQBsFUqEjQFIinKq2yX11GcNAEYa/GEuSvZoKrJgyWu0ZyV9+2FRVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777331854; c=relaxed/simple;
	bh=P3HbyyU0XJs8Azi5Magp8dwf7h26su0FLmDvC28P1zQ=;
	h=To:Subject:From:Message-Id:Date; b=N4w6lHi1ztpPsbEO6JF+0iQUwwQo/+EWe+ipu7rijGMafgGcV6EB4iNrIOxbSNXZpJR90rrZvElLbz3CgHJ1371XUmZC/I2I+19xyiZ98NhTjIZ51cezOHOG/AEhMzpCxzdQk2UBDoVMm7M33z4VLeu21HGyC41f+fgM5bJZ9d4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rNuoZTYo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rNuoZTYo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1208C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 23:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777331853;
	bh=P3HbyyU0XJs8Azi5Magp8dwf7h26su0FLmDvC28P1zQ=;
	h=To:Subject:From:Date:From;
	b=rNuoZTYo0d4HLPvB9xZBUXzgEzesoQ9p4cfVF4kcouvs+Ozj5+vgkhHHN6mfwmiTy
	 Kuo1vxwLGN8Eia00svHNIOZzjt4NImBbiQDDAOuDBtEo7gN3gw+emvoXyCyVrDgqng
	 PdJU3lsZkbxQfe62ObPThX3dH1wE7hW7u5TZplBE7AopzItyUaB2O7N7xHZc3UzjvF
	 OwnSpSlt9c+VXZWNzUQlKe3Sg0XZpa+s/4fwuUQ+l4VLv2Y0jrs/mNxyShliz73pbk
	 4Yxv9QVgvKOk1SXKkRYso9GMc/zUATT1UORPK4q8gIIp6l3sBtKJhQVUn61c6EvNux
	 DjS3AgH2/hinw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF498FF8867
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 23:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177733185368.28097.11674593027704057703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f44f263f8ea3ee585b402594f0ed51520b008310e6780bf34239875d0f4fe1fc
Date: Mon, 27 Apr 2026 23:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777331853
