Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A65F3A3E69
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 03:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778730034; cv=none; b=saPsOLAuQX4FxiZng3ztt23YWWWRmX680CU6AqGmlFlshpeoQKTY4MrAnh82fxmWeWx8DAHJbJcB3Am+9fmng1SwPWRFFn90S8IpBUpKZt4U0c635I7e2GmBr3mrwwOH73v5xhfllyiORBR62NVgSsoKSk8J38h3dYczKzIm9Ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778730034; c=relaxed/simple;
	bh=ouZ3UCyGeVnxq8bFWS7jK5QOXF9IU7wj+0ykDBSXJ20=;
	h=To:Subject:From:Message-Id:Date; b=atka3ln4iV5U2fpSl6aOTbwCT2eBMSiozoyh0n7CmcylkPiU2OSM40gXJuk4sXcA1nESgQFA9yHeugoCO7M5DB5YIh5CKmACizpe+/xUG2HiATykEGgKOMkNYDLA2rBugujggRzAl9ug83TrSAxiblL2PXz9GtVYW9pSSYCQqE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9A1k8G6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9A1k8G6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4FB9C19425
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778730033;
	bh=ouZ3UCyGeVnxq8bFWS7jK5QOXF9IU7wj+0ykDBSXJ20=;
	h=To:Subject:From:Date:From;
	b=W9A1k8G6oeUxIapOe1eNTTQJ+/Hp9ldeADuEnizx9i578yJXwTa0yZ/qDPCHJE1Ua
	 MR4KlXjTnzsTt4REkQJnvz6/ervmHgefpCcGctgBNKkrC4cYxrcCQCPg9Ug3Si5E0o
	 91NM9rRnxbF/lhZYZ5RNIdekQgPKGojFc4W1jKsIV9GNkMExipYYp7PMDvvttoMIWR
	 Y17AnemAqDeTnZYVX0Dcgybe0viYsbn52mQPsUZnHSgIbuY7vUk0yo6SGAncG7VSI2
	 xiNrqUc0RNiKiyeiZ6H2Mg1mLcuYiUSmkL0bUVMPHruSxm10See/HvR0ztPXcXRgRR
	 XVraQL3PVVsWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5FB7CD4846
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177873003373.29589.9141059116128365779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10755055859da16249be300f7ed12a140be8f3d5a042199e3c5041d32b0f29d6
Date: Thu, 14 May 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778730033
