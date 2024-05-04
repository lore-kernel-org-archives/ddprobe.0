Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A895639
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 08:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714811543; cv=none; b=fI8Oaoy1RDdMyzUaTAr08/ouWFBqnqJ4cclAACb+frEV9gqCPQ03BFINaViaxWyXqWAlInlEBAfFGFZNUcS8gMcBuTO4nNIvjPrp4zNhP6GiHyvAA6hjrPqzC7v7Mb8BKUuoBrz0JOebRy9OE/2h129ov9lp2FRVBJXbavZ+5/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714811543; c=relaxed/simple;
	bh=Dw5rkigdM6F9vHynU8poQwOF7V4FL3PeiGsBGVrcqCo=;
	h=To:Subject:From:Message-Id:Date; b=tAvGBCumbGFvJGPsrEqw7QO8bUbZQ6oiL+GLG2zUAifAA3+R0d9j2UeEa+Nury1bkUklXbY0F/JpHqLITa4zdtbwFYimA714PS/DaUkEHf6PfgFf9aAkbmsEsTqaDtGdsom6FobYm7e80eIdIQ0s2M3q4sk2NrQb4dizGx3YC/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U3sLm1hV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U3sLm1hV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE463C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 08:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714811542;
	bh=Dw5rkigdM6F9vHynU8poQwOF7V4FL3PeiGsBGVrcqCo=;
	h=To:Subject:From:Date:From;
	b=U3sLm1hVIwp6aB1jzJyp9Y0XlFOEtKAEcRO4rRf8kSW7o/SSrqE6HT1pJ10Ahcv93
	 nnW8EwCDR1e2SN/vKr6D0pwbX3AxcKpwMjEN5p9uXDcu4ZFwnT1cbEKNa3ZzfPe3UI
	 BZiE65k0Lmrtyq9FMBJ0noXgjSd+QG46VKNZRdKTeIbkSf8KlezWLxCAgZ0I20WtOk
	 9KLAxR/bkVOwsOOP5H6fCMRhOyszSi1k8yvI3z/zOizZtZODavEHOGXyZpFf0JW6Vw
	 ivbKDRvRgfBvnge/NjYontf4uRv+vxnceaNNg0xZkb36ovSjnHwx7ZNEpC15yipre5
	 GJmLvhgGO8XBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8784C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 08:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171481154277.26674.3661268506906914630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3d486765c6775f48753a798d01d700f322e71b74d861f256b650e1deb4c50b5
Date: Sat, 04 May 2024 08:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714811542
