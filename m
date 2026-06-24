Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B6F3A1B5
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 10:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782298654; cv=none; b=fAJfvGx3Ls2deMAnvs+Nr1jgS/2gV6D6XTrwv/xMd0Dn+H84vwHFmKdO6HDs0kF/rwovUhcgZ7Hl5Nc6bKRo9emcCZCRv99+PG36wZWoq4PveiiNiN5nCy2kTr/L5cCEUwXnxT6TvK4v8MowYoGNO604NNB7IcLS82jqo6MU4uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782298654; c=relaxed/simple;
	bh=0VNnmQ41OslTIiUE+tf5zyuQtPW2vlgRcZYlGQrfVMc=;
	h=To:Subject:From:Message-Id:Date; b=fVLc1qW+nM1GQ5c5MY+dATLMp4KUwwsCfqa67OZp9aW95eSw22s85RuwUihthJU2uBqqFfRiShvkrCi90CfBhgEHN1GdpVHLTljJFp8wt15LIXqIFjK8eG3CTJKCuQV11EQRuJsfttc8YiFCzSyGfO3GaexIjrQPzurLTcauzdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PaZUKgVu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PaZUKgVu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E30C0C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 10:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782298653;
	bh=0VNnmQ41OslTIiUE+tf5zyuQtPW2vlgRcZYlGQrfVMc=;
	h=To:Subject:From:Date:From;
	b=PaZUKgVuDvnQbq2Y1GkFavY9WNa4vV5FxhJOc1vrxItX6vQ5JnsVvzC2jeDg6tSxa
	 knqhAGg/R34ztl/5eRTOiAcpk9uMr6AgYGhSyXD5GfJfjE41BNuj9VGEeiR7gAT1hJ
	 wbmKXQ3buU5pjVKCCth+7ZxVP1U1Ic9qwBdbmjWHAolzn9XX5jys0+T9i/MNLpE8oa
	 qkw1fBO2XKhMKGlCfvDXlziYSZ5hAyV1W79l5FXW134VCV0cSA4S6LkjQB+CJ5lDg+
	 JQG/CuWk1uO0gYUSGIdFwyUGgn/IVFvzl+bzl9C9GNeiYr2Yctt6LZFJpgS69GQjXS
	 WhtSV2O8sNjTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5099CDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 10:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178229865373.26260.3206419726952899293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99d878303de5a739d42dfd102946518e18171cc6b8fc950eb3f481fc25f5d93b
Date: Wed, 24 Jun 2026 10:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782298653
