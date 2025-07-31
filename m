Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CAE114885D
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753946394; cv=none; b=YjqDrVGSyxidyYoPMvIryP/al9zFx2VX/L25A2yAt9blocpBtoPuBlPVC74Jy0hBoavRSHCqK0nY1IxY6xWDkgPo9QJMTX4vn4MH9TmUFyqTuvDoYAPkJDSm+wL0Fzk2dYXTDqpLTGx26Z6KnozrH98RDdL/hXHOt0deipFgE3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753946394; c=relaxed/simple;
	bh=lzipr2Wjzimqj/jikG0e4FSosrbGJPPeOszSwHGqk9k=;
	h=To:Subject:From:Message-Id:Date; b=G+rtxN7BW0AT3G7SIJXX6Yl+FGKG8vYVgfGtXve4UI6fGcTRmG/Mh3NJBZQXuvdsTolWXprcukt2AlUDqEUYRIxGQUQove8dOL0TTRKyFBo/uW9RUpqKwkwMVummgVlgqtrDeoDEKD+30ZydcOmCZgIUSs2fz0zOj1vjVuTB8NU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MwUFdux1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MwUFdux1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AD28C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753946393;
	bh=lzipr2Wjzimqj/jikG0e4FSosrbGJPPeOszSwHGqk9k=;
	h=To:Subject:From:Date:From;
	b=MwUFdux1avSdAOrxixG1cZc7fOlJlBTyTNEKj847yJVBoYwhgRwmOE9zEz0hUHwqZ
	 Bl6DhKa1oT6qP8yBBcNkW3M7RmtFCGjR23qc7MuY1imdk0Ix/mMQyupcxv8gFWNkWD
	 tE3KI53bcSJGBj/F6K8yu4uO1C5v2jnQRPVb97wrc2G5Oi8rLWV0h2hFFOGARWvaM1
	 P4jI2HzHTm+DaANh6GFBSn03D8M6EmssI9IiZ74VPpMihfRbqqsbg20BkfNsJ8x34F
	 pf6fA3x6+/zXZgC4NzsBLz7sGdieRbtPNR35fTRXZE6gr2MjZhC79I5gmDTQ3JlHmZ
	 ct4epkzVVAdag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE1AC87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175394639357.24154.8894044971047669059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5989b1da8fed2b8736ac4907c789ffa68ca2fd7138469709d24d02a5502a106c
Date: Thu, 31 Jul 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753946393
