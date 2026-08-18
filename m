Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519D8246762
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787079034; cv=none; b=X+LFrAZsqhtav2ot3cgCN6T/Yc8TL0r8HeFUwZcLLotXCq72B0KOyQ719elflDbo/j+JMib9sPRzWk46SQ3jDdHGjTuRhj4Gx2VfZZ55HJlSSJG5CIv0lC8hNXz1th6AVORzuoIXV+Ui1xUa2vu24h5uXwGXgx0M3xrw4Ro5KPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787079034; c=relaxed/simple;
	bh=96Jvzzy+aLD9vKryLBgYHjY42K+tGjvF4tehSMdl+Hk=;
	h=To:Subject:From:Message-Id:Date; b=nOpz+M5NDYghW5f8g7kCsA/yPEYDHaaiCLU/0b1lVlKYrKlL1rzNPsvJ0GyAN0DjXhXImYoWxljdniIS+Uty6WCjRbLwlM4069t7i5ELdTY9kk7/TMdQY7BweQSWcI1z54VQcy8KfmFvlNeCD2kpDQ++Je2bMEzGKdHjo8v9OQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NCqJOIIc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NCqJOIIc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1080C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787079033;
	bh=96Jvzzy+aLD9vKryLBgYHjY42K+tGjvF4tehSMdl+Hk=;
	h=To:Subject:From:Date:From;
	b=NCqJOIIcaMGS9uB8J1FhYpTqsL4DwVkXETt5xHg6JRTEtYLrRj3/UomTIxefbdaHB
	 JSjMrydGgA8C6n0x3DXu1Uhuxv6eya5LiUJHQvLLRxF3PmZTpZNW0K1KGneTe0KJQ+
	 xc9Nj/2A3kGuW0FWDaboEp7pR4r6tXjSFZQFzdfNFOLUGj0OKqVncMSP01BXjiuhHd
	 4uH02AHbb+OTIg04HVxxzQqyigLmsOOQWh8MHmYl8IpdwAUtj4aCNWC+YkYZn7Yae4
	 kh27RzLEsdZbWrl3MhF83KR/rGXohjF45wmSsvC5kUj7SreBZczHYOcek/c1Wx3ClI
	 4HW2qOk4n1LxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F06C5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178707903368.11477.11381522420709100410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb571e181b85e9b3277f0c0838dc8f56ebab76d43fc3e53af53710a6a4f5aa2f
Date: Tue, 18 Aug 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787079033
