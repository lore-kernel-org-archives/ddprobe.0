Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7613D2FE56A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 00:18:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783556315; cv=none; b=iXLiXvDtM1I8vS0Nyzoe6vjc+b955ILT4/iFi89yUeZlOjlkp7IOdWunot9gfV7b4ImUxiZo79Et8oshxlOzSyJ/plNOiRW5QfGjGPvvdo2KT8ewo/Tr+uBuZS/FCiehglVarGACFfJXIqFCcYshtwnXmt2MmzHdgq7c8KmcbFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783556315; c=relaxed/simple;
	bh=D92yUvJX6g94pRGThExZtuPEYTE9tXF3UgOLBal545g=;
	h=To:Subject:From:Message-Id:Date; b=DOA2ReMuH+bFJ3aWYbO8syFYznQmKyEeBdaOEyfgf9zJjEzbbeYu6iH0Jwy2gOu8A/EVrrRQl3M0sSduAVgoaCAQjG+kB0Cg1E37gMZPsAiOcvzP5Tlj24nBSIa7rt52DQVRjG2ogUjKozoKVHM9Pem1hbEdo2iEWzvVUBiMYHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVGzhEXH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVGzhEXH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0397C2BCB3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 00:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783556313;
	bh=D92yUvJX6g94pRGThExZtuPEYTE9tXF3UgOLBal545g=;
	h=To:Subject:From:Date:From;
	b=gVGzhEXHNZYnCtqgl3Xni1dmA7wqiNzxmtKUCcwe1IDD8oRuRAahikNPGiWVQRk8l
	 6R6Eefuy89H3zenHfenW3Arn2iM1GfEzxF2d5+hu2ywMhPSDa59RSIvj5PaSOCOylN
	 PQ2VXJSlbGPTCEJqlYU2dppLK5c1V9yI066LUjKvJrvtemrfmUtwvsOILjxhPJavcp
	 HDpHpayElXzshEWq6WRWpV1rCorqfRd6sN8NnmW9nfll91hGqehVN3urwquzMpfFeK
	 UrYheedjNE/oXUiWC7SriSAYhgw6yyK4oowKG5Vqo/uKm3960f3oGyNstu25TIkE3h
	 S4+vkirAj6kMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA31C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 00:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178355631368.30232.15973003769395708974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 154fcf32a6e112c98ba06d986cac8f874b6eec160b0e1d3c89f0dea3b5b8fac1
Date: Thu, 09 Jul 2026 00:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783556313
