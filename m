Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360B9420894
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 03:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783396114; cv=none; b=BBSiJoiPsDZs3h8A377R1+uCPvpVxZ7poD7pTj6LScs58iEamS8iP39VNa4nngw2B6oqTDU6srBEaWWQDhUOMppQVPzzEFEqg+2dgRdFpm3osgSx5TFGmVDuwbQhhewcyG14lji6C9yUGtnH7hFCESkXlXXZ50RHcpqRWIkk6qE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783396114; c=relaxed/simple;
	bh=Os0ymSe4QuDZjSW8sMK5SqoLOAOkenW84WXx/Fb9z6A=;
	h=To:Subject:From:Message-Id:Date; b=sZdPlDTWAV38EMw7/xs2C3yO5O7wDOPUijy6bQn1X4A2vFLklPwbCwHgfUDsZ60tELWKlmfXTE752lDzXr80liuR05gsX/646mHZMJM0iz5+r1FPF1GRDqC4pFnKGkqcSca39rUxfzrt0xWv5awOwcSzA4cJbC/Fjj21jIINWCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cnuu/NTv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cnuu/NTv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA06FC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 03:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783396113;
	bh=Os0ymSe4QuDZjSW8sMK5SqoLOAOkenW84WXx/Fb9z6A=;
	h=To:Subject:From:Date:From;
	b=Cnuu/NTvHOHDLZame47B8cYYkcn5zmjL+f7+yq12pvY79aABqTrOkVTDQWE5fj+aE
	 DvTyvD6TOBtpITZ24XBZFq4lyYOp08vt/ENYM3+YUyS4qcZIrxAHIwzUAAvZyQu5pl
	 Npil/nFqIfWcPrm60S0TesO44igrlRRIYqFDnU+VU0+NgfhXOnupU6xhqP2D/KC2Jt
	 Eh3G0vqjbDuj6pbFAr4Xkqf0yCAsFgNOXPvHXbg/4bRDqdggf+CAlrsiWELh9F//P6
	 6PntOCaqKB3PCaYJuENxXFWIEqd9kOC/KjXJQ+b3eOgUYe7RPzHmxD9Nt/dQivKibs
	 nw8LVMOGCOolg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A853CC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 03:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178339611368.16548.11140491373151403477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd5ff0aa4716867198721ce208bb06eb115accf4409288bb0e1b923da113f0c4
Date: Tue, 07 Jul 2026 03:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783396113
