Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA7D92874FA
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769465633; cv=none; b=jUAyixlLZ+j8JNeLUnC8DW3VHSSHQysMqyUNE2z+iqL//RkxIERmeg9h8W19LbHi6x1PcSiWdpFmXMrL1vRxLE4NmCQxy62wXZZBdPSgzVs+pBJ0zzryRLY6ozNrmQktq4PU0oeXDdzMo7HH15TJDykKCXB7ra7+/6/UZMK1sTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769465633; c=relaxed/simple;
	bh=NWcxtoXQWfQvYCyXKK94S6wfZTbTX7je32SlacM07Dc=;
	h=To:Subject:From:Message-Id:Date; b=kr5RAttlfVVlMEmjEeDfKI0vc84b8OQsLu7dOXjxLCI+UXqZDJmnn/hljZAw7sstvBkm8+UuB+TnlC46Y/kALdKvcyuMVAEwe4M/uaEQojsVFNg9sETM1rQPTy0VEwjDS1isNqrGZ7TAfCje2xUXWgv8lw4alWVNWZFJc+KoZb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TrqHzMGu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TrqHzMGu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4145C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769465633;
	bh=NWcxtoXQWfQvYCyXKK94S6wfZTbTX7je32SlacM07Dc=;
	h=To:Subject:From:Date:From;
	b=TrqHzMGu6PWB2HxxVXNWH18X5uT0ah0gz9yrNOoXsgfJoV0KyzkXMNtgfSL5MgC9K
	 8zJKiXdzF0IeT7yQ3y58oTsNvGK/j8rci6TpZrsxaCX5u8NFbQ5C4v5oJG7ygbw6IG
	 3JbbJ9/74FOAkX7zMLCtDLPdxfPwN4ZJCsLjmmh2GR5UhxwQs/pNDe/jwE30lYQCLH
	 oBK4k31Tb9jowVvytEM1p/Qstr41tBd/zDB8Kz80Jmg/J2PmXp3FCwwRqeN2/4AKub
	 dRWei9XVzN0CvloFjLRHiWNw/pDW9jd9q1DjjT2Hxgj+nnhQCmxC31SY9rjH1CgnOP
	 6IptB5PP/E5GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9168AD1951A
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176946563358.30574.13425270830172368930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 622439227b1cfd24de2f91f46a4535e6fa3a948048932d0a8f438ffc1ece7ba4
Date: Mon, 26 Jan 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769465633
