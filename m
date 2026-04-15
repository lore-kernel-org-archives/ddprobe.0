Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB70285C8B
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 22:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776292054; cv=none; b=CtkPghmHUb5Omhl0tiGVnF1zfylNWdYfM+IF/e7nHfm0o7SNQajwwK2O322XzcZ2lPArcg9pIAhJZUbwfveA/is1g2ml5vYhaS+nBACW8N46rIhFIANC1KKiWYT4H8OPjtFD3p11rFSCzlr/istGpqWXQuIDZywuRqybzd2RN6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776292054; c=relaxed/simple;
	bh=YtJUlGv7B65y42odogUk/XOZVqQTK1jtmgmTyDbtvF8=;
	h=To:Subject:From:Message-Id:Date; b=GpLnsTXX3/YmfKtOX5p1HLNi7Rk5cti4/PAJbPB0nXMfQ77DaHWygl/8EiRUrGxd7vUuPDGv15vK71j/+yQxUePphB1InleXkzhYuBHekeGY9Y9INHhCWQs8DoGqnS6Me7/lBJjVN6aiWlQJbLyMBzTfdJdBHquGWxkkViTMfW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btOZ6HWj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btOZ6HWj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF250C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 22:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776292053;
	bh=YtJUlGv7B65y42odogUk/XOZVqQTK1jtmgmTyDbtvF8=;
	h=To:Subject:From:Date:From;
	b=btOZ6HWjAplXXVnIxeoLGQK00FFDx1oymQtmV98uSF4lbKL7MB+J3XkP+f65x8D7M
	 8vcGqZ/rNbRwBb0GURlnArmTGOwrzBaW9B4X/PCkxi8CcSWDaTG27HEKxF1gbg3mDk
	 i7Q6pziveUV4b6Jfx8ZtPy8ztPIdhlK1C4SzZKdHV/Ixe29eEdNTy6b9H6ghB2JPcN
	 s+XGOhkjlVpySqjfGUbdmeNvqjdzjy7wEH6fbexXJ4Ed+ZHobvXpdmeYBT4Isfu8j2
	 rvKcTdWjeoT8YhvI6O7x6cplyPGsXjtlxp1wB0NyyOHyfLwX1mWrkTF7f6PbjbnlC/
	 R+pBVtPLw9+mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCC0F433CE
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 22:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177629205368.29214.15541604038267895165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2c4d914f72a986d3aaeae645bb2eb810e3af90bd0430e602d27ac92478a772a
Date: Wed, 15 Apr 2026 22:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776292053
