Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB6F3932C3
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788736834; cv=none; b=KAyJjJI7ybrW0CTy6gNH0ls9/8uoXmx1ZXE4My15CemCT/pXYOMjb7aqFp/Lf9Ls64O1pnucxjKaK8sUVE0xB+1UTwVVKNigeybabyAQRM8G0JkSoM4ZPXlccckPjyVjkyNDDMpUCW+frGNgTbVgZmSujGPVnUMdngKn6+K22oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788736834; c=relaxed/simple;
	bh=18iDy5oBauviiNGZn7UxqjFDKAIQwyVLY86aSzyzbdI=;
	h=To:Subject:From:Message-Id:Date; b=n8fE6uA751do7LtRbJ44voODLFnEdppyZWPY4awb/cNK49aqkbiYTfbYnDrPDIaZePOTN+EJXDy7h+9Y8IuyiN7EaiLIb9TqPct6qsdF3S0RAlu9YCrTCO+BeQKbdqDB5VQKXAb4bFGDISffp3vusOA8HsngzLq6z1dxO87p0IU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RfTufoo6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RfTufoo6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62A2C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788736833;
	bh=18iDy5oBauviiNGZn7UxqjFDKAIQwyVLY86aSzyzbdI=;
	h=To:Subject:From:Date:From;
	b=RfTufoo6fEUfmRnzprQH+himI7ni1Zw4O9Fa1FwFLIfg5WF9GObM+OMBHoJ/NZtGQ
	 908u2gMpgjOQKTRVimcqDfUnV1t0UATyCj9LFS/7bD2YhAW/ADd+gCEewPo4Zq7ZOY
	 G9x4w5OwsATfA/r30bBvAQP8Whzj9wDl1xdFQfsaVmD5nM7L8qWhqAmuZVxyp06QMg
	 S8Kvp4HNNmasR+54S871/66tiV3zby82peY2A+0wMTsZ1qU5yjRpga8sGIQ0hN/Ax+
	 /rwBnqBlE3dBUiOttL4V37Zm8i7OcwoqZvZD3Yv/dCZpj/fJIn3gnsq65yM771KR0k
	 k+04CPOmLlrTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0405C79F8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178873683369.391.1782522396140760655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5560e9227c977918c1066f98e9442bd0262c42650382787c671252d8dd35d03
Date: Sun, 06 Sep 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788736833
