Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64152CA6F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 06:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718431703; cv=none; b=RBtWtebUuWCII5qJ7rMEV+J77lFswBUxQljrTKpDPYVWzwhw32dEQZlndVu9Z5eTGikf64sfnM61cvIK2XOcbiuaEqx6nSSbHBy8KAYPuvowID6rvqTlc2U2+SAz9xYMunbMyKdRZdYDODNkpN3kFDP3V2b1F7UPwERFFRWETNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718431703; c=relaxed/simple;
	bh=ol71XkrtN68rMepecgJ09UcpxMZ9suk8/rSZyUji3Yc=;
	h=To:Subject:From:Message-Id:Date; b=rZg/Ol1ncEVL2QP578Vc7Wf/d3ZxvLgJC24YgyGD4p8Gf7W10+QRcF2XSheS1ikVTvO+IoOlPLtOVxXkmJYaU6h2Z1bvhSJ3PV508SOkSyNQjxZJlem7kAHetgbc8Ri40lGYq8dbclAvSij+mxwPf+fT7SY6+e6m6rNx9nhLrHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ShrBWI0F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ShrBWI0F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6157C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 06:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718431702;
	bh=ol71XkrtN68rMepecgJ09UcpxMZ9suk8/rSZyUji3Yc=;
	h=To:Subject:From:Date:From;
	b=ShrBWI0F8AV/l2PyWwgnAUhryZhGQjUvVBPywa+lvZB45Yszp1rbxb9x7wKzJ/Zx5
	 dnXymRodhiBuUrEBWoelCm2el6RXlSFJEdoTFQ8A4Q3W+BCrJgbXNkVN8qOsynAuin
	 LnHEhMj/aEbRmdtxP16CykbysU+SzjLanteC4hLlDLsqboylmgtWOI0TYXIAop0Wyr
	 /6/Gs2aCokHOItj7yLZBlYV3PDArtNbGxfMDduBgBQ8DV2lt2MLkVV20L3qv3e0zcw
	 fJeMpUvko6uTe0kGRpMFSGrYyhHqM1Dy3CYGTiZ511SZYn1DNcB29UyygOqsczI0Ry
	 bg0IiknVM3j0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBF69C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 06:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171843170280.7518.8810462827669951473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c94de49ccb7c2bf2e25cafb16ca376a53ef59d06c6e116debb4ec815278df0b
Date: Sat, 15 Jun 2024 06:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718431702
