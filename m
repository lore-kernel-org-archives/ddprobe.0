Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19346271456
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 01:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782266194; cv=none; b=H/gQAbVm6Uw3lutvJTJbd6iN9CuzGTb0pAc4cfhJRWEnV1DJG9IlMXnh74bgrdfdH3S6WsVarwx51Ucj7ZYJoE4fdl14NrdxQ0mOq1jxq6t2ifP9TbVEX+3A6Ju9W5kUkOgRjESnZAhpXzEuRNdSzd8w2S1+OkyNlyucNBlvgro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782266194; c=relaxed/simple;
	bh=RPa922NAkLtX3X7LVLAwXWd5OVcmgYtRkKmqZSiyY38=;
	h=To:Subject:From:Message-Id:Date; b=nDBdKCp2LfSuhwWjSb8bZ9WM/JB8MkjyA+T4kacxco6oQ2DaBGLtosCYQEtsgHteioevN7BGY+0dOtKkCvCxeyNV8L0pn11HAojufE+RArSJcnO2PeNNb4xW/GSHlzpvorKBQ6+gx+6j3ZEjw+hJ5CJuUTnCyyzcBQZNNH0nuY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S2BGd5nc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S2BGd5nc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0AFDC2BCC6
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 01:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782266193;
	bh=RPa922NAkLtX3X7LVLAwXWd5OVcmgYtRkKmqZSiyY38=;
	h=To:Subject:From:Date:From;
	b=S2BGd5nc/JRq9yhB4DWTCv0OvvH5ff+V8FmJkz+rnMyDcRcxn4V2yTbLDiVCLwdbF
	 UJF5bpliUKwNBF4mc9OYG2TK/5x11tFXyCh4/2EECdO0ediDb1C+YKJW0ys2x6c3bz
	 4kLQbC2rA8U2NEGALILXy2CbOHFtnDPO7n8u05EFPE5AA4jcsipsj5aqOJlN/eDWVL
	 7Vq8lVi5fajBNpH1brQngJe9M8PXtmtZC3HuaYoXBuGOCseJhkkIbSLdKPinV0hckn
	 ZG/7JqNe0UzmLCDLc7Iwh+DrFxbltGMI0Q3RLzSbVT5zTHYXX2ddVx+7jE6C7nNHot
	 DX7ghSWk+UDYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5725CD4F26
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 01:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178226619370.6508.6550346174188420335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af2b6cfd1d2b1155b6de313c57e5b82e7e1e44d824997fb4552d232d6f9230b0
Date: Wed, 24 Jun 2026 01:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782266193
