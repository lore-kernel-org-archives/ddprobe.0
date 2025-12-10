Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4C83B8D75
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 22:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765404174; cv=none; b=ASRcjS8EQjlf5VQwrAfuLnydn1ll5qG7YIBR0dSExwUxP89g8OhusjKdocctKCZH6X85v2GBklloHCwfJoTt82Wz71rfngLIbIFhJjAzXXmMliRWDR1lLf+Unp3EvoOFm2XX6MKQUF/4YWRZUc8jNMFVjb9GXK/GIdcG/zv5Y20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765404174; c=relaxed/simple;
	bh=JHZcAJsAnJSOjGejnLU/FLuA0UW3pBUurD1owQkXw0w=;
	h=To:Subject:From:Message-Id:Date; b=EA7Sm9O0Ut5aVO8JmrddHJzlc2+UcUR8EIPcwb0J1ejzvd4JYjin6z5JOn83ccdh5Jln/poa8DWiswouO7lg2fcfbjQAkkXAhN+bHTotUadMQFPkPz74OEA6hvJXSM4hE524YGdQ1mfkls/S1PwewPLP01mEQUpwLa0bT8OUzHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SgiTED/r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SgiTED/r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDBCAC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 22:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765404173;
	bh=JHZcAJsAnJSOjGejnLU/FLuA0UW3pBUurD1owQkXw0w=;
	h=To:Subject:From:Date:From;
	b=SgiTED/r14mPR0X3hcYNZc9kDnv++BV9vkTQHum0ALf/G92387x2TOhQdMCKyabZv
	 iVXm755rFXNC1DxPNRRdceRQ4ljltxxxW00AW7xV4D2eHesyms8XcdpOiXBPlRG9c1
	 gyFVc89psRpmduZuD8qWDjKL19D54vtLPPOQCD3uTJSpjNV2ZhkHDq5fC14JqJgFeG
	 dZyZhUJlLPZ4u2+MicTeXXIe0dM04grRlxgmhNHEMbMRfyDThrOlHdU5RAgW8CtJOD
	 wfyyyINQCF4LXYIto7tElZAFeJqDzbTuMYzBGRrynRG7KxLU704EeNVTxKJXScwIOJ
	 sjs0oUvCiyyjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6A1ED3E780
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 22:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176540417366.32625.14058159254561559625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fec2e040f80e36c1fbd699f42b9c1b3f14d539f8775e30434a6c67c23691c407
Date: Wed, 10 Dec 2025 22:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765404173
