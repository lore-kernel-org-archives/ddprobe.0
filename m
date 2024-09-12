Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103BD176FCF
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726152954; cv=none; b=P+p028WcAT/fIBnhM/0gaQZwVdu1mumOu7F6kOPpCbSAlZm3ILh1NcE39YG9qXwAdpHycjBsIkOofW82QhxZhWVibGOp1AyaOIxbeS2dFLfnn5KiALfn9KbW1uJ6Wkrp1oj4l6UjKirw/p5U8Utd8gX+vUMIq0NiKmT+LHM31PE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726152954; c=relaxed/simple;
	bh=oN241qE4ECwzE6sT6LBz9B0WMFZSUCjCsa5Cd1z1vxU=;
	h=To:Subject:From:Message-Id:Date; b=Rt09qjbW+6PJtKebws5zXwYOue6e0yTqhqc6sR0R73UmKwd03ftIj53AD8d149a65hcioAZfAHgVcHQKCcD3ZfrXYSkRankxjBBEHEpaHhCkIN3VyHYivB0tAocKReq9e2cgla/dFHp0WDVCIgZILS8Y+tAVw0OIF3AgzWpjdMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=COPgoDsA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="COPgoDsA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D3BC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726152953;
	bh=oN241qE4ECwzE6sT6LBz9B0WMFZSUCjCsa5Cd1z1vxU=;
	h=To:Subject:From:Date:From;
	b=COPgoDsASDfeVZ7a6fEaHE03fjc1150nIv+NWF7Wgv3F6L9XXOC8o+vDaX4mR6T03
	 0chJtXFwQnci7AONxEJ+Zq9lCtsoP/JfQhmRd2ySoxBEFcQXis1lBwcsBQnl3PJzoO
	 /eX/uFDU9Zp0C+zC2/Pek0hLuzPGMVFVmCyBEEzOh1KZqHW08zNa7sInNpjK72Idbz
	 xww2OHq8rmI0++gYB1ZEXyTQVQDY3RUgE5NGdJtnVe1tvTc6yTvZuKLMUwmTSPfvJd
	 eDZKZ2rXTc0TTSEUKeaqBMe/hcVjnztACfrpnQLjk549l/jocxQR9QRhn3i4yUU4wD
	 WyNjGylSNVKSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B4BEED60D
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172615295360.5569.3878248888466903408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3e2c348ba500dd370df3af00c2a399e910632c2e6e5b96c2368a63f60d3553e
Date: Thu, 12 Sep 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726152953
