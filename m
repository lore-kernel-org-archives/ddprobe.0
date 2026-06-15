Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26351377ECA
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 11:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781524594; cv=none; b=GYyQ8laonaSIl5YIqWPuPbvJ2FkSpb0p4uqaD+ZqLG3XiO67vIgdteogRTttym1sxo2mvkJOrYeLIFQgTscZ9GOz65Cv1WiwUSdmf7/8ZsFMZtWzCiv0AsEfzQ7TyQ4r49rkq23sgMyZ62TDs5QqU0RzbqZ42RgbngnmSnYbAC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781524594; c=relaxed/simple;
	bh=biBN+hEBCMk5zhR4BFdh6vCrE2ktsU5mLCDW3XM41g8=;
	h=To:Subject:From:Message-Id:Date; b=EB4CEy8Op4c+VM6d1kO1A5iclcqEDbIXFaxT4DtbjHq5rGTHN0GXnIvqvX54vsdyoCXu0RHpiyVft8zIsTsWQZeOn3zsnV8J42IKJRdFaTuNBMBbM2yE3PjaOfA3PFR/y2lPfazkOfbzL7nNwZ6ENWsW+0T0EUa1iTYsB1z48to=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PlV1jf3F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PlV1jf3F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9E3C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 11:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781524593;
	bh=biBN+hEBCMk5zhR4BFdh6vCrE2ktsU5mLCDW3XM41g8=;
	h=To:Subject:From:Date:From;
	b=PlV1jf3FSUA6d1fcA4/reduwSI+4UDm2bxWzSIA72Ty5NvHJ0z66dEGR49KPo7pZF
	 I7dX6TRdAkXDglxkCr9KhVEYdTIQaPg07yrM+OW5v2yGHW/tWlhNB7IRB7VIs2UIKw
	 DPWqEiSLgCcJ2MnB18FBRevjELxYmBR/SWhd8bIbZIJL2/CS13Y1gx0+8kdfZDhVtH
	 5eiSTK1z1G1AAZpO9nNJNfEdnZAbzNGOkAAsM0WDaWO5GeBWlYvOYhqQpoOCkh9tNQ
	 FJ6Y5yY/YcB28mGTIjqx3VKhBI4OkRDD61MGuZ2HTqDGb469cYonhd5LAq/Qn09svg
	 +Eh2giSWv4CnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3C54CD98C7
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 11:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178152459372.1081.12649258954938702235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da7a2e6b9ab41d90e59dcb236320c533a0be3b91af4967cf16086a0b17a55ac0
Date: Mon, 15 Jun 2026 11:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781524593
