Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360AD3E3158
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790947234; cv=none; b=sCpQK8P0Iu6Q8yWjVDyi3J/HW0R9RfnpuWtPLat6bcqWDurxcJdjLQY8vnhqkeNzEw6K3ewKETSr6Kj3TBD0Eo6ETV0T5ta76aOQhlUJZhAJrV9QfTkFRUEElH2++nZUPIJQo88wnarMBLzpQaby8pUzXmXBzATxzavOAdeC5es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790947234; c=relaxed/simple;
	bh=9sb/7v+ucr/zj/QAm2OQXOQI6Jj37XKTiSiLaldSA2U=;
	h=To:Subject:From:Message-Id:Date; b=V/v8IbucafddBBhEEoYhFp+kss0lq+Thfi5aw0MYc5wLtQKijB3SBvwIINmTu54pnjbjZdDfkBg40D4Uemy8pZA+ChEYxKLEP8QBThonwbydi6mhVeTgU/NewpZJWoOMyoqALctWYQQBa/Hqn9ZdSUHjTMxgHkpAEFq3Oj4GXXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pjpSe5wG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pjpSe5wG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8C0C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790947233;
	bh=9sb/7v+ucr/zj/QAm2OQXOQI6Jj37XKTiSiLaldSA2U=;
	h=To:Subject:From:Date:From;
	b=pjpSe5wGLO6dTTRDvlYPdLeNsK0d9UgqDCLrNnAailCz36cKMuYnsdR2sWtwIjHTM
	 uG+f/UlRWYuMqKwyNq7nCsQYvMjv9we83el4vue7UAR0L3RTvyZGYdSesAiUWVZlkp
	 5/+sWOupqkgEiNr7Oi7ukUyNsFJPGc7T0eHscrEJhFmi6thEHHEeCyESCtz34c+xfw
	 qmidKiq3EpJO0pmRFKfCScRVCICsUykgFbmcQHwdiYbxYgRrc6ciVbwkEeVDVWXxlS
	 KaNUFXUXLMRz5wDgCD8h/N8ltuzHwKNb32gDHg4qPMFkQ0Qrb0lj/OTji9MYuTqZsu
	 9+FNdU2C/Fjeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DAFCA5FDD
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179094723368.10330.6873598413856178107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ddae5d7186ff77d456d64180bd94318a3bf0a5e41b7e9ea39df66976001d496
Date: Fri, 02 Oct 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790947233
