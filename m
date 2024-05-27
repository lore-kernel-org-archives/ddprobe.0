Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6782E8BE2
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 02:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716777863; cv=none; b=C6r1sK6vk67pvidwzG+Xq/JQrhkycF4hXIFyceCGkhxNV1LkskDcpFO656i+7/4yfeIzeeEvRn4VjdA/CjrDDGv0UfeZ3ZUlPYdweTOK4tiX5Yg2Vp1ZsPykohaP+5bkt08dWlOu9wDtfpFBqDjKE3gUii+++Za5S8nDhaXgbJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716777863; c=relaxed/simple;
	bh=YoC8/TiiArRI/7Beobt+odO2lZTqWiWoULUKHHA7nXM=;
	h=To:Subject:From:Message-Id:Date; b=JsB+6qMr/JHGSycR86Xii1bcOtFR101b5CA3SDHES5FLs3oN7ho2JukHSQOOWck99ORrXGS3SRlyLrTB7n53WwkbXfEI6DABrBa2chftz5FtRG7g9ial/RwAMxVfoy0et2ccguDuEOpOVFxgT7qzLc1nrn33DreeAN6Y+DsaoN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/dY6txN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/dY6txN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D71A1C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 02:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716777862;
	bh=YoC8/TiiArRI/7Beobt+odO2lZTqWiWoULUKHHA7nXM=;
	h=To:Subject:From:Date:From;
	b=j/dY6txNxwjeBIAD9aHq5OypgVuWY1jp6g7rXcZHGI9WAymIWeUu7zsJWRUEYOrQ7
	 yp9gFfwAW2AQy3yxiTRYPQmQ6vs/xcczK1CawA5rRJb1iGJrAxMmc3fLgXYWwMPBdm
	 CIvnS+OcM53uWvM5z4aNMKOd6XHXDdODHBR1EHcbR1ElLENlA5Duw5ac9vcmemGTop
	 gQBaY/pUKTXhEJ99YVyUGHv7MD8d0mBmdJcyzD8sYI6r2XB8djMEkwXDAXXjTi9/dI
	 slyVwfB4yPfbz/yiUcRMQDSyx1zhzFz0tGWEdmjdMgrUw+jk2+cf8AUptUHqEOcOA1
	 uKV2eiC7GR56w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C30D3C25B75
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 02:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171677786278.11887.1549750796892504627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 540a858ea06fc0381d8fdfcc8d38d573e31b8fe8af3d342f168e60987c5c91b2
Date: Mon, 27 May 2024 02:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716777862
