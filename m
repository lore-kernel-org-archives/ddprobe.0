Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C7649475
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742178594; cv=none; b=cElCe1/zh+cjncJ9ivR4CZTDHnK/Y6BqLDPfdLeKIbCfGgzaIfXYKQWcTDZyej658DjPcZeXrXFRIMKVVZeiSr4G1JqqfmPV41KyBfjDwZHgDZjSJmB4zjivFopVA3p/L6mR7WEmy4fiN80xgvQTMc08MaffGh1be3dTw2Ee2tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742178594; c=relaxed/simple;
	bh=yvlcZ/Tr9El6dObZWQrRx7twXgz/GZ0ffgm/9pRhBhw=;
	h=To:Subject:From:Message-Id:Date; b=pa+Y0VvnuCmFiFxgHSO+Hgxsf+K8jV5IzSwEYLcKUuncsgU8EMuyDtyiFXpali44lxSU06mkugAhJHXWyV4Bs2tso2hKCSkf4XlqTGkgO63fzYSN6t3K6B/uWse5bRFXdLLARekXWMk7AYyuVHECMnSyGuO0bzxuxc2Lr5nhW/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JTEi0dbp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JTEi0dbp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3CF2C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742178593;
	bh=yvlcZ/Tr9El6dObZWQrRx7twXgz/GZ0ffgm/9pRhBhw=;
	h=To:Subject:From:Date:From;
	b=JTEi0dbp6zWpVCq0W3AL0bM1QJG7GtPGOTRRXGgbcu4h7FN4Hurbs+e+OXmMaTG8O
	 DPq2eZnT0XhAcRgQuHTNhphae9K8vPlwMnUzXPtM4L4yqcl5vj+qlhOJaYjki7rjyI
	 B2TAaC0WQPGWQ07kLv+/oOCP7BkI0PWBcLKjIHXT/cMYIVudWjmmcMMzp5f3Vaddva
	 VisRu59gCuUGc/ishIhE2knTR1o55zHRMgH1O515RgtNl1dIDa+6VtE37A2DUCjpPc
	 k5HktvcBw60kydr6lOFTztzvR6RHkBwjoH+Z7s3/PKjpViLDF0J92c1WJoslnJiSia
	 v9fa8O6LCgWeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96864C28B2F
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174217859359.31944.2167027211071723762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7bf381217897d6348f64e1af8f0ef72a4b37c362bcccb7deb260ee3e123d2e0
Date: Mon, 17 Mar 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742178593
