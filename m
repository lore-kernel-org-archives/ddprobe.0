Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F8682FDC30
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769465034; cv=none; b=h/7X3X8+Syp5VczV2cNlfrzYYMPcBJNzk75mvbICPmn/z9jZW0RqtXeCHXYGjpKYn0GOzcS5h3rHp2NGgpmSKN/HNIWP2XVO99XgSlAYwHR9axVFh2I1dw47xBBNk8bm5An+4VRpTZGRqdhink6Muwe418GuGndwLuaPXOw1rpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769465034; c=relaxed/simple;
	bh=9arV5iXkZLJBoJA580hL/O4ypv3Z6jhBvfFix3oi45g=;
	h=To:Subject:From:Message-Id:Date; b=SXu/KAZDnN2tfvFS05G34mJrbH8va1RuNNenz7Pe1w0BlbkJKPo7qRdA8Ywn394HeWycV1YUm25BFmYyq13YXsjLjEGjl7spKIj9TDeRy4ToKhviPN1pRxF3ApdqhVHWdrdJbq+8ShAagu24dm+bFxWPS2nvBAqgsA8IRlkk00I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qf3QrlTz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qf3QrlTz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A972AC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769465033;
	bh=9arV5iXkZLJBoJA580hL/O4ypv3Z6jhBvfFix3oi45g=;
	h=To:Subject:From:Date:From;
	b=Qf3QrlTzDzTYbmLBTOLufYBLZROpuRwq35ufGRYb6+PmzzXt/PjZ+2iDlmHkQpV6Y
	 PEHv8phzdhBxexAoOFqOf/hX5/+V9IqZEoT8/+bUZm65iUvI93TfSfFuuDqRDqmlkR
	 O+8SMnCsWTTLACXPhmPLtD32Ti/QuKChLSwadw3il4lBjV4W4wzXALUpKOAuwo9Qtl
	 AvBp9V5OU4Os3RxUYwii2vkfZWOEhGFtIkiAXFPa67UMVUfvytxHxRirGXievhpTii
	 yUMf9GXElRwPcpgLMcHddgaR9UKPk778bjrslTtv8/bAwsrnVxn1MY+h8ZnKOPVX28
	 JqyBnbc5ddv2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DCBD1951A
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176946503361.31059.11402200031865707979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58445c4e10bdc7c219bbbecd13a493956ad29290e506bb6f83246bd87b134fa6
Date: Mon, 26 Jan 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769465033
