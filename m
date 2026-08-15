Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521518632B
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786827634; cv=none; b=CkZtuc8DZA0cOSro+26NVNkIqKUZs0cpxJrJ4e+5nUS/dLk7n1ir5SOmNN4PPBbNeyq9EDCDRxdLhbxySVjF+PLVKdAUsu9T51aEYyxiIY+2OKLMTSKO5AB45THkh1aBhW7WtMKxXjVNb7sntSPaJwTh1g3+9iSByuy4MHWPyAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786827634; c=relaxed/simple;
	bh=0RkqBUkorWDBbuJjSHfCiDZqxy7tIirM0uRgf07+KAQ=;
	h=To:Subject:From:Message-Id:Date; b=f1qH1zbMNQqcpFtv04i3omT8wcJNgv+NOCkKvKoWqm6fbcq37sb2Rm9hNeZ5HrzXxhbqdF7PEjUXYpX45kulaBwqlJPo6MPbTGIMfdJy2CRXuNx5o7KHU4rIo93oLEaaf/p00UJMJgQABE5S1cuUhRVKJ9+EKHym2JIKaJVebZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kxf1UxW2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kxf1UxW2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5322C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786827633;
	bh=0RkqBUkorWDBbuJjSHfCiDZqxy7tIirM0uRgf07+KAQ=;
	h=To:Subject:From:Date:From;
	b=kxf1UxW2TtqQsFDA8z0y1dzbchte246901iDRqfUmTzi9z8mVw4bv2sTvh4xBQ1iu
	 s4sHXuQWwk0lN+Yi6k4m8Y6SD+7+osGRdvgpIVVFLw/dHMkTHeB02PG+AANMjPnY+9
	 o7KUdAyhc96vk7CX7Yyruc0WzhRH6+/W7HMNV4ifoUUtCubxKN+pxx4BOLn7Kf2F/G
	 B3fPbL9wdrrDw48Lk99qLCQKRAqukcqLoIGbU2X1xkjtgfS+gOuMBpBqEnTbxrV/V/
	 ELTGvX5Gzh+pk8iIkc59+Ks/p5y03//EqE2L/yaxVVTFHABtYzAOXatf4deC2xhji9
	 ecuAeHa/slDOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07FFC5DF67
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178682763368.23090.1047523328767389703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90a7eba6fcef3a4d6cdfc2a873b255654a6955a610255687e6696bd889565ce3
Date: Sat, 15 Aug 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786827633
