Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6409C13AA4C
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 17:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719422003; cv=none; b=lAoVaZssqIJm94vyUHZaCbDzF2xcbQDdsM6rDgPnldk0UGEAB8uUrwnW0V3h7AVqf1S7l2LEx4ptNyaQHBXGQtlEetxnIw6tdaJo3MItNBW/3g3+8MY/EMREAWoqhXpvI72tgmGUZYLys74SKoTzIU3sBohPgJB8KvHo6K6I6Hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719422003; c=relaxed/simple;
	bh=9VH0RcZE1rsoQAPZxByO1m2YZbcVkiJGI9gSIALgUbs=;
	h=To:Subject:From:Message-Id:Date; b=oE//eXwrtwF2/KFlTKUMSsRBFjhm2zuAzZfZ+1SW3E8ldMHxXkQW0mNrFpRz3s31jYRahn2dTjFoCDphgHIY6wJDDad3dujKRo/TfSgvcD7mIc5qh5r88DrewxN+HxE5zTR8BSBa4SGXXpHBILHFkf/9GG1CkMPUXUuXgDTE4Io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pnemTesM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pnemTesM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDAACC116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 17:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719422002;
	bh=9VH0RcZE1rsoQAPZxByO1m2YZbcVkiJGI9gSIALgUbs=;
	h=To:Subject:From:Date:From;
	b=pnemTesMm4IeKbrr4u6MX0wnqgiJ9vlicoHtHkBbiDRd/q1O3WXI3/mo1RuSiTKaz
	 7LtKq/OJW5NMtug1ihmg1D0Cs1UiDICzcqaXv8mLCzEWa+2KZozdBnsmOokTjmtngF
	 uCLRx1X3aVpyp9hyjJygedFa7oMIooXUejiOGb2mhIw3ykPAc0c1uOIIbtYbIfnVCN
	 8e+NxhJ5S7Pfpj79ZhbDj7nmBej4fweXIsxC6BpwSi25IPY3NLoFFjAzPneCjtRneR
	 8xsgBbW4Osh3SejYlIC47SEdUqnmWhXU1JcQ5CSTkZsq8jFA8yQMHExWRGbi2/YqPL
	 2SzrTAWlAqRPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C322DC27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 17:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171942200279.12407.6328788601458383351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25e356e35a2c86846d2f47f6981dc1f13643607d7e2c13bfa573c468424b46e6
Date: Wed, 26 Jun 2024 17:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719422002
