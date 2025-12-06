Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE2E8003D
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 09:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765012974; cv=none; b=HehcPNy7Qx6WHlUexKCILo7wnBl+bVhb1v4GpDiwZwGDN87eCvBpF/OFxtN/bU0SDROoCnS1oagrEmykPgQiYXGnVUonio71dep5sCUK6r8gW5MiX1/Tg9aNHlTdrcphFhK9e05fKmP4N/3VsHT596/zFAXCvGJzOx46gkq4LjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765012974; c=relaxed/simple;
	bh=CwkCaQZdqiR3/EIu0x6uyeo0UW1nXZFC8xT5wusG5S8=;
	h=To:Subject:From:Message-Id:Date; b=lYDrgc8jufL6YzY/dxVv3QOtF4/xGt36EG4eHu8SjypBhusCqe4UiqBD1aUF2a4cl13ScdK1lPqIUyD91Vv1/XujPEikugRZYcTeVjESM+P3OWt5vw0GJArbExGkVrBFsDxjvOtDYgzWehk870Pey1tvDMnvKfa649DLVKuRRQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fPx4RMsK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fPx4RMsK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5348C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 09:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765012973;
	bh=CwkCaQZdqiR3/EIu0x6uyeo0UW1nXZFC8xT5wusG5S8=;
	h=To:Subject:From:Date:From;
	b=fPx4RMsKJqYxXeiTSAOC/TMUgzTQwpVlZoCCChmuuyZbWPD0WV7RuVciWr2xGgGGV
	 6El0XrO1jI7J9bFfqWZwehjlwOmkV4Rek6om2vipmRQpw8J+RHPEFXuEcKYeTEz3ke
	 fsrAbVIV8SUIWBdbc2ErflX2DF9fMsmorty7U0ZCKmfcubuYupJs0a/dKosLZtlNuz
	 JCB1DZED9lslc+moToRqCaKat3P0OEjvCla/be8HQeuysbf9Xtp/POo9mCfqZwj8wk
	 ksmULUQYBMHGimLgF3XGA+lecEKHj6AG0Fa2nv3pRoNSeXIMy3/XoKujV6T5nft7+W
	 aHLh/2PANpZtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EE7D3B7CE
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 09:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176501297358.9605.3480941182755117389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bffbbcd3539b59e41aafe3a0fa9c653151bfc2e6d07f3cfe959805cd38b85085
Date: Sat, 06 Dec 2025 09:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765012973
