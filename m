Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402831392
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737515754; cv=none; b=Zt7r4b2qT2XTc+jdfUyrHJeC13d3lg/ZCS/o8xclNM5nM8Jv7znnPPc+AAbBgiKmRwOlQPXFnCCPaF3bUg4kclHvEdUZgd586RDI6FSK9ZpVZhVWYhPIFYM/bePMQbSlVlKpOsURuK7mVUf+vwlW9E3gJABAh0Zigae3Lx+WfDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737515754; c=relaxed/simple;
	bh=0CYZpPcubvDYtakMf5wHfGYlCnofuXW1L3AgNltrlsc=;
	h=To:Subject:From:Message-Id:Date; b=QGd2bdUGPeDqB99N/+LHbuyDtjus/QknhuAbL720PO52eWRynYv2C2CWGr+ogEigG1WIbh+3MDSW1/uRFxA7qCfzygZFyXEdiJzwkgeN5aXXFw5aSnswxI4OXIcEYQm7XzJIrqXin7mSpWg3X7MOXaRRlxFRsHlsTHFx434l9Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pkNrxvli; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pkNrxvli"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C62C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737515753;
	bh=0CYZpPcubvDYtakMf5wHfGYlCnofuXW1L3AgNltrlsc=;
	h=To:Subject:From:Date:From;
	b=pkNrxvlil1qgWbBKy1boPsF21YSiW/Gj4/r0ZnQJaoeCsV3H3OM6adODMxeSQHfHx
	 5QwPSo8GZiHETA3oZKb4doaaHGV1UO+IZqqPZVUGNyIQ0Mc9F2crFhqcIvDVEXrhHl
	 2XLSs02OLZHykMPuGxN4jRCYDksUjWku3H46xE0fuu6c/QUWzlwqcYlsvM076cU6Hg
	 yh6c1G8fL770Ydz5svOLkMJcKCE7/vG0bUO5oZk1UiVd9ryssAC0T5/y7iuBatpZho
	 jGwtZlOD3z78fKI/PyYtUDnwe77Uv5dBodY/4g9BhI8jw+SCW8JLJnZv6Vd2AnxEpU
	 G0JVb+kZQ+rwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926C7C02182
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173751575359.19878.4691414409533519133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eabc2afecca86dfa3fa344c9d545353647022d793a3c0c4166fe102e2bd36d5c
Date: Wed, 22 Jan 2025 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737515753
