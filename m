Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25494B67F
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754959794; cv=none; b=WRu401wM6Ax4Yuy9ke5/+k12LLvAxFBQ5dLWinnblN+rKKSerG1V/s+td3tCPCyY8RCiv3O1t4JxGldGph5pjHW1MXdE6G/PaidwLF5d8cI4yRb0y5MZqyT9h9c0IXdzHGQl/PQ5sUafpekRw9Qw9KuPJpd7hoica3eKeaIZDw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754959794; c=relaxed/simple;
	bh=mwx6iy3iMVsUmZDr4thj/dHhbonrJ4/GCxKg+QE8kkc=;
	h=To:Subject:From:Message-Id:Date; b=SJS+2FKtQZhbpuikwr1xCPJZdgobTFicc0B4A65o/syl5Ep599YItNRq7PQf/q4o84D778OzDknbZI3OpVwc3UH6MC74l3Ijifncc5K4cLwbJvlmLypqgmALa1VN+W/HS0Hcya/IFv9ifAex7ye84t63uKeAMoutcTt1+WT1YZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hPxmHN1A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hPxmHN1A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A447BC4CEF8
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754959793;
	bh=mwx6iy3iMVsUmZDr4thj/dHhbonrJ4/GCxKg+QE8kkc=;
	h=To:Subject:From:Date:From;
	b=hPxmHN1AsZk8aSXVl/kC9hwuN5adCGhMBc2iBFqKwgEjg5oJBkAsbniYUlH5AwFjY
	 T2P4lH8UiFj6Dapo5KcRXs5zoPp2mZKi0VsdnK9YzgjxLraBKlfpL0Mm5pRKDE2iWQ
	 AmaRu9j0dU9ta/pE8J8nk/sujDz7meGjRts7tVzWnDEHaMlN5LeqQQWL3H09ApFS5O
	 +LunsphiNMCn0N5WAnrZt/HA+oA9nLa7SU0x363jA0imGE6b17Aujk8OfmsbMg8BmS
	 dYdbMYRUinhmVpwwfXBCooyUmzJvY5icCUys5tJsxGaQUUEmIELHlkL+mNRMwTRsYy
	 IFwvvDNCXCBOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B36CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175495979357.10841.1958793223407107022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa83fec48fe0df76a39c9f0acb812d9a8a58c6bac71848f09e3d28e0f9acedeb
Date: Tue, 12 Aug 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754959793
