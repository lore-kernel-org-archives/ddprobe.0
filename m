Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0367B2FE07D
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773510294; cv=none; b=t2m//eDvOudVesjHBTczB0cJWckMENjBkcDtj/U2XMy0syyycWGNOkNUy7aa7fotATS8VLiUECr0mdSMdT8bToXcZbkSNP54jMNY2RgUn8stdSuqjW1gWtqR5OpmoE759WwXQcZDrSwwad7XjrEdZp03WqFbDUdFc8P6EctVFQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773510294; c=relaxed/simple;
	bh=3Hr5teWQJySTlS71qWTKwdXOCltoF8yPcXcsoo3kKmo=;
	h=To:Subject:From:Message-Id:Date; b=DAE6qW9ThB+jwJteomlp0HFZnXQSMx6sVem2GtBr9n+BUMqw1O7gR7H3nlOTtU+S6PjxqI6rL6mCwPf4OmWzCz6piKGnqf64RUKcTNnjcg9gcwU5B/JQc/QNd0Pg86iy823AsztgkAdjTH+hya6aZD85kwVaxRXYDPUilY7epEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ou5xetQD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ou5xetQD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18AAC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773510293;
	bh=3Hr5teWQJySTlS71qWTKwdXOCltoF8yPcXcsoo3kKmo=;
	h=To:Subject:From:Date:From;
	b=ou5xetQDFMl6VP7DbDnhr/1gHLJFtrdRsQEFMhlaglDZVkxLxl+AlM+3oCKZ1wNCP
	 y7JZr0Gr8kzfKA+d7CzzhYbkKIxjiCWQSOiG8E5GFvq9QTJ914jBk2aI4KXhGfCPVz
	 gxn2Psjo8n5GAJwtkSX4tCt6s3Uuhrep4HKhUoVaA8LSb4+gDFCZxB3YOV2xIhOTOe
	 zhtYlcMH0hPxkLF6DYFpXKbHHBTufRpeUgKk13K7W9DQRioulou4bVoQl4lJI/JoYb
	 NW972IGTTH4KfKeGN2ixzowSgxorZhMivaTBcChJ5Rk5Qy2JJKCMLfMemihTyWMMPm
	 LhZR9tWt51/ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9246510706EC
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177351029359.15513.2661533471347453769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42cc77be929f51c5af3f25625189d029638fa7fe1324f78c4b9bbd61eaeb7bcd
Date: Sat, 14 Mar 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773510293
