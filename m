Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3756020E70B
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745224795; cv=none; b=K07xuvBdFjgpbk35S0takUsayeWeLi6ijeyMCjhwqF+WevkuaS/419WVh6l0f+m0K+tN8vPS/8iZ2pQLSp9Uh3Tl5hsdNRQ86En2TAaVRNdISn5pCHTW58zPAHDmYbKU/SmU3Ke6wweLEKqQ5+Q5d3kWCWOty1iVRi9nu6bdxZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745224795; c=relaxed/simple;
	bh=SjYaAv7hlXUr0Blw0wpSLiQsthPxOj93QcVPZB9bBs4=;
	h=To:Subject:From:Message-Id:Date; b=dHWQRZ7JPrmkseJ//5CEaitDyNdr51cJxx5TlcyqTC6o9hBH/vQkSNCDSbuJUDg40vvLHg+Q3AIY2hOgPOGTjvngYhsH3wuqDDSXSYZQKBDkI7JWJt2kdiLMJR1MAIwVU/2umihWcc9HXkybEeTt8ueLBj2J4/9+1DTw3sw5O0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aljwLaQf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aljwLaQf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90F1C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745224793;
	bh=SjYaAv7hlXUr0Blw0wpSLiQsthPxOj93QcVPZB9bBs4=;
	h=To:Subject:From:Date:From;
	b=aljwLaQfi/2IZBRDlp1rmElBrZdu5Y3tyFB4yfBsq3XO8MzDyasEAH5AkjxPUp7+W
	 DvLLgp/LhAm0dm983G2hdYl+tYoE2jrfYrChdvnumILL1LaWCD5xqYIDjCNwMIbWRh
	 YyGpMP8QIHuO8cs5LoHf6KCeHLmbPKaLHym2ApK92u7b3qxNm2V9scTCPL6472EJNX
	 qbD4O3nllgYlxnLnle+hj3Xj+UgfSJ5E61QyzJ4E4x/8TH7tqW9JfELlD2kFT2mMTQ
	 5cFsZ7HSHXGllXrmCzxUwmM7JOfzjcFbyBKah9gLwE9U76yUI82I0UP0/H1rm59rEk
	 RWC9aSNU2+jCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F50C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174522479359.12431.14184089853606185543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30399146e77121266516d2df3e32dff096d5b2c6363a55a63bb93ca30a932b26
Date: Mon, 21 Apr 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745224793
