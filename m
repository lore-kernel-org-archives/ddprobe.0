Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4DB8248C
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 13:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717250063; cv=none; b=eD7U9vzM0S4lfVnZIU1z13OrWuWSAa6eOVANo9XjaQn/2UyRiHT/3REKJc3RYQvSU44RYZe8X66EZgG613lf427SmD3YMIcz7Ss7Dfg1taGeFxdnohL2x4m5Y2i+87nLIN8HgI+ulxkkLzNf6yE8uhLof0fr50B6ICzaCn0Y2Hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717250063; c=relaxed/simple;
	bh=eCjBMWBa7sooZW7jll2H1o/4ff8771NhzFIrzl6WchI=;
	h=To:Subject:From:Message-Id:Date; b=ewnO8Ee9NBsZq31AQcmgskqD30inA45+BH2FuNXVNffx5EuzftNGoyR6mQrW52sqO1vNd1Vd5QETL6Ju/5hod9+d6yUVJoGBZ/VIdBcpPXe5/X9TCnE0g4KpueDVjNNQD/kNd8Dm3Lp8xfzbLnGKl09M6ruoQg8hbsY5SrIaK78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KHmyfoha; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KHmyfoha"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC67C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 13:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717250062;
	bh=eCjBMWBa7sooZW7jll2H1o/4ff8771NhzFIrzl6WchI=;
	h=To:Subject:From:Date:From;
	b=KHmyfohasFiNULdAbbbx1uNAYsESokChqFC27Zfw2nj4QDM35q4J9zF7qSGw7owgG
	 HMsMEuvbkiOjn1kHvBi28aTnEdpkqoTi1E0za8UNO9gaHDhxS5AwcxTqNbl92t37Cg
	 dxdxW+PbqpuWX0XPLQeT65e7ISkNCp+Jg0OClUspExt8eYdg/HzlI5S7V7lUDg87Hh
	 2ix4EnDgzsu/ONfrNxMYAC685CuccImADd5zoRwWUMJuEAaG7xbuAt1WWjgg9zmrX8
	 95RnQeJAVK6Lf2hbRi54jgA/Tm9L3J9Qja7A2tHsR1KbAgVQ/xEE3+CY09nWOkoA4f
	 aAQae5zAY0DCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6166C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 13:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171725006280.22682.3117542960513109506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1ef051c91e4acb0f7de508c5ba53552396a46cbae3effd4eed70861ac754c85
Date: Sat, 01 Jun 2024 13:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717250062
