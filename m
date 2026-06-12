Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FE031B652E
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 03:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781234194; cv=none; b=Pepakws2/XFXOaBZD/ipdmP1U8qwRMyyiRjPXa6u/gF/yVf5/7iulF8lKYdi94yoGA8Yqzal4bfv0/vrWIQcoVCN37+fnfIkhsOAUswULc3Mj9KoVMxKMjLMfgSMA6sdW2Y0SWL+Oo7ynjxtSlJX0sZS3bB0Ca+FoQsscGejM/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781234194; c=relaxed/simple;
	bh=P6ONLfMvS1Ehigv2lQclWevZesnztYMDfN+CyHHqVeI=;
	h=To:Subject:From:Message-Id:Date; b=qrdE2YcyN1nc6PXkNNF2trHmxvavHPKklIVzj0+HN30rj+HAQesfLn/zEWlBKaShVCMNJxnx6d6sekCW+YjjivYsVgFYjTYDwrlIlCB7zOrLjQimeFhJJZZgJ2zH0dixtcbWBEHUYlu5xdtRkT4pfqWou5syC1CjhLhpGeg+Ej4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nijrr88B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nijrr88B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C213EC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 03:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781234193;
	bh=P6ONLfMvS1Ehigv2lQclWevZesnztYMDfN+CyHHqVeI=;
	h=To:Subject:From:Date:From;
	b=Nijrr88BfxRWvGjPEHO8IIhNXH6qyynCElBHfqLaTKRSBuF41x2/1zCQrfb0NqB3w
	 GtWi1bnoXpiJo+InDuHibH0yAT7blX2BX/cZT5cMGDX4w6Iu9llFlT/SgC0DqcBy4x
	 1QFozVIpNdHfVzzenrrGEAJFyJcubBlXl4ShshzpuyDw62qUWILA+7WsGWPfUoH8zr
	 KFqdWNSGLHPB8TMcgy55RLg8/taWbx5Xpt4REBnzC9RRExRkB2uC1hBQuS0HwsSykY
	 sBcWPZLYeg/QLjL7kSdh70/FIYW+jYurirNaG08RJOmzK97yJq5J3F712Gw20wBR2/
	 AiWtN/By1pp4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A862CCD98CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 03:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178123419368.16105.16161536922951804138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f1032ac96f417acaa5fe8afefa11242ebfc62bf37e43aa3bb68bbd75c2393c3
Date: Fri, 12 Jun 2026 03:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781234193
