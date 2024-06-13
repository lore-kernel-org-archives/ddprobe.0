Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475831802B
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 21:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718313503; cv=none; b=SGq8rqrp+CARKWlrWM3+kIYScT3qk7p+8Cho5ucVgNF27gT1CH66YaxkfZtDLsAx1lGyvzu4AE/RCEQYd/2N79NXgbbH4LMHrK1qXWShfDnjToLMa8LPXHnhE2P/orZ8Au2xnbeKhrgAR6XXmrk+VFsZ2J90GnJyXeHTaXETFAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718313503; c=relaxed/simple;
	bh=tcqJf16G+mjpajsaW19Pn4SdyxINpGdv2WvuvqLV0qk=;
	h=To:Subject:From:Message-Id:Date; b=swuj3DL6VOD0vabrqOxZfC4nqcNSobvJtAm7bI758MWVfkCVDJ6WiyKWS9Bkum7U6jMMPR38oK9j684FJrrP+OLXVMFanx74Jiu8H4MKLgF682svKzHvGdEZHwItYEbR92GLOS1PyfjGKVecV2mjiBxv5AOqKAiNlB99YNdtFVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hkwY16Y8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hkwY16Y8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1913C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 21:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718313502;
	bh=tcqJf16G+mjpajsaW19Pn4SdyxINpGdv2WvuvqLV0qk=;
	h=To:Subject:From:Date:From;
	b=hkwY16Y840komrrxcciKqCLfOnMgXH+f3vBbFOecL4kyHelbJq2VhLmsVcyRmCoZz
	 b8CBnDqoSWfOLPuKyQYqikqEPpxQzfQygDJI1K6DsanBGZnY5Os9cYeeWx28gTy7L1
	 2fXex4OgvXTz1qrKNX7T04kyhgLrELaj7GJWeLxrBZ2LXihAaY0mSmfY/vcLIGaRfe
	 RMwbqyvfEDXl0/rWQmz9ndmmNcK/407o1eRUNImcD64JwYVPg2/w/bDL6eqXPBOM9E
	 29JJtOGlxBgAbu18IfkL0+9jIb3pGprp4Aoo35AnJ/4YqR1eM11WdydjZSbZTGKuXl
	 aC1PNLK7aQK1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAF97C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 21:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171831350275.26720.740011966131209337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75b73093cf48c04abe2795a17f4e2b395f76786d4f6f38e4300b8a913be08302
Date: Thu, 13 Jun 2024 21:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718313502
