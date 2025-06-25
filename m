Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFCB2DAFDA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750878594; cv=none; b=EQ7CXlKzCbfcXsHXDBe6qyTulqZmZJbFUiDJVyHF4lKP+c0LM4FQJEXvpv4LsXeKztzeUAT0cPViXUCw3pL/1vE/KDlJHn01TDQ41NMV6AapiTqffjUFPcr48BTeoU7cjHLO8iVVncrCVXYDUgU40k+m4MwFFX99ofKf5D2snLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750878594; c=relaxed/simple;
	bh=WFNyQLnE+Ky9WYT6tQu/aNNMWbqtCevN5yBvu9STskI=;
	h=To:Subject:From:Message-Id:Date; b=KbufIMbZrPdsk6lvmHYXw9UYTXw+c4ytRr0i3B+5hjZZDptY8fIbV0YjnhOiHd/gJiwGUaggt4k+sUrWfD9iAOEGNCq24L45ozWAvfKHGnjtfIPxQjjggj2J4lIEdaghtsUUlGyLmeZluPmj8VCFrdUABU/csQZoD05TA0BCkGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6wUMM5h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6wUMM5h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D151C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750878593;
	bh=WFNyQLnE+Ky9WYT6tQu/aNNMWbqtCevN5yBvu9STskI=;
	h=To:Subject:From:Date:From;
	b=a6wUMM5hDCmGDQJ+zZm/yBc8oErHar7RbMhgLqw6QetERiw+hbPEHhxZSV5vtxh33
	 IXuD8zNis9tbbf7i8x8ZgNO98tUR48Y92i9KFmupSoi1HOD6Y0nXJi3TWJuni7bRS6
	 Q3O+hAN49KvvH1UXxuLcalRJjSUVvx0kRdiqlzOfJvWohYXy3X6GG4eaar2wfoPcIG
	 GBotQzPTkrrlG0Vq9x354mTUiwGJuUpzCO+WJLMwVpUO0P0Gc+owfM1sVFiGLCgtuk
	 XbuGSch+BAmzw8tOfYd1g4rVSNbgt2gYVK6t9Fsdb1XEh3Ny/gl6SCIKqCvnHfjvil
	 RTr1b027Xx+9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCB4C7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175087859357.8748.16996141564672826885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 202ae8b6d28c348e8980ec3878ed05f7be0165b0d0c9475a2447247da92d07a5
Date: Wed, 25 Jun 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750878593
