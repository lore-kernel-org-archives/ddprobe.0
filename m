Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F72C39768D
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 22:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777328854; cv=none; b=ZawNwWogfWPawcTga9GpfJwNzPzreSFufrAmo5vETjoGvMFTBOPGnUXf5SiKxMXT0aeMo1UMmxTuOjXsJbgbWhr8etssbFEKmoFMcMPowUlc8HcSqvDP/bxn+baTAR8Hag1bWFhIvKHN4HNtgvcMeedGDMAg9caqWve/4KQSgcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777328854; c=relaxed/simple;
	bh=pZfScqXWS6xPktQv3/l4Qi4nEnGnWhFryX8fKR2+TrI=;
	h=To:Subject:From:Message-Id:Date; b=O9PZ3HIgZ8bOYCLGtJDKDvMSa44A6WfpUIkSLHlffDmlLMpVda3bqosJ8xS4MW0tfGf24+Nj7iBSenErleJUO8oHK3Bm0NQAuRLXKM5J7DGF21QqzkdS6fLd8cNPNZf5AA6GTMiwTPKjfFSe92hgXQ5DeTnjF+jKLneQbGrHRxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WgKyNJIo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WgKyNJIo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1092C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 22:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777328853;
	bh=pZfScqXWS6xPktQv3/l4Qi4nEnGnWhFryX8fKR2+TrI=;
	h=To:Subject:From:Date:From;
	b=WgKyNJIo8TMOrPfhJ95SXHreFxwZLgz6/X01clvMT2/R00NxmYmoOSYn430nDH29D
	 STTmIylQ0laqCpU9rFO1lZ3rx8ddvZ5HjOkFsEJPlZUe3a9TigyvsdW1ObT7MMMnd7
	 6lnib1h6O0e23tnm/2ZLc/654c1z7VTrK/lakL7llKELeCVc5HwU6+Xe5ii6CYjMOY
	 tteNZUXsyFxyxX2odenEhMGqw8KEkvV9QcOJctThtBxOHJBLt4vLgGqYv2IKGhqPPY
	 GOTN+k7ljm9eu2px4HFxtAczLP1dB+9SFAoewuUMc1AXJa026v7TYA8ce9Hp7vxVgV
	 w6yn8JQt6QxIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF780FF8864
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 22:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177732885368.15348.16920339774045743350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f55f06a261509409bbcd32fbead797293e9481f8929e1dda354ea38e3997df08
Date: Mon, 27 Apr 2026 22:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777328853
