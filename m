Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3713D210EC
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722022554; cv=none; b=D3H9ef+HG+KkdWDQWXMUtGbMDEU4N7THvfW5fMYUU7UL8lk4lLe3lx5p3t7L7N9xc3+kM07QyPEBsJue2yTlsoy5I+z8fJ7o3f+ajq90keMqrfjlJUkDXk2bHW4x3TtUeNPZ+YOHOfBsdTiPwTBclMUlyCI7pnNRT+os/0WDZxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722022554; c=relaxed/simple;
	bh=xrvjPQV0pIWaNP8LAldlOiIoNkiQFqy1qTZ0Um+Vr0E=;
	h=To:Subject:From:Message-Id:Date; b=czyf6Cc5Em41gGZiFOm5T1yDDTZESQn41LY0Q1reuZBtIYD75c0W2R0POmrD4y9e+1jR96B4XcfjLXlwAN1W4jSOSk7B96NJB8Lta3DKnMR799E5MJ0N54VduBhV84Sm+DtbhLQbLtcvG6NerhZOjZAd7vknflO2e15r1488YxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZV4Q16U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZV4Q16U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC97C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722022553;
	bh=xrvjPQV0pIWaNP8LAldlOiIoNkiQFqy1qTZ0Um+Vr0E=;
	h=To:Subject:From:Date:From;
	b=OZV4Q16UZzobOIh9lOxg/2Py2E4T3sZs2acUi+NIkSskHexw1CpkNAdHK2u9z3xLi
	 iX0LwRiNQCVEmgk7RQcWl/fzK1dOoiLmWA8uGNtelHd0Ac6X3JPubbPZdUjvAFYZTH
	 ipYDKZf7Gz2htFYq3GuKnzG+jL2TuNdy5V6gfZpxb6in3s7imbwe4y42rRdKt49voX
	 QPANBV4U2N2AsHmj3eYiXEkLeE9qgw0AbcSxmFNL69lrgd5w/F3CQql/Ky3m7fKTOp
	 yMxRY2pL24Ytfbh307bBHmzfB1k5q0P/S7ZX6vF/G7Qjdei/VklHEN6zI3pO97lhRb
	 JbI5SrSvqgD0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F40C3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172202255362.18039.12329761229115073718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21e757e06eef042246dd94a083b410cc54e4f43f07234e0934554fe9bf8e0990
Date: Fri, 26 Jul 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722022553
