Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49256101E6
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733579754; cv=none; b=nFMiwU0i5W5Ag5uZEvn44VjL9ncro2x5/AyJ0u1CyanfBciC5fU/9vfyk6g9/vmqGS3j03Pwjhw+xvNhR7qXJjZ6b6XGpTO/0OfjuFTOPcnM5OQfN69ATpD2m8ayDTiYxNshfPm9KZyqJa2zeti67zhf6qLTa30xQr88GOWnboc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733579754; c=relaxed/simple;
	bh=OIwwhcoejul1B4LQqMwd7S2rh55fF48fvHPYnYkfZkw=;
	h=To:Subject:From:Message-Id:Date; b=QcZkHCtO4A2Xd38tnQPZTVrWWlyml4X0Mj+hn+3RxZpXOTUGs+1Kr7FGgbzUY/ptvhRjSar0GqOfcHz6rSv44V8kE4GkssTiX10auAHmsgkI8ATWk8T0wEB+Y6k9xhqvdZSNlVzFOXHEl3SlSTnACZPyOf12OiYZblnJeqwdXSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/Ryg0vi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/Ryg0vi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96EEC4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733579753;
	bh=OIwwhcoejul1B4LQqMwd7S2rh55fF48fvHPYnYkfZkw=;
	h=To:Subject:From:Date:From;
	b=K/Ryg0via6xH4xtZPG/dDM/e8+lqVQJk8+vyvyGLokXUCGA6BtWzXQR9kRuKH5/T2
	 XUocwUwP5rl8/Y+KS1ybR2UyhNm3mUSpBTLZ4YnXxZaNJ6jjuGI9g/LA6yEksixQk6
	 /ARj9mtDS+6lWgwrIRg74iLTz7lRUEoLaFsqAzJHlzKbs9LNKYztHec7mIoFzHWAWd
	 lTgV9CT86SN73S692jeZO59nuElg4FjOq/HzxG+NcJAAug/+VtFD381dzop3LV7thu
	 zCEKDOPEsRqd/UEZd0uQgIDaZUQt7z8L6tOy38iovKRUwhPcXfhqSBLMXO88rVKaU1
	 ra6QLpY74lHbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C0FE7717D
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173357975359.23609.14724635650585322278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b52f9e1a65ad85387a6898083f7e28d658ae29b46176fe5a80ec265d5050918f
Date: Sat, 07 Dec 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733579753
