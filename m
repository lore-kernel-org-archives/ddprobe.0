Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27158A29
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754784594; cv=none; b=ICxFcvsAWWKx9zmeAcXurvLcTSyz7zr+KjeczVAJ/DThTbzohng01luIgIHW6QWD+8mNSLuybk4JuiTlUjMdvUX1jaleWB8/DtYo5tCR2jjPSSYrGRjl8hSuVh+apliaOOBVmBghfVXi+hMiXfJf06o+pdOQDQXEzufksfazLLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754784594; c=relaxed/simple;
	bh=r/GXdYySwN42myJGFwbLc3havnlldj0Ef2BfjZh9k7Y=;
	h=To:Subject:From:Message-Id:Date; b=GEaB/pU3GnH8fjHpuTudvUnlfM1bBavXySeADOhVV//CA0U/75Vn8c/ffqS1It0slqjHVmf1MmPdfGQEIeA3Zxpte7b7hUFqTnVR5zkwpmyRBIJd1mhGNXIYJipD/ik0aL/1hE+Ss6vAamwyfDZGf4GttWnfPeVW3hUP1FCl9B0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E3yeNPJw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E3yeNPJw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02FCC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754784593;
	bh=r/GXdYySwN42myJGFwbLc3havnlldj0Ef2BfjZh9k7Y=;
	h=To:Subject:From:Date:From;
	b=E3yeNPJwq3DDuT621Q5O4x8cAchngEfded9mOPAJE9Uxzn5ySGVfo/yWYVE9osGIZ
	 I2X+h9pP1XFFiUmuMeB0ohRQDhuaXekU+NEIw10yCEyT/P78FZ8Fzx8SO0gaeq2ZiI
	 +4SXnZLls4Z1y58C5e6IqT2C3HdL+wWjbW1pJlMFj3plE+Dcjtk3se3d242cKpYRBL
	 sc3RGRGE0sfZfUNkOgO6RhUXdaogjoNZMPqDGix53AZPNwX+Rs2RFnF9989t1SKlwi
	 ug+nw+RwknHeFaEKuL8TaBuTUTr5yl6C8JMs14NMHkVx1QHvAcio8KIgHe0cC6YFGr
	 b1Aozif15O83Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9298DC87FCB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175478459357.15536.4962929161725510647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c6f400e52985deb269a7423976d7b75369837855cc06a5ed6d4c024c73b590a
Date: Sun, 10 Aug 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754784593
