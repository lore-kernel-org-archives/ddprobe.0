Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206A3215F53
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752244794; cv=none; b=qwkJRHLj5Jbord26KPIszCYKLqU/Ea+pFgJ0scL8wXi0tW0XFzk1fXfrNvI7LBuhXzkBL4pKAfRS1QngUm7Nz9prGWD7iP7S6hV+dNbamB8UVwlzQrarjCld4STJvja+f0EJxaFwcskdI3PbSlRRkOESWVYy31/N6JE7FUCr8iQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752244794; c=relaxed/simple;
	bh=a1Gz2AlkxQMUW1tr6Xk5cdLNV5vca7MIj8SNZVBNIS4=;
	h=To:Subject:From:Message-Id:Date; b=pMlZFfQ6tn9x9ahpfvNkv0v+HW5/JZ3f5poUz6dkHxXWitaKyXc+p9a90Eyt7Kqc5HDCV7N5TO5R/nSnQpbdB8D4vKrOIk/7FP7PmmWOW4XaeZoQ4JVQIcPyynRSOW/lnIVyUsLKpLo6g0QJLynNBrzhoLp8mCR0KKGuDeEFdRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJgJ7Z6N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJgJ7Z6N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2089C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752244793;
	bh=a1Gz2AlkxQMUW1tr6Xk5cdLNV5vca7MIj8SNZVBNIS4=;
	h=To:Subject:From:Date:From;
	b=XJgJ7Z6NdJmPF2n98J+LqW04+NRGQK2OUPPVFUkCqK9se/mU1WOFd2OSgAhQiT6NY
	 sv/TuzsiJXVt7CA1+PGESYTQZdmVgw8F+DixTQRgQ0HkV1HRIGNW3RWZABg/6dZc/6
	 RQ/w2sID3EBQvoG3+vFRC9WvRt9EhcvWOJQ6hZ9uW/wt6xz4xkEM1/qjIhARGYdLq7
	 tJ9EvihX3tD5pyq77ykVbNEh7+hGsOPB+nEw6GlbaG+DL0k1rK4bOmTmt1AavPtg87
	 lknVAuavGkkXethvVwPCxbVH6DpNHhqdUFlrQG4gpJCfQE4hSt+a72X175XXzW0Lu+
	 MrmszhhxjSyBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDF7C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175224479358.6618.4121717638562792691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a40ce37c71641bec14ed8484d94a85ef7e11fbb86d629401a24d39fe8db223b
Date: Fri, 11 Jul 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752244793
