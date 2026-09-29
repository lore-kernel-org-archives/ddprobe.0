Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66A2B4BB267
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790723434; cv=none; b=WM5eeVnnxWIVbQ3+J6FymK16z+xUGUoMYmqo3v4tjoTvi1Zq0s0trksDc9zXK1Nf+5M/j6SXdCNjLuEuedNBJ6ZKYF9yGdOq5Qx5umoCd3YS2JSxuiOMRF0UeQyOxgb++WCPOjaAcX0untnWp5ICnOp2q7yoPZ8xPnkRmKvIoZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790723434; c=relaxed/simple;
	bh=oLhLfWxYenXDeIdSeYr984uclPcgQj/vl3BzAhj6j5M=;
	h=To:Subject:From:Message-Id:Date; b=c4tXWi8dXW4B/q/s8s2g/DuRlUHy7Of1MXsXjscdblCMc3NOahXxhVXBnosW3+Na0LUQNOrjSp8kicT+MrutkMM+KlCvvjTMYIDoIDEW4y5fnT+ZJw+6JqnLbgq5NfrB6D82DuaNRvrnfBP8Pmy5Vvnj+vSSi6kFWd+v7Bgx+54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QMnrL5PB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QMnrL5PB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4124C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790723433;
	bh=oLhLfWxYenXDeIdSeYr984uclPcgQj/vl3BzAhj6j5M=;
	h=To:Subject:From:Date:From;
	b=QMnrL5PBYtGE20AlKP7ZhRI42WWTwPTq4iepQE4M0tpRX0/MzIAB/ePg4lA8sIouB
	 PDygoswie2UF2RRaUuzgAMamXtHL0B6TCSn15VPJTAz5O9ToV3hxpD5kkCr15NAnkR
	 V1ScgZkz69YuGxX/jKgmC/P16CpBsxNo4ituJVT4Cpb5tGawMzp9144obewJ7EiGsW
	 f5+6CuXJgsaRzESI1PktXTgzuT6GZ85OS6yp+yqQduBKCSvz8QwiTRKhQp0Pb+UBcE
	 cDf0syrV0H7Bn2NsGbl7BJUiyOFbCw062MMUWT88Mg5Bkqo0M0Ia1NpZ9Xfafqn05g
	 rG23D6eSsTmYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF934CA5FA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179072343368.9482.14190570720533114433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00044ee24c05291c98903b280d38b0f220b21f3303d7dd1cda3ac0be925f71da
Date: Tue, 29 Sep 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790723433
