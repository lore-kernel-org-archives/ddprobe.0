Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444898F6C
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 14:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719843323; cv=none; b=CBQgbnkP/PJ3KFs8KhRRpNmGbUJ2Pwc/oYgyi0dIG22fdk5kKInlxVR90OjISR+2M7N3bgmUM2LZZOUkSlDfKx5Jy+MpEHwvpzbnQUcuLbzwD7ugP13VoczkJCG4AU2x+1Frc7sr/7Th3wGMwRxHQNovcyViPO9VAcI+gZd6rE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719843323; c=relaxed/simple;
	bh=gxF/yd+dBZKpQaf6aIfTPU3UL6iu7TjT+2sAwbbUPxs=;
	h=To:Subject:From:Message-Id:Date; b=taqBqT1ChCowSYpKjdmRHLZm807fFlNTUvv20b8kykboGAjbNNLKtQrAeIFtqZW3J1m7ZWkrlNEbifn/dJi7yrzNc5tFq0SVnBJ5wSjX/vgq9oqCetB+V5JfKsEzR0QLAHEHKiIyvcbLxIwJRi2StexIDkX6H8hZYX0DY569EA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZuP4HFVY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZuP4HFVY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB802C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 14:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719843322;
	bh=gxF/yd+dBZKpQaf6aIfTPU3UL6iu7TjT+2sAwbbUPxs=;
	h=To:Subject:From:Date:From;
	b=ZuP4HFVYC0mSlx9ptuCznZfT3cxb1aICAESKPyNwx9rAetJ+ZOzMWgYvLK4w7TCfB
	 Kxq7AYQHYGLcxvk/cR53dF/+ZKjeTdF7+/wcKTb9NUD+c4WX+JRJHwaV+J1cA4rkAZ
	 mOqlUjoxUkQOyshp73laEJ9fia5Sh4uTWHzTQb+VRDKb63ZF1nBdgVBgjMQZh9vQNx
	 vhYea5S77E9nB0bD4ESoSfo4Vkpe6DZHeZXh88ME2MDh62+fLxfdDvpiTyzfIu/Wyv
	 EmuJkxiKxWAn7QPrTIZtYGJwmtZOckoSWGvkzn5KgF6S9sj9sx63ZUpNs0RXKqnAB/
	 twB6BS8Yc63/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C74F8C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 14:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171984332277.1376.7441605253296210646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e0915223c631a2d4686f2f72eb3e3b817260db88fa94d8109ba35d86db04b4a
Date: Mon, 01 Jul 2024 14:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719843322
