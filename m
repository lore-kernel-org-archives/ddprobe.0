Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DAC21A840A
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749098994; cv=none; b=OzMZhVFjuJriwKHqVqmLoOFPZ7+AZudAM9mYZiX4hOf7r/obxE6IgVrZKGNfGsHHvEYu26M5WsO7E54BfGIdUpQn7v18bXpI8Cl/ZgoTKeDFGQXcSc5mje9ST+DExhI6OeAm4IFBUckKVFrKopeMuhymaHoKbXed00Xucdw8/7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749098994; c=relaxed/simple;
	bh=5yUadoHwfXgGmMl1Wuy88kzpf2nIpGR3BBpGIgzoVCc=;
	h=To:Subject:From:Message-Id:Date; b=QgfxwpLlWENuP+UioWurkCwbFaSJ15YuJkZTI21KSJG6kdKUuQozmDDwgTXrKIVGsNWbp0jtSObB6b6WQNIT4W3O9esF5QHQECnja3Yymt0SGXMKpbSkuSYkWo33u4HGKJfQJJv3LM+J8//hnu40iienFFi/6hy73Uk8f2Ufzz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGlFJ/ad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGlFJ/ad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7552C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749098993;
	bh=5yUadoHwfXgGmMl1Wuy88kzpf2nIpGR3BBpGIgzoVCc=;
	h=To:Subject:From:Date:From;
	b=GGlFJ/adtbU2lsNgmZmeg4aVgLgl3W7fbIc3d/aYx9JlOxaj3yqarQSJtgXGlR3Km
	 5DoIIFbd+aVtF23Xf6L6WFu7GBNf2vG3K77WtWK2N6CiLbigcxhA1pgyiVpVc7qiKK
	 xcFrZHMM4XlRBCP1jJWZ//vGqPebSpT1u0i3g4dhmCxypRRz9fPoqCHvkk2pIKWuCm
	 YW8NznoKpRy6zGynYzbPt9q6fTle9HjEJEufFRjxYJ5FQ1zThUhGjizpF0KkB+z1Zj
	 jQVpN7Tp4fOpvmgEJ9Ae29af66s6Foavh+r3Qe8CsDeie+HY6eZRDslwWgVjUYHFxj
	 4+w2vxTXPuAew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9320EC5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174909899358.21953.6590404056114925746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c27b1189acfe6e7463ceaff03455aaf0e1a762baad8c78de071689b0c01809bd
Date: Thu, 05 Jun 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749098993
