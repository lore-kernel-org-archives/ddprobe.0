Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F2730E830
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750442994; cv=none; b=qJTq48g0hG7TVyC/l0C/Dd0nqQZ6ZUt1wtSrWtVNUgWaGnQVOFJuuhN6EPORrB6K1IT0Fnkuvl7INZOaKnpD21Y8LTINqK6tVNirAf5dlLHYYK+GpuUVMpSQXH7v3vxLgNpfp3yEshvRGINm7zP/XrMKlU9SXAQl33dM0qiO7ZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750442994; c=relaxed/simple;
	bh=VnpzML5FEGwuRn6ypAG1AKX5OCdv0KAFp1Lk2AXvefM=;
	h=To:Subject:From:Message-Id:Date; b=oWar/viX3fvLUlrDoXu0e5rO5kzFXDRIhft9YhWHVz+H18ovhpNLW3IYjf08Xez6dHiz76OTLNe3bo+/Z6nl4/Wy1uIyamubfFx9H8E56vdaXw0Gsqi2fRavMNEhCYhrggpdzCuZS4lijNoZY4KE/vMM6ZuhN7bdLuvEGxSJOII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUoTHMa1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUoTHMa1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2C1C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750442993;
	bh=VnpzML5FEGwuRn6ypAG1AKX5OCdv0KAFp1Lk2AXvefM=;
	h=To:Subject:From:Date:From;
	b=AUoTHMa1VkwEQx9tL86pN7DgG/ImPZkbD9zVgRRdp3EQZ47TpeijqUR3gTVdMzLEr
	 Ey33YxEh8bBbVLuedD15ESb2slG8L5Gq7IRkObhlS49YefC2KhDiXh231LHjBEKT2m
	 nXJX15D6q7zK3ISLw8lYUWpRJcn/uf9Jt6Qv2catY1hVyvvl/iWYnVN+twsIaDjTQa
	 J7iGg+nNSKof7p3FS832kQRrWzZDMnQLG1kCw0i8+HOQV8jlnJAp4O5FzMNf09HYST
	 i4hFxTtJLqJnn9EC1yFsncZcITNeTBanXXyWsDFdTuGYR7Bj00wb0wppyfIjp0EelE
	 MU2Q5fffbVdhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9251FC7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175044299358.18091.13881278987549501367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b47d18b3ca5bbbe0973d1bbb63e4a4702c64aa69d10cf0d8d61c30cbb7293ee
Date: Fri, 20 Jun 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750442993
