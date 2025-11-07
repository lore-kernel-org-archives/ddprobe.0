Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A361A254E
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762491594; cv=none; b=GG84EjgkebQ+koyFm+2+nls0xhsZyfDun1+FB23ciTSGvawMlVTVGI/CxUqp5hgbS21t7snzC/6E4vrfiUmql5ZuENvxM6pOLLQi416ULiHxi14xbrCwG4JPWg+dcw8jsCIBqF8h1XloX9UkJwB7hS0FhDD2bZ8uddoptz7GHlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762491594; c=relaxed/simple;
	bh=RGzUGc+BA5eqDQMd6co4atl0lcsGGQypGq3YPFTLUig=;
	h=To:Subject:From:Message-Id:Date; b=pFBJTTUEbjHHnTyg9tSTpjXa2wPDPGJRMuRcH9D+AFTiaRD0F7IAMakzsrXOlXNCcdy/gao1nF38uS3LZO4xbepBB7IDPFw8S6+o6jDUvStsCJ0xGSf5j0GEXdkXP97uIg/G4oZkxDvZdWyF5hxaYviOQcI16IgZyc1bQvzdPI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOUT5tA+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOUT5tA+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A82DC4CEF8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762491593;
	bh=RGzUGc+BA5eqDQMd6co4atl0lcsGGQypGq3YPFTLUig=;
	h=To:Subject:From:Date:From;
	b=LOUT5tA+Gz9jh74hYEr4Vclg5VNPn1qGviSuFuuPn5/sNE/mWTDi0gOcrVz0PWZSp
	 F3V3XNq8xGJBsHdoTd8aqh7sropMv90NhGhGlbsRjpLlXAFy0lTH1TTJLtBd0ODyOr
	 GCw1vXQFhwh+BTV1lbg8PxR64PsUf81+tTv2VNNmv/HxCjC/4Z0bbFjkonPz9xiv43
	 Up0nn00z3VDXdtm9LgYqcuocG1PgupWQa55sXo39Fa2LR+ZnAdt5SUcn4a0Y99aALT
	 8cU0uKeGLS0ZvvAvGWLnBMZwpf2Kq0QPqT6EEyNLqXmeY0HNQ+Kx2keyVeeY8u+oY5
	 3BwJfLFEgi1Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E769CCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176249159357.17251.6472999067288800904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5eb49e59076b3daa33f51881768205fc65780e9f9c5c7ab12daedd50bab1ee7
Date: Fri, 07 Nov 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762491593
