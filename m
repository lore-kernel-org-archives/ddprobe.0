Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27379207DEA
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737793554; cv=none; b=XNkkKpT6mHA/B2BX4ZMO1eXzKYqM7QJBi+kb6QZSeejvXbgvRfAC+dLHEqXb0sYCb7A+qUgM8Ml4qEyDlnNnf+walDJVyxsF0AEcUwe1Rc4iEZK1NNP0HYJcoHz/EHFCWt6jTkc8n0Nh1252RaMTifhVcBSn32f4ktvd/8ttLo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737793554; c=relaxed/simple;
	bh=e+/N7ySYWMdnb5o3BACKhcAOY8xZh9XPOJHW+JW7F58=;
	h=To:Subject:From:Message-Id:Date; b=JJP450+KTldUHoJEyNjqToxqpQeYcET8VU9OGA57gx0bpNPurzJbega7buX5BiU8PkaTdfxXFDVZ5Lp968Tat2VPka5SuSFFguYHDy+zRPbYkInPcvEYT5bCqOsqsdTiulgW6xRh9cXOcfvaXUCAtIjD/zXo+uRT9gNR2VkpUF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jEiAVHqW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jEiAVHqW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99B38C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737793553;
	bh=e+/N7ySYWMdnb5o3BACKhcAOY8xZh9XPOJHW+JW7F58=;
	h=To:Subject:From:Date:From;
	b=jEiAVHqWvxA24o0uVktV1eKWb22AtPqRZYnfFWKR/WkTDzj6wZP/lA743t7+skcYN
	 00ZOF06u0hLCxM9M7RCrIrrORbAup3+4l9hn3rvRp7EfEe/F6QPj3iYn3hGCPnmjmH
	 aLCxz35drlHEHQx9DwGt0NbPyqpWXYYJVeEHDJDhdqE2c+SxPQtda98pEtsFujUvNV
	 r8XaaGFACZRnv4zebVSjK66LEsnTzUiOY7cXaldxXCuzKaV6E89IjZBehUoD0klN+F
	 iN4EmgDx2lGg5ispD2muy8b9bx9zd7Qgel1uNfapWSI78KQoU2wAw7c8JOQgIyeUBF
	 H5UwBvQSJ/GeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90574C02182
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173779355358.21595.11733314058723517597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cea15d70a4b58e67efe7bb8f34f608ec41b51c0a047056080b8eba2e4da7330b
Date: Sat, 25 Jan 2025 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737793553
