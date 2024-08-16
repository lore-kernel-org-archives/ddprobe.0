Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7C082488
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723842354; cv=none; b=O2uKK79YOOvzFaN6pCu3YzfMRbbqVV0rilFETIrNV1/00pr5N4+FYxTPKWPNXK6o7H4rhLE1fccbEg9EV4mCEU4JYvA4p01ItI6K0dOTWB7mNz2cYgLCzusj+vG75S7zgckXZjOLtDGS04PzFv+t2MIfTC2mGH5MFSCe0aRPr5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723842354; c=relaxed/simple;
	bh=IR2WYfYSQCKZ1zJMo7JjKnzDiLpr6noCFr13dv2g1RY=;
	h=To:Subject:From:Message-Id:Date; b=gnDeNFUpeZX236/IFl3Hd7HBlO+km43S8t1tahgBOxNVo6lS8tYjbMiE9WquNcymm2/Z0Y0z/B/++Rp4fLNo8AMalK6ES6ZRkfF3+DH5CM7gNqfLKMji4Q4/qrymgqyum41GLJd2aWcYjqhYiS/jlYu3NYZP+IRqev+sujvoCto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4sDApcX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4sDApcX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B408DC32782
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723842353;
	bh=IR2WYfYSQCKZ1zJMo7JjKnzDiLpr6noCFr13dv2g1RY=;
	h=To:Subject:From:Date:From;
	b=X4sDApcXkQcf62ucechhzso5VAumMxL8fkh3QSAPajKXTenO83W8WHuu1XNYhWT0D
	 /F3TWRXmdXY8ahJg7yzFJPNorKaRyJuIShNQa6w3QBK0tqEvt/j1mgEOj9MwGSnsY3
	 7TZVUsKQv0rrUmKTScM/mXXdW1NUfTWJXzdEGqxvt3ux4wyDqKcErv0IVBwriwn/AX
	 zacQNpOzstIcLTCTRd79wnp3xiAIyx3WlwJu/+szwCBoqq4cnwfhcSnlJb45sUzaVe
	 8jB9S3rOWbDyRc+KOTR1nVQEd5zLdYBIa/Vii+ALCCaVLL4W0CuHPsGckoU4F8Nawk
	 aO461I7LqaSVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F484C3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172384235364.21839.11580513265960853509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1621516c2672780187540e789ef8777ee90ce727a8ebf7a4480e2ae08f6b7b29
Date: Fri, 16 Aug 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723842353
