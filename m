Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7DD2FFDCC
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 13:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782393454; cv=none; b=tfjE6LKCaEzpXdymbC9CgHD72YEWs7rO50ZnYR56NUXKXVk273LC2kIVzmFAeYHDFCJFt/aX+JhX7UY0A6g1NU1w8KHku5fRGWqzjxcgMMOejvh4Bz+fpA3mOqgPaseNTeXqZqdzLB3jimNkjjrtFra8piYsqWkZ8ADGEUZfU4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782393454; c=relaxed/simple;
	bh=/E3Q2dm1mLT7CvM+djrDah+q3MCUlnWCJwAvh1JgHR0=;
	h=To:Subject:From:Message-Id:Date; b=f0whMtpBmsX7dq9M5eIw3vHrudWkIhSLxTsP4jasGthAoz7QFIDQKPc71jzq57+BsrtzDWA6RaebV63GZAi4lNwAK2rsqUvGvSl/Crhec/W15kQb7KNXCbRUzJ5xzWZ9PEFlH/+H6Qdy5PO7fGucsDN6PKdiTM1Ev9G0YhaCiqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NuOBcNsB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NuOBcNsB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4274C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 13:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782393453;
	bh=/E3Q2dm1mLT7CvM+djrDah+q3MCUlnWCJwAvh1JgHR0=;
	h=To:Subject:From:Date:From;
	b=NuOBcNsBT8oVsB+lZ8JpxXnaThPZXypqdxDw6+wZ6VVE057S5SRs2drkK85ow6L6i
	 W2azDnGFbUr8/94is4J8s3aaBMLY7JKVRsfGdvy0P6itaERHKcLoIevp1aUolsPCxq
	 MF8ABuGqIBXvidUqDOTbSdrwW9fnXCYCLTiJghDHxuzr/NEVKQ7KwP9+zNF5mEOZ2f
	 Z3ilLaVdW3BkfaeffnQUyQBG71LK/8a6EN1bZEB2cuzVL0/Z+ioz7nmOmrUBDUem6d
	 hT4r6LXyy61skFC4DzOFVCPz552TD6NWtGekRQRC2cHhvJHHWJkycXvYJwaXg8qxZs
	 gssJj5bUVCVHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8B2CDE000
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 13:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178239345368.27055.2463911838906852656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed4a21660251eb201f1d959313319574f6bf456bfdf74ca66113e8c73eeb27a2
Date: Thu, 25 Jun 2026 13:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782393453
