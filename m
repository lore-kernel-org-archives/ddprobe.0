Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BC8264617
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 15:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775315134; cv=none; b=lg6h7DT3UBC+nZSN5BlS13g7wyF2VLug4sje4/yFPTXTrwmJlRcPQjFESN3muWsBzY06PtltbPhf+lM8bgXq6d8i9sIKX76B3nKy36vUNleSE070Y8QYDad5RtMnzBeVQqdsVPk7DfnsqzxzD14W7D8FZgBcI1G780io7PiLQVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775315134; c=relaxed/simple;
	bh=aE/k27gikJjW8/Qy6CKx559BYQMyQk/GDudcimIwwWA=;
	h=To:Subject:From:Message-Id:Date; b=o7ag0JG4ST53ILpcfscuOm7s0tdmJF3cWVkqEY4q5jhrSLsoNjH6tL/I8g9fUhJGTVjLgQrMqSRPD19adxMPkLAwmcNlsg43Crxd8Jzm8Os4PpMS5uEqPrHFAZqLBl9BX61BRJe38LwYsZh2RZXF9XiieEDgl345eV7Fb6JmMAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ESerpu8S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ESerpu8S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3859C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 15:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775315133;
	bh=aE/k27gikJjW8/Qy6CKx559BYQMyQk/GDudcimIwwWA=;
	h=To:Subject:From:Date:From;
	b=ESerpu8SvPtrnqV04NOoKHnPB1iF9/gjlLo/7sYW9l8Heiz1BKAAzOBScYOsbEA80
	 bZjZLL090oJUa/HOIf5Rf9JRuZzkFIMj+B0RseMPZzBG1AUVeIk4COyg5ejabOPGX4
	 aSExUUEl6SAwoaHTIJHACZyR0kH3Lidy1qdtmH0is4Y1HnFK1ZJOtDjm5+EyZkwPXg
	 Nnd7kvrlhyEK1ddAStc4xmJpIGqSAAs38I7dZurJtC/vNEH34y2qXOcvJc8FM1mV26
	 8oUoZ/mmNrOV4FLOtCz8PvzktjrFZZQZ/nxNzPUy26yQISFbxRGuKWtJfisJn81S5c
	 DGSPB+bn0LStQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE53ED73092
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 15:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177531513373.30690.3326040633073178652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b48241b5eb1271ba377a4c1e5bb48d42b97572059e4f6c087389a101a32de0e7
Date: Sat, 04 Apr 2026 15:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775315133
