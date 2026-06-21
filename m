Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1512B9443
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 17:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782062794; cv=none; b=NzjQJ/F0s4/OiDgVx62hHucO1mmq3SfiVCC0NR/E5MBinueDkCFOrQjWvgVZ1qYRbAVzhcLNJxvTSbl9dLM2wPmHvBsYWqPH1v+I51zZ2SAnpYnELbusYWEGM3VVm3ODKSSNb75sLls6XEDjL7TjRy3rogJrk/d4boYakiqn4fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782062794; c=relaxed/simple;
	bh=iJd3J7cGGQnmpqIy4CFff60/KdO/v7scZ/1PAMg4D3E=;
	h=To:Subject:From:Message-Id:Date; b=TJ2c6iw8A/ZCG3/HSW2d9CdP8p90c+B5u00gjHoN6HPh20UWFk1VpcvRWXaTqhKcsoiQYnbSQjtITLwW4k1J+uX7WUxSTWfhZHcAwvIte72j+q4xKquCfnSewVq47lPAZNyjvHqt2i9utjruJ16/qeAVdaAzywQ7B6a2zEIXZYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UlrC7Yoq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UlrC7Yoq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C59EFC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 17:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782062793;
	bh=iJd3J7cGGQnmpqIy4CFff60/KdO/v7scZ/1PAMg4D3E=;
	h=To:Subject:From:Date:From;
	b=UlrC7YoqZV9CF5UsgZHeq7HLt5g4lFP/pFbgonQTVOMxRUVwiKUwSsFyGEfFaYXN3
	 +esktmWUMIpYJHtOcskz64rAfDpw075aWSvj5QgEMVNtaK/kooVRMpV5UmxuED5eRl
	 xDbsLibz0kiI+hVYV51YaWopxJwSYBBi5PAgphwinlP1sn+NC9SXFuvUc0CUbUQkG1
	 rDnCsTA/pL/yC5lPaX0m8YbqlcxEJgNI+V9gmiFD2WGIVBZhUrAJ95krO9zcYlgHwN
	 EceXTY8fSwqWuLops/uTLnHI84kBKgxUeV0PRWxfaEqoONeXTbtnetayJPgge+F23j
	 RkBES0Rzmnn2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD1ECD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 17:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178206279369.18058.10965510887462582401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e19e9a6e156532defe341e02bd5e1945a56b2c0a5b45912e7afbb5d3d95b7552
Date: Sun, 21 Jun 2026 17:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782062793
