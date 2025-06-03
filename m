Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DEE61D7E4A
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748951395; cv=none; b=UgaVdkNhE+nECqYMr35yd+amI0OfXzwVB8pwtnTUTMoO63BtOF/3QEwgWuRv3zAGj8VSFTp8rX5xPNXJiZAyyPqqmj5aOHRDaDGoOaRuEe4OvPnewr++tGC5ULbwHRg6oJWrQt9Ffh1jGCW2z6z6jCUrvCppaQ0Ln8T4vsKRKJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748951395; c=relaxed/simple;
	bh=zIvwNdHbN6iw882cqvmOzLnhS8QYL1vvianHWuoYJTY=;
	h=To:Subject:From:Message-Id:Date; b=PeD+03p9eCFP4X2aCN/IVH2wbSLXBhCU76eO7EdiE/xIELTheM9RKK89dlnnwyvO8HQk0Pik79fAjlnaHMnJZJ+xwLDo3n0tCwZj2CraWfNAZxSOawix8kdCEdreC7eIB6vfwbAXA1B1JncVN78i6Zd7xOEo6sY5RtGdElgDaj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FPteOrum; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPteOrum"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D82C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748951393;
	bh=zIvwNdHbN6iw882cqvmOzLnhS8QYL1vvianHWuoYJTY=;
	h=To:Subject:From:Date:From;
	b=FPteOrumJ3I+nD2wRvOxzzJP4ReXNmaOeuIu1XUoASjvV059NjBdP7oz2XkvFCx8n
	 YpcOQf+Tx8cktezulSxa45CUK9sEGoV6bhgh65IIG26xrsxm1j7GhEklE98ORu88pI
	 0zFsWYgKhKVj7dXMcwkQ0NJ302oqgTgQQ0csXkzwxjhYcq6vFg3/FO76ZGWq3eVlqt
	 f1Z1/I1cN3jieEicWz8J9Pl2YFS06QsEmfL2W2kc44RnnJxxqkXaTtfyvYnUU4cDzI
	 GRce77rjWQr+7M2jCoqQ51oL/LCcNyYBKxJRl6EKwIFlsxPdrvkxqpsB1Rv0r6q9gd
	 IL7xfAbdOW+9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E90BC5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174895139357.27920.18222614103291306703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a07fbafd4a84eb73a79ee7c882dc08cb755d9d9b207511b0b7ec71280dfc3518
Date: Tue, 03 Jun 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748951393
