Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165E223909F
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 10:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783246114; cv=none; b=XX5gM4WNnuSZ64UsNnpqL2RM+S6Rva6PptISFWQLVr1/wfaDp+m8YmhJ6r+kKdNqu36J7xyzQaq4naFOfC0T374U62MLPQChf6p/vLhv4VX/4zxvaowO9tQmCJXjCkL/m3ozPDFnw9geY5aEga0weUR9bTRHACGVQ3yJ4O7Cnhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783246114; c=relaxed/simple;
	bh=tKC2++TDDnIpB5q8a5+MCmwbNnQJNkThG33nYjimZ8I=;
	h=To:Subject:From:Message-Id:Date; b=KCXWYFT1AuteGb1mcG5DHg9O60AS/K0dKm2JbP/2ER45JRJI48t+4o86N/MT4CII+PI4C3SyJbRNPothEOXryqQtqNLIzPIVEQd5qsGjrqW45HnxL7VTLZnTc9tGj8hClNdiWhJRpdZUnKPhyZIlxSNMMlF+qj28DhRbGlXC8Ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SLUIAbAO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SLUIAbAO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD9A0C2BCF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 10:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783246113;
	bh=tKC2++TDDnIpB5q8a5+MCmwbNnQJNkThG33nYjimZ8I=;
	h=To:Subject:From:Date:From;
	b=SLUIAbAOH+lLALPKAc/pyVgXLDgmz4CP5lHgvcyoTsG00mQcnIbs7bhQ5ZGPMNMKs
	 pltzx4+4GS0HOXFrvno7YZjitdSZQpQUUiIrBo3dpDVcVuy+Vkt+gfnpPksuxWTCYs
	 07b/Z7c8T9q0UcJjQx7Gnv0MOsl0K7dNB7vA9T3r0D5zom5RyY4XBhxzjjhbU2Z9ya
	 woUzYwvR3bKqsUEob5+yLRk9iwtLG30nX3RThZ6Vvv/IeK5TnwSb8kxp47R3BvC4DZ
	 mptbyIvl2e+Bw0gvBl1vy6e+oVz6kPo+HjpGPw9uH1geBol7Unb8/IQ4EHVSrs16nT
	 PmlBiXIQAwGVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B4FC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 10:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178324611368.32040.1540687136569409317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64976b44c3fa59b7bd5099d62fbc6ab582345f5b8a644f4f850dd1ff11c0a8b7
Date: Sun, 05 Jul 2026 10:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783246113
