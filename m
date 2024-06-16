Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B6941847
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 18:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718561303; cv=none; b=seVrBkO30OBpyAPtfmOe2nqfYyZDk/qOZsd6Dqd4xS5gYrSNO6ZX5gZvHIZECqhlRTcAVdzH4NvX0uVrq4tkoAJGeWjmo1bI/Jc7jOkh7+JaYXGgENggaIMS+rbqSt0nb+9UWA/2lt4ID9n4Oy4i5Oubc9680F0B5bU2qroqUYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718561303; c=relaxed/simple;
	bh=E8yRz13qNaKvP3o9OKHn68hzsBtZlT/wZygbzm+1cm4=;
	h=To:Subject:From:Message-Id:Date; b=tk4xihh4G5xHdImrjGqW0RyWNw5WzaZIfzS2SXDewFqtZSmE4Kzxt6leN4TjeXfVgno0RQVKAjDV05Z3KRRD8fGm5qY04HlWGp3eK0i3GTupbVYeyPOnoFIra+drTLg5HAp3I0g7bHdkliLkCZ9jKLk9NM3SKJ/+xrlQwwRRNdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HzdSFlIr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HzdSFlIr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E34DDC2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 18:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718561302;
	bh=E8yRz13qNaKvP3o9OKHn68hzsBtZlT/wZygbzm+1cm4=;
	h=To:Subject:From:Date:From;
	b=HzdSFlIr6QnBJ0EBOyG61UbuRz2OSlJDARlbThz8n1AkxB8BEefDpWnXeMvOlf0aB
	 h+RQ9PQxv2/7IeR9BR1H5dwwRH3Tnw9BScPwglIt5z17ZA6qtSObltNuoYzzoBXs47
	 Cdi6p1IahSt4DxFXrcKPnkDdiC3jigqaK3Z+zE5ZpiaW1g1jXDivV7cybARnwnOtz8
	 lTy/nVoUByVtqFPpRV9elufSQqGVIMkFoIa5gfDxeocv8NRFSLdHkzv4N2EquHx6VC
	 OPalFh5SL2BO8ZGyDEPhnSpqYFrNDi3Zd6k8etTXNU8IIgpOlfqqHYdnykfQmjxjUO
	 /3gEFsWJcnNEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDBCBC27C6E
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 18:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171856130283.19318.13471898503793336202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa412f5f78028924434475a2c6b4bcb7b7ed2dfb2eba725c0cefa17c76a4b43e
Date: Sun, 16 Jun 2024 18:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718561302
