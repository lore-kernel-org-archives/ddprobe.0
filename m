Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2492982488
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733639154; cv=none; b=sl4f8OrVf+zwYtqLubeLDVu89apXh1ybh8AxM3fbERaZUEP+b9GeTcvoHdgQauDq/GJRQnE3K5H/j1y7Hj4c2vUL8hnopJ7ln0PmEUKSnuNJvT+VrIUL34hGIPqd9xJ48jvnpiCqrLH9xkgFP6bIQQZZiAH+5FCmeXuZn5n2pLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733639154; c=relaxed/simple;
	bh=HYAahueDg4e2HS5fQiSx8LNgEieVHimiLVA1SlQPrec=;
	h=To:Subject:From:Message-Id:Date; b=VWsspVCf5spmV3o5sbwUwEJVimUshHlVtTvQsZ7MLrHukAMt6h7ILtw82srkFCWCAbDWljMC86b8HKMJLBhS83s/xOjqGicIR8eoBK2MN1Ht0d4chERzb9fG8MDISaphhX5F/xHKMr/ngJ/+ZT2pHhlEVWB4mZA4rjFGrlDvp08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nmRVQAoz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nmRVQAoz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52F6C4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733639153;
	bh=HYAahueDg4e2HS5fQiSx8LNgEieVHimiLVA1SlQPrec=;
	h=To:Subject:From:Date:From;
	b=nmRVQAozMJG61v6rhm225E+2CUCAxyIrKy07/ieD5+S98B2YftcrpeMXuDaGttlXv
	 /Ib2ebkEmMm6l0GycGMetc3MC3fmbRoYw5lwNNNTJnZGhIps7/YmSUfg25ImauwMdJ
	 JjGz4df5Xc4eVi9qMDPzVfLoIx6PMUsHaD7JuYlwJt+VECwtvsv6RmojFCox0f/2Az
	 AGtxpUL6uptYn66Zu5mMYXMjPopP7CzVetxOVHMmoROoaoILuZsCNOH/Av6x2qQEe1
	 lb7gDkLDDqTV/aX8cN1hODrA75kFTbjfgkzzcPfqH6ucalCbKqhQlCrmIrDt3ch+c4
	 BYVk2+TnOn+3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E02E77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173363915358.3408.10014832768274288766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f27e9b79925c1be2951f9d527b7b4cff092b20a95066839f0bed970f92a778e2
Date: Sun, 08 Dec 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733639153
