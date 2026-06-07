Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3241131B82B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 20:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780865074; cv=none; b=usOBfkzzZ0gc0+hxBFQWDlpU8xMD1Qt36VNtHrqLG4WeXozqj+/pXKC95OOqb9VQnngOVcYGrsFuLkMA7Ft7yci3TriRBoRj2X+bwJu2o/ETymgjUV/3Tq7bxIpWD5O/RFSi5MaEOb8GlbkPsUsBSasHdlvUVs1qSXpe0OUodkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780865074; c=relaxed/simple;
	bh=q+fqNQZkMNQlMXIvquH9vmWljMXgsBu3/qp916IlCms=;
	h=To:Subject:From:Message-Id:Date; b=FsHwScOoXCOhvpSBxXjUrMjzoyUGkK+NoJIwN+3ZrvUnE49VxPc6gDn1CLy6EhlGgXU4/Z0+dRKdifGvona2gCQBFuUxuwhqEsgdqUWO9+/1TLLaaTkvzyH1DywesAtglrEbXHUmmpipYVLVGAG9Cz0BEfiiF+vRUFlvLTHxVm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q400Y4lh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q400Y4lh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C33B8C2BCC7
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 20:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780865073;
	bh=q+fqNQZkMNQlMXIvquH9vmWljMXgsBu3/qp916IlCms=;
	h=To:Subject:From:Date:From;
	b=q400Y4lhUc5RDOV4VDOq3GQETQUGmiYAzDqLUL/jnkZIOFr/BfNIqoxiGQvMLVBgj
	 eYgTJbn3q/Gw1kvsFRbxq1hwj7UyOzRLDPgN6uc7g+PPUWpaZLdS/Iqk5nRm5X6AOk
	 DEAyLFDtUQXPpwUsHcmEE2M5AUdRFiXyhfR1y+Tn5PDS2j3+ujVi21BszGgp7GmGbZ
	 43WWjI91cGJYS2n42bcdNk1uNVEqlSCvsZHCPzfXS42/2aTX1czNk2ZUPa4C0b19bW
	 StrGU5uNeM7LIHBkI+acosAYSnAEOlOfClQozd6Vit3ZGIpUbM0f0l7OyxhOpuQfoq
	 BQlKsfxULBIDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9C5CD8C90
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 20:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178086507369.31334.5128673175189104257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a8cf9d8b9c8fa706fd9d8819e5a91f9af9fdb651e41606a3f9a913a4dd77c90
Date: Sun, 07 Jun 2026 20:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780865073
