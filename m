Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 787D88F5A
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 05:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720415183; cv=none; b=ToxHKHqn63dNNlLIO6IZ8vMpBxon8s9o3LMD7ba6EpU0XkSRjrr5nGZQNIJ32lGdqsdhcnNiTCInr6RaxWJjPTc1Gj+NHSIp50KyHS8BIAlzfwPOC/mDYB3WGQQqz26G+vFGh/CkxtJqyK4nmh0JM0SBQGBEz4D56veUKMspb8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720415183; c=relaxed/simple;
	bh=XZIp/F1MNasZ54FeogI4FxvGR/6Litch4p8JVM1b2gc=;
	h=To:Subject:From:Message-Id:Date; b=KFy6Jt3s3frp7qjhW5kp7LkdEwDWOEVO4NqZRKoMv8N7XFOGcVES9JjFf6xQpMcDbm8UkwfVMtz4smRTGF1NgQBJIoy6ueALE2ji45/3u8ZiidIVhrKI9N7wndRBAONtVYtFuUw6R+bzc8ITwQlUVFdEQcFhMiuJSlfS+JwEEqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJOgV106; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJOgV106"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6F51C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 05:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720415182;
	bh=XZIp/F1MNasZ54FeogI4FxvGR/6Litch4p8JVM1b2gc=;
	h=To:Subject:From:Date:From;
	b=gJOgV1069Tef2nIrWF9unmK9Zi4YdKZ35tljDAFIdJUv9rywTok8jbTfgv53RGLyd
	 wD8NzeXB36wonpKFihcnIOxwHigrIavBuUzEyjHInsE8HWQLqTlypMhANuaRvDsXKk
	 RRHOZ6z9gvGVar5cNbmqDGQ/o2rmW+IL0RDA24BeZFnhzCnMh6lw9YuVa5JaJYhXQC
	 RenDNLaVPEHk4cd70dHWYPEU1wj0Am6cu4B9gWlyQicP2fAe5BIPhXrkRbsspDsOio
	 59m/mMPUeW9RUzCbIWGNV2FcXpN6Vk5Wvq8xrK1eZyWzRIypxhK0zGXa5iVQwlfFCj
	 eUR/eRDHmYPUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC2F4C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 05:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172041518281.30677.15683852975361716130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71290a3f96db3f95e8927072fdb29dd01a698056a88cbecf4a9216d20ae8b2d6
Date: Mon, 08 Jul 2024 05:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720415182
