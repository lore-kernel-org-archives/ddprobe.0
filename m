Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 179631B4F2C
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754333994; cv=none; b=EOb32FF91VLEa5R/dSUXxkVUS81P5kyYcYupn6kSwiKBBrVrsmvSrQ1uwBjafVVRI8vJbg0NLNULGRnFY5EKJdBbzCgQswmBKWZJmmqqrP9/IEmiChIFpeICRxAco6HD2WNhKtHK335yTPzD+wci29/cSzbd1yttbGgH6W4si2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754333994; c=relaxed/simple;
	bh=g8yL02yZQRFIp6RTBBB4lB5Ovqrs844Dei9k+4Kyc5k=;
	h=To:Subject:From:Message-Id:Date; b=oLJ3BTkG+4T6Tvn20KxJ56Smo9Z/mUOKKarF+nYKFCJafjXT8+5ne707H90qFqWfxNnvWT7a5O16FmkopP1lGbu210FMygN11NtgKwk0ifg7jLtCkchq/T/Ej+XBGWjmKGUCpfEFXdKZt4W7h7oXxcPUiYP16AgasckX5CGe4Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=avEjAJ+D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="avEjAJ+D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2A4C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754333993;
	bh=g8yL02yZQRFIp6RTBBB4lB5Ovqrs844Dei9k+4Kyc5k=;
	h=To:Subject:From:Date:From;
	b=avEjAJ+DlZg7RhirwAFq/j70oRyNHiIxWwVLtjNIOLMOo0VbZcxYH/NJtv5ozJZxG
	 2aROJY/c0Zd6aFuqMDjkh7beKs+tNYua3RMqiZEnVWFmMuGM+SwUP0/faYN3NAChxu
	 TcrZcADgbdXwpcASbudmN1/Sle+k8WCd66rlFtEfuHzBiXL0rY7DCNAHc6VS0ekit7
	 KUx3lyzpuY/Ux2dTFzasYwFLot4178M9HQYNK67+KxgglS7Z6Q0baPfB2/1VGFRvWF
	 juAYsxOghEMwOxWCgYQtTp4bjBhX0OPct+Zp6nXOt/JVaTsyIiZ+vcA2V3ksDpmi+S
	 yjLTJylPPubbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD48C87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175433399358.23589.18161126306710605958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6aaad9b24b1b8f0876d9a787a83131acfd710bed4a1dc0707dac6e387f129e4
Date: Mon, 04 Aug 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754333993
