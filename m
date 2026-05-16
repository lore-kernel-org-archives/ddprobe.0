Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDF438F254
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 22:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778971234; cv=none; b=tB+17QfSBg0yR6R2ZnGPDnY/v+XiyYUJpFssvJ1tILmVu8XZYaTx6wNrXZAyS5q7yMloQaiQr7YprCzqfn73rVfYc4U9xW/eOlElgkUGhA5Kv08glfHIJPGsNLuI9DAEza7D4wvUxvQt9geIvuP86WOvL0oq00YKBd5/h3HxAAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778971234; c=relaxed/simple;
	bh=3Zu6Bfom3no7WulfjbP/86ssdCAruMT8XDQB2r0dCRs=;
	h=To:Subject:From:Message-Id:Date; b=H+vvFh2oB2BMQtxHs0ZYcZbvvnfCKWbDQp/bmqMoQoYlDV1qyV21DmsqmM7wZmn7AQMWAbVBVtlWl8Gkf4Ea/Y3MpY7MRyEUdpM6wVZ73aZdwbyDvzduKktbUx74DyiSPWEtfUXLLZGsO4xfpcMNxCTMDdAyINW0qhriIjb83do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ofcsn+ek; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofcsn+ek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB4FC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778971233;
	bh=3Zu6Bfom3no7WulfjbP/86ssdCAruMT8XDQB2r0dCRs=;
	h=To:Subject:From:Date:From;
	b=ofcsn+ekp/+IhDOn+KavJ3o6jb2U+RyrDV1Wj46DKg0YkYS/ZDhSXV2KBHXE1YTm+
	 UH+51SKKsUX4xhQZnEe8rzPlHvqzzdZVUcIHqp/B8zfs8bH5/ArmpiAsoKlyL4UQun
	 l72uR4iFbv0dJQwdmji5W9I8beLBVZzj/bfSWV0jqCSVzgUUU6JLoc8ScR/zAQZKUb
	 UzxQrq/9dyBeW8vgVhMn8ZLY9OPWKhjpyzQTXv7Nfy9xOlAbtwaIdkW23sv32xZY54
	 s9fzBlJ2OGbBcU6GudVWdFjtRtjRxNHLOZlkToUvq2L6cmTKJ3lG4vQCriz4hxmZrJ
	 oK74WR9WVZ64Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFD0CD4F3C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177897123369.18960.17861139594495178521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b9aff22cf56ec3fe2d9a9fbf914641e305c88e6b8727062dc9856e2cd8500a1
Date: Sat, 16 May 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778971233
