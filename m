Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466B1218821
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 03:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740541734; cv=none; b=aU21kU3Jy8yg0FNMGqCHjDYzy1k5uq9UjZ7p5jGg41b88DNI5KtwGnq1T/S6Y/f1SNizJrMWs2Sr+frGIj8nIu28TDeUraZQ2LV9UmTzN5tbY1vlerhM1zcGI8qOnnCz8LwCDMAReI683RaWlhyp88EzWZLOlZc5pi/zN5BMFXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740541734; c=relaxed/simple;
	bh=O31hFF+/jqlwLoZ7dIvwpHkdgkjnfiH9X4nGGVnPymo=;
	h=To:Subject:From:Message-Id:Date; b=InN4m3OvYe13lcX5i8Px0s6MUPNuC4i7S6QTVzO88nB+pnXz2Ay7g5aVdN0CA88qn8aRKwykNYGKOkw1+M3812xGPUabRK6drD0n2gws2d8g/coSsQcDviPXhPvD9I5jQEYfWdFh7dxQm0mKmnKq7SGt5GXuQmT7aHwjo2hIPnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pC9T6zAx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pC9T6zAx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AA2C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 03:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740541733;
	bh=O31hFF+/jqlwLoZ7dIvwpHkdgkjnfiH9X4nGGVnPymo=;
	h=To:Subject:From:Date:From;
	b=pC9T6zAxxkDHeYthKTkBYkl0ARzVXn+r23PPG8BnlFTnMN27uw20xYZDx8/nkhswY
	 C2sDniGKpFRXyO30dgFixU7r5JIqTzhZ6WQJgQNSVOIP/5MK93Fub5FV5FA77ly1kb
	 azjpe8/5BE+8MszcELJijDiv8qYvsc12WfeZ4ttILpRGMgsbx0D2nRLoIDpqzZe25M
	 F5zMY1gPOsYiguEfPMQpL459PtrNzcVAeZxK7VDc0pInistTHQ/ScfmpKdRZCqBkyy
	 W16qYjSoEkzy1pHLD+MqyWbJtuMMMbv5PX3NiW3RZXEqiUcoBMlLrtFFM6VSM+LDqy
	 EDk1iW1M2/pMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9683CC021A4
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 03:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174054173360.31396.12793944358762287892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f32eaad6f05dd788153daed3a203abe49718ebe7e0c69c2ada184b620f6d870
Date: Wed, 26 Feb 2025 03:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740541733
