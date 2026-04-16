Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4933419CD03
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 02:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776305854; cv=none; b=VVKM/N+tKYj4t/FpdPVipZ6Av2FNDlCcDr/6wMG42/wOIFr8jPnoHweEsXtTlb8QK1Y/RMafkU6CqVOBPlvX2+7cgyZxlxTI+0dIW9KGPmPvPMCV8BiwlYw8iyHVPA5RCtkPWfBqM1Kp8+ndU7WQMcS0HHxK+NgDrEjwrdeeby8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776305854; c=relaxed/simple;
	bh=DJwEg4OEB2MspYY12n6L2YCPzTtCHq1Ufk5VI3vcZ+I=;
	h=To:Subject:From:Message-Id:Date; b=I2RfnLUW58QqG+ICAe+zLKcmjSla7Fo6hXzJDAO8u4eNUpdAYBIB8OSe6NhK9wk2bagQP3zK2q3+6YK0wy0q5Xs5JjaKITPXC9dgGV3zL34DaheQzEMLi6K+uFzyMB25IcAdoVeWIvkHBy73NpzmeoiENHCLwUAPfBM1c41zwGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qFf5gFBW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qFf5gFBW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4E02C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 02:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776305853;
	bh=DJwEg4OEB2MspYY12n6L2YCPzTtCHq1Ufk5VI3vcZ+I=;
	h=To:Subject:From:Date:From;
	b=qFf5gFBWoKQdeVE9OUPJ+PG0EGbBIoVMCJvURB5Tnsf0j6Khkztohl8fjhdwCenee
	 p1LFxglxOzFPBR9R0GQbWrC7I+9FYgnY6nNrapZZpOwvzDz4eSXCU0HkxVBlRaoK9V
	 X9OaCUTVuYgsw8u3cUlIvocd8pgD5xyjI7O7xFCZ7oF7lGj9LeP7ljYqpN5zrO3fij
	 Umyu7QURE3Vipk/BsSSDH26xL6Vr8Gt35uvuzXxy1D02LS8k3pYV/KGQ3O0H9/GyZD
	 OiIpYRl+DNhfxo4HEqWBF3U8Kn45xx7/JiELCFEnekiWiYeRRa4L6QYZoEIbRcugk7
	 jZZviTPwHf1Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B3FF433D7
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 02:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177630585368.16964.5001359962046585153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09db6b66ae35ee84d6f711ef9a0e778a8c2255fdc256d35a507d535f198585ca
Date: Thu, 16 Apr 2026 02:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776305853
