Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32AA43AA4F7
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 23:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775171134; cv=none; b=h6/VG0aed9UDFtrQfgrWGVRi+7gBOnLIUQa539q9LF16LzXdTUyRqhQYrwiWN3+n0I41ZQlBLRPnuAXaoxlM5dZn49dOkonsXiYITenAWZUWn612oHNtTJT3z3EIFBbX7B2G2Ncnw2+ggERAuaoyLLsCG/kCw4H4pi20nnimEJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775171134; c=relaxed/simple;
	bh=mi01PNfEvMsRSAUZ4XGUOp0K6cn2byCFr7QKGfgI0LU=;
	h=To:Subject:From:Message-Id:Date; b=s7uGASSnsmuoZhLpSuBOgVeRCU19c5wPk29FLC1SG0HT8/eMXubMVj7tahLupYnBki+0ztVlumN59mg+x30Wc52av2bHxWTGPZHr3hSUCk60IVYkesBKaYiRIUWZUOxRPVxezBjpuFXjSo9NfshIShdiKfhfl0TmmHZ4UDlfUyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFgd6nt4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFgd6nt4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C18EDC116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 23:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775171133;
	bh=mi01PNfEvMsRSAUZ4XGUOp0K6cn2byCFr7QKGfgI0LU=;
	h=To:Subject:From:Date:From;
	b=sFgd6nt4P7nmQNO2+0BWL5B/lf9ZPX80ugxQJk0px66XLj6cititqmhZwFaY/WvZF
	 aoJyFzrnP894XOYGJ6qp+ybz5VcADz42TWcWAMR+FLetuOBklAGY/1CWU0s58WQiVj
	 qS77pV3SGPXZNJjSNei51KNYFI3uH0egw+G44IXY1HLTuDG664yXaj8mQZIEau7tiu
	 L4X+7YPv4IeRqTXZPhkONY8ZlnUoSbLL5rdGeUWDW4D5wXccswX2yvTQx77n8CUegH
	 24SArjO7ZFEtAVgLmoxMR3qNfrJZhYNSsQGiis0ZSbTfyE83Vg7UAxQUtMrZQ9EV2U
	 8w/6vZbD/C9vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD895D6AB16
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 23:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177517113368.23897.17092265462446432414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d88ed0e295d748d8613b403edcf9880da3b2b9909c3d5d7a3ee17a33c3387ab6
Date: Thu, 02 Apr 2026 23:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775171133
