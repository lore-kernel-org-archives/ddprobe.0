Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32752223DDE
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756015194; cv=none; b=UXao54KHa2Do9DxqX+X2+uWT2wFYUVYy4P6IU/zhCJj40DJIRo7vhGgA4vbJn0qYGh43ZJpH9rE7EIA187Vn/H/23uMAqz7MQo7Tx9rI/yPof4bXhaksS3tqwQ4NTi3wXnFua55Yqaf7J/1DoQdgoWqCJo26p/xFjDb56plVYFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756015194; c=relaxed/simple;
	bh=m9V9qxY9H6mtimu8nyLSy52SlqvuZpMT7SFBkhjP3Mg=;
	h=To:Subject:From:Message-Id:Date; b=Rvy49VB2auHzu/3ZowigJZge9850POXOKiwMpHY++Ii/giQoDLaj/56k+wUEmgCcTIfHIXcJHp1JMGD7MTRDiHBQkWCkEBahjCKOVKEduOknqf3KCf0FleiNg0CbExVYwztJHdlrXRNEhFWtUUnt18oayJvy71w3pefWpv7bl/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RWghRG2w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RWghRG2w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7492C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756015193;
	bh=m9V9qxY9H6mtimu8nyLSy52SlqvuZpMT7SFBkhjP3Mg=;
	h=To:Subject:From:Date:From;
	b=RWghRG2w4KZLELoIqp8jBmVTu1SoZL9rwEtpMq8fyFhXet/YpUFnxxjYu/KX1Dy/c
	 wy3CyWT0iK+D7aln3R+p2KHGLEz3j7PXyfp+izXZN/YW0OjU5y9qNJqe7t63Amabh5
	 urmEACRYOfVGxrNxS0A4gZjy3B9AkkKFIgU29N7HgLdbaCfgk3S/b11bI8frb7zgQh
	 C67hxSTWHcggNEwl11nh+4IaM6A2EJyEd0iLfT9anvFGs7upc0N4u+XLjVPi2mtdEq
	 A2pZC15bpZQJrmgx1oecusUXqak0Ret3jo7Ie9NkIZ4XGKVvgagOYms6bwfpxer0Qn
	 SiemAxCO6CvLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9337FCA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175601519357.5966.12270178000236949167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a38b4b776c5c72a050a9e22617a595b69a2107c6cbc3f5a72732e3085d969791
Date: Sun, 24 Aug 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756015193
