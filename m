Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A4D15854B
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724313354; cv=none; b=lGUc6shbFpkdn68TsaGOGIYMTZLdL9BsNrC82vcYYWK+kzshBGO2JGdcpL4uwNffvSJc9VjX33xsaWm6pyREL9QpiruPnnPfOFrbAChUVRQzOiL4N0WB3V52BI2lXD18XbvgcvRJVdo41mvc8rdiz3N/nS742GWyb/zkwFcbwsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724313354; c=relaxed/simple;
	bh=9VrPQVaofAEJcX3kxEGBTdYeO2EI3d3jiPtKKNAHX1k=;
	h=To:Subject:From:Message-Id:Date; b=ofilmjJf0wNpIeflSWnpcny0VM1LWZriPuti9x5vDcGqKzYig6ZIP5xansmGRqXKk8vrkLmhRrEp8E4Zo9Vi9yq4GduvGQsEthEcOn4A6yVNlY7lxkixaMBB4ifiSPi+Oj5o5vdbjm5RBCCJvHcCZiujMuixDLqRyiXJ4ztJYnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BTwZz2Rl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BTwZz2Rl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD01C4AF0B
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724313353;
	bh=9VrPQVaofAEJcX3kxEGBTdYeO2EI3d3jiPtKKNAHX1k=;
	h=To:Subject:From:Date:From;
	b=BTwZz2RlvzCPeyuCPUokJOiEMPUq9fJYDNQR4kD+D6AlGxt7MNDgdotNOfxSFjtB1
	 7nxOoGGNeRW0gDzDSXLufEu2fqoeVdoESjNhhBMgit8bYwDRgXYgGg5AxVRVOuQA+L
	 9pT/vwdCtq3IeZUhINHA+XWdWa2jzomTZDh7zWhqTQBm6GGycsIxP2T+Hm41saj9XC
	 JQWcbzUNhwsiAtckJTOSl8CrbTveahEyVYajIJnsZupUDNq5/XuEF39+4wR7/0eyS9
	 H5yKl+SDINNHw07s42patUIe1H/9ppkEjNGBEMEVGoqPYgj1q1iMbXd/wV0Z8OwGbV
	 1EZmXCwbPoX6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F15C531DF
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172431335360.7006.18357665957121362904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01b8c8dea5ad10913354b6717e7620762cacc185318958c630c1a14518e1b2eb
Date: Thu, 22 Aug 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724313353
