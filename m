Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF2F2E172E
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756887594; cv=none; b=fihHgXrNLRRDbzwypnLAT4YP1cuNA4zc2FVUS1MG3cXgWdQqVfunjm0Up7OCRat1UmgA6EhZVMQ+ZZd4XFyD4gPt7m4/Ot1UKbwf1HUD6xpX5YlXdb7U422DxsGZcPAWbwfeLcAlm0rZeZ0dP+36mQmTU/Cm9qVBnkvRDgoBNaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756887594; c=relaxed/simple;
	bh=+QUyHYOohcQjQR51FypomFQol6PnrY/iQmcNaxk+cWA=;
	h=To:Subject:From:Message-Id:Date; b=qSkMo8pWIPyCfLNM0IoPelKgddpaHa5mbBaUV9RccQBqrvPETeGlN56CY0kadurPE/Bg5KoVxEzAhkKKti2Jbeait6cTgeJ0XTvjm9wrroW6DQ8jSRIPURG1R4MFty67/aLuqtfEe7sEeLRZ46Wj1o++LEgaLAwrgqnLm7O9DxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KhtRjSnu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KhtRjSnu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A883EC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756887593;
	bh=+QUyHYOohcQjQR51FypomFQol6PnrY/iQmcNaxk+cWA=;
	h=To:Subject:From:Date:From;
	b=KhtRjSnugNlDb79hvU5jyHRW9zktDS2ghs1Xf52JVvoSIJE37Uv9pFwETLe5MB5RH
	 vprCb8JS9dF5ms/d3+f55OVQcBs2m1O/IwdWiLE/cFUYIEaKv3K/JJVBfVwfV+YtAJ
	 KOJHfuC67qQpxaz+lNTW/Mtw3PS3s2yysMC5TBiMCVtuHK4BrwFyfW0ml6ypRG0WCU
	 CO6XeZ/DAMnSyVN9GmhujGrBZU+yN4rFV3pxor87HrTdSvAv7jICKfyMLBv8/OZZ0E
	 3zYSrrx8Dx4zO9bOZjr1dzIfB8q9KmfgH219oK1+7ChnHhu7sQsweaQmYnk8jgyb6T
	 AvtQKI1YR9Ukg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96965CA0FF2
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175688759360.22084.13412073540769483436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c82f86c7677a1667cc68b8712e1defb8b828a8288b143ebe38c6c8d4b0b79205
Date: Wed, 03 Sep 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756887593
