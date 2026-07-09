Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B50A3E9284
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 09:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783590514; cv=none; b=KS4u2X0cngVxlpL4mQacXA9KAE78EueDy++sSZbWFmG+9Ux4kwCN+M5zp6tkvM1pgd8nChu6hlZlBMcktukBQMJp/hg2m3iFiVRZvJcGXLL1DlUh3yOGDsIAKmt0+2Hw75PMWtNEhj9SrokudG4W8mtdFsUBFAJzDui8DciGHVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783590514; c=relaxed/simple;
	bh=stUwVj+XXENyPtMTmvKDi+HTMPtiLR2Ocfa8cSWdH/o=;
	h=To:Subject:From:Message-Id:Date; b=BmUItmXeE6jA2qKu3/sJvttkRHqBJ6r2uxclAZFWfuld72L/D3/+VaxsrilpB2xltRdtJ8YgNxh5xdsNJtDAlTgG2g5hjtJwbM70R6g5N9Yh5dVTOv0Y4B6BYTPwjpSmfRXnnjOeYNxvRK9pC0W2+WCHX2SzOXRr98QnHmiFbPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=koXA6jsD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="koXA6jsD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7C8FC2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 09:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783590513;
	bh=stUwVj+XXENyPtMTmvKDi+HTMPtiLR2Ocfa8cSWdH/o=;
	h=To:Subject:From:Date:From;
	b=koXA6jsDKnzNX2OAtqtzT5DuqkVG/KraYdprhmK697TD8ZhI/pZgrsJDI3BG7lvko
	 Qi1z3tighFYaZQypxYsrbq6Z3zq0MczDYU5Pb2rcuneRsKNGlGfjufwQBX48OXQXRu
	 v4cBMOt5mdddaMdmboLy3aTzWCy9NhDfRGSnW2/TQidnZzz+dSyCzoZpInSCw0JHvc
	 Z7PVFkIpjDxfEfcoWTV9SmXvSUWRriYL8a513CD9zTAOHv74+H2HgjMsvCY/NX3qxw
	 WWxGdtSvrczqTgTBh4cUmswK2dPheeOYAmcSVniCnezIYDFlXosFHUj7EnxLYBGBDb
	 XDqwMgczOvvGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACADBC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 09:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178359051369.12962.2335925564662011774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f7686f29821724c0558a05f57994a02239a0d725b2799ca03ae389612f65054
Date: Thu, 09 Jul 2026 09:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783590513
