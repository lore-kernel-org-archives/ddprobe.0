Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C5B23BCE3
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 18:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777745254; cv=none; b=kOrM+E2BxdXDBrLfs03bCjNZ2nQ8Z1uwEFPKyGmen0Xm5fmP9GvVx2XpzVd1NLzoQ7/frepxn1dIqHm7T6YnQ+6A772gziCuVfJGiCHof9dBcDR+B/SR7oLhUv7rExAD+C7DvAOJIMdwsPlEFHGLyiI9q3vgbK9Wox84bnG0fGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777745254; c=relaxed/simple;
	bh=Yk+zlcYvS0PJuaWlW2LKu6Kp3E1Wzt/XBlv04wz1TGM=;
	h=To:Subject:From:Message-Id:Date; b=UqaSGvYsUA8i4CeTlhgH437GzwuyaiztsIZUSV2+PiKolTgqND7z/GXzwmeepqsVNVEucuZAhQVfcmoNzzVh55WzztoOtbnc7+iSUZ6J3B8uT8iQH0swFGDhTyQ1Q013ak+nWo7pTbJgZ61Zfb7dgGoOmE6uel+CuUM5mzFf1U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oyzTOhKG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oyzTOhKG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB6B3C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 18:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777745253;
	bh=Yk+zlcYvS0PJuaWlW2LKu6Kp3E1Wzt/XBlv04wz1TGM=;
	h=To:Subject:From:Date:From;
	b=oyzTOhKGHECFJzkqaRTQDmmeV7OH6hQcdoUpLiub4U4kdFGwPS/XzMOoUrWxnf9Tb
	 7UA8Tv018Z+VwrqyIaNWAPcwRmLjKdLT283xIWt8pO7LDfcxvIYT+qXpDAVhDRWAv6
	 D4ECwH95g7/l+JTsYvIpgCQkmZtXJt7VK8RVpXL/hRsXyx2BX0KCMVGoWtBjLnWwgo
	 e6+JFEhcCZYD00TzX+NXKy+gXB1u90hfAEdla/FTJg0fPB0Ldcq71hnKjnGfLwIZmT
	 U0V8rL5xcvYhfuFxvERqQ23cIqL96Kbx4wSjCKUFhHe9S11J638WpT/mrDJl6FmYDZ
	 p+zKGdIe7OHqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D6FCD3427
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 18:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177774525368.12386.16852434913696492569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50fd0f6b1fb404d7b2a33c6f0541bac6f5845f8978d2b42a642156ebef788522
Date: Sat, 02 May 2026 18:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777745253
