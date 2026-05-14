Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14988345CAE
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 09:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778750434; cv=none; b=Zi2mN5e3EdbVImdwi9PuDCvdW7QZ7UBbtkgOsq1FEcTyqN866Bud1yU87bwJtEI/WqBBfvTXuAcmSPKv84KYmEr9xcN+uEvQLdRqGxcpxxKDWUQzHYeMbpbXpKSrHOO9lkkL2tTeALXPxR2vsao+f8zMDBsFUNVaE4uBu90eFYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778750434; c=relaxed/simple;
	bh=XH1EaPjmhQv0Cb4T221L/ghYTTFflqsM96MX/S6Bawo=;
	h=To:Subject:From:Message-Id:Date; b=Cplg9oB6Er5/4twl3uSA7Ng6kvvrwUAOvkGu5ACxBapMeMB7N3k0MKFeeRKnQBnhG85l63WLdxkxnVoqtZcB60fV6PSuISmbO8uCL5w0kTfNFBKaVkV5kU2cccgtSjE/RGXIJVYVuXjEaCSJIR6uOCpEib1TGdlwJcl/7u4J3LU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vRs/pkIH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vRs/pkIH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B665EC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778750433;
	bh=XH1EaPjmhQv0Cb4T221L/ghYTTFflqsM96MX/S6Bawo=;
	h=To:Subject:From:Date:From;
	b=vRs/pkIHJR78xboNsU3SP55TcIUT0Z7I/3EHe7a5BbUL5Fa7FRz2VGADlxANH/nqh
	 pqEHxFXI2drdRi3qTRVkrlj7PU6vGgu492AksTi8sFcyYr9eZcAeaGvFHUogh6vkuK
	 VPxSeEkHSYCkxonWZ8qe+aeh4nmaQffGGGVJ///apNW2v12rb6dU7B6AaZQnW8McgH
	 8ZH9xPUUvY3skpPS9Jv5g1VnXDGnBPnn79IuuB6ixLUZY30QwAXJ8pj8FIIF0kGUfS
	 UlwukNmPf5Ft6UQz1ynHQHhF74SxdLnRy3JmDCKoDeVTl84IIuLPY58iNqk4USuPS2
	 xm1DtF2O16QMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3F8CD4F25
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177875043368.20070.1272088651219230829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5db2d0c7bd1339c3fa84d54393c756ef606afe3b8017c5ca12232fc4f56000a0
Date: Thu, 14 May 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778750433
