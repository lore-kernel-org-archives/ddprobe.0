Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF8923D7E6
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766726034; cv=none; b=ArN9bRjMi7W6BsULsKstaqji9kjBRxwm8iASX2WsmfcJ+7ibDNAJc/l/jjmmDlTZqFsa6MlEcUPs6M1mF4GOH6W85hymgRVlzEAwq95QJ/J5lj+JEyRByd/SvsssmhoI+bI/znCUsWfNVCyH9ASY3mqQYQ/HCldK5BHg47gT77s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766726034; c=relaxed/simple;
	bh=n6/DSjmqDXrxxyPgcy57xChGQfrk0nKoG8Zik53s6eY=;
	h=To:Subject:From:Message-Id:Date; b=BtaibpItfKMFVHtxkD06SNekGYzRTG7SES3zSPfcs9QwhtMk7LLFLCqV0664Li/4YEJl9F2COfnC4QwfLiqTMcNSAkYqE35rgaJ0P5KN8IOnJuGHMDYwDPwtf7pDbLn4GKEfXwbo0b/D+/++gD8tvlOwn7X5DVg00OX7CWWRICM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DYEvwGNM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DYEvwGNM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B05DFC116C6
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766726033;
	bh=n6/DSjmqDXrxxyPgcy57xChGQfrk0nKoG8Zik53s6eY=;
	h=To:Subject:From:Date:From;
	b=DYEvwGNMU0fijZ9APwl8T5XQXHNy6cpV5RKhHboNAJChcSsVxavUh7F58DXc/FY1+
	 VHXqXsBplIFIWSQc0ug+F0w4TbaKr4hHZjcIqWuuUYsFyicEeVZrvK/BjBjsUTCZlY
	 BOveXI7y8CS/8nHoU3ghX8G5r3KV2m+LySfyrluvkVZjeowGEYFSXUs/hNEUNfzE7l
	 DrrSRmeCDbYEV5Q56LjG4vYB7Z9sEFV7aD9a6aCqnn5lmViXq53OE+lzq28nQzz1Ww
	 0WHMPXOEtrAEoRaLxsn0OldPXJ4DO4ILaKrvfMndJ/g0laQODs8UKD/YLtYEgAwfED
	 O3IH9p+cR6cHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D3CAE8FDA0
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176672603360.7750.1264362970901234352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95e521db8ca0651706c5569a0635f1469fe0cb03f99cf9866eea5b3425b7dc72
Date: Fri, 26 Dec 2025 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766726033
