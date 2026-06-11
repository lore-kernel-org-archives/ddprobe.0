Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C18033B97A
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 10:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781175394; cv=none; b=Aa8e51hWJqJoMHnAFlMJNT7Z6LjChS7u9HB2XXYMdQSI2xtykHanV7E2y2uU/IYe/WM22crAViRfp7gv4W7GRnvzc2v4y8nFSXOWsFFfksIVh0FbruvvDgtpcm0EYwBCl6Lo3rw4NmN8UvtUnzXtVX/JkZwMEljFScVpSxAyY/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781175394; c=relaxed/simple;
	bh=yA1aqQ847Fy8lcK7OzKJZvHZcHHNzDQLKBYWrNRoDjI=;
	h=To:Subject:From:Message-Id:Date; b=H0BPTtwyldPmC4eJWNFzT6XV1/pRKGsyn5TUJbZACzdlWl3dsBk5lcDm3zaU2h8WEfs95Piu+x5kmF05UV+9XDxzoRBMM8qxKYYa1JXFfyS65NTDPAVmNapRRkikuoROW0t5MmBeayOI7IE2EUkQT02WNu2LOHZSsmwha7Xbw+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IhY8Dwaf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IhY8Dwaf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF12BC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 10:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781175393;
	bh=yA1aqQ847Fy8lcK7OzKJZvHZcHHNzDQLKBYWrNRoDjI=;
	h=To:Subject:From:Date:From;
	b=IhY8DwafHJNZL7MEtKjQoqxVS25FCtBoss8aQHBJbpF74WXksTxNsfOSdLyiglKhH
	 8f1ndA2qtiuy5BHmQ1lz2eYkzXA1X7onebolcQ0pThHP3Te78cgQPU7stVJoVHEcXb
	 apaKC+X5VlgkvrjpMOvF2RTag8AFZkEg252yNmnQnATrHCkKgYFeTJmrcjtvmowBTL
	 P3NO/3z/cse8eEadvJJbDKRxyz5rml3W65XfY+Lz83pjw/CjrvpyIdzlV0hEpbka9V
	 DsI7R0umLhomyN3DdeSuV+Qs/2S47yYhdSBhe9Cd90paUOgG4EeoqVB97bkuMvHISu
	 lkY+luz+2Pqgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B343BCD98CC
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 10:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178117539372.15465.12921851687141743851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 981a1f4e1d6948f148fa1cd2f0517a82c7b0beb367bd53ab171539d95c39b45e
Date: Thu, 11 Jun 2026 10:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781175393
