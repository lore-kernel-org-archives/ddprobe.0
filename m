Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285465684
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733983554; cv=none; b=Ctll8Ht3YrIofxMcd2zDrKSLNWZvWEsaNKDTz3gh8Us6Vdf01iiIMF/ZVxCAYCkThnVycOAlscmaNMZvcFcA3cHagV95VuIfQTqQS/LmVFFk6zU5b3iwmWu0nstEG5X+SCa4fHwdFLYpruifUHEpQubjCh2Q89ml4RDOOWEzwsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733983554; c=relaxed/simple;
	bh=KiDlSGf3Vp1NqG5Kqjo7xdkA/zwd1+pFOWUf0AlSo4E=;
	h=To:Subject:From:Message-Id:Date; b=nLE77aTVKrRe87zi45+7RqAfWKmeYXsZeoDsH+jD/GIyHWfzzND5eTIDqE2XtwkKtUPuWPYi/37EC+IJAjsFDFol7OFO4AIxx6Sh4vaK+cr+oi2++bQd21nPO74y4v6Oe3zPSMCr96CTbIzVmR/oS2Cki/CvUC4NgkUqrbORZ+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jST4mMeY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jST4mMeY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A847CC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733983553;
	bh=KiDlSGf3Vp1NqG5Kqjo7xdkA/zwd1+pFOWUf0AlSo4E=;
	h=To:Subject:From:Date:From;
	b=jST4mMeYN9U4NQt9V2hdN+MJMfLUxgtXB5K7ZStgEBX8dE7PqCOdTxWnTC/IYWYEX
	 rZsnxWQv2qDbdgfSE+tD7YfDmlUK9J/wfLFx2H8lO5wsiE8NyvzPbag/1T4evwrpho
	 pERDEQvB/xBNR81xM2G345BZjc9sa3I4UE0PYDuzxll/zJKTPxIGNpq2PegYdcTDaU
	 biEGWwJnbTOH6A9adUDfcGNmKElVl9Xt2U77p4XgE5BlgyHc4isyfHMLHkiokseSDA
	 fXVC5HcKAm/sz2QupeTO+hO457r+Rveo6R8Ux2NhglZvWT0R0PiqQ2rZnixMCewYX9
	 gjeQ8U/ewbwvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913F4E77180
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173398355358.10421.2784024658973328373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a87df8e8d830be29e1e1133762e5b7d8884743e050490cebe42237d7a99ddd71
Date: Thu, 12 Dec 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733983553
