Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7D7282F5
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753312194; cv=none; b=NR8T9r8vpHLAoUutb9xa2y8en399EU9mgge9Y+Gf/Eh3yAZxTB9CAUjb0eERTj/K2tR56LaXVN96MbNfy2xOtqAG6PGONa+aq22qenHg1Je9z3dDkc2tsfX76/gF932GRQavChIqRA4jVPFNdjiY0qM7alQdsip9o1NxgqhSvdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753312194; c=relaxed/simple;
	bh=m45swM7iehcfPybD+Ipb/i10/2iL5sQzzRsjeAc55oE=;
	h=To:Subject:From:Message-Id:Date; b=jTNQvBcnj4M7XrsoP+rMj1d7ePi2mCZKe4AAztcM+BWNCAgoYyDkjdcctbrF0vGOVeSi7Oqaj9/tIKWIdohZOXvu8vEmm+BBOsfb/E4QBqnMqglZ2u+ETpO54AAO8LzO9N5hbgfRBg3AiIhtWheJ+FWw3Jr1GuESXgalpwQfS+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WEFyVKUS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WEFyVKUS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2101C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753312193;
	bh=m45swM7iehcfPybD+Ipb/i10/2iL5sQzzRsjeAc55oE=;
	h=To:Subject:From:Date:From;
	b=WEFyVKUSSI1a97aHYijz++0+tMwgVxUj8cwmnEyY4avwIxII3OmpeSkBqq0veOAIe
	 Ws6r7r9suvdjWEvrnPduglJ3ht7dYueNRONCFiR3piPBPgmDu63EFQRDHiwHTrEPFS
	 JUtCkADdBQtVRGm5qFBemrlMgb+tiAjS6ilyoPo44kCEQvUm4ZMHmyN6whzwD+3gW/
	 KDBApvUqXUuVi11uNFQto++w4yiXVbUD8hrePujPbxtp/XFTKCx69j92HcuLyXWbCq
	 +7BVtvdchHU7PEH+1HY+KdvwMFvYOG4S/LrbKzAqPVG9x8xDRB8OA8R4r8bMVTzY/H
	 nl+zcIgJ2BfZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F983C83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175331219357.6506.11609211510275742974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bea28d71da87479ca5cbc47b8d928d0fe9f4f8c67e5c1a4e2c7424a41b54ae69
Date: Wed, 23 Jul 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753312193
