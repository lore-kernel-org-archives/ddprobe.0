Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FBAF17B402
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743242395; cv=none; b=DcTJh5CCo/9C8W4d4wCYRP6+87CgCSZhYLnnQ8EqoDlICWsBTU4zwo8gW7utA2uwqMynMe62DcrtDMYkDmtUOahABw11NfTJKe9zubuc7EIJrjmjHP+h7DO7N9QddDCe133Y11GqhMZ9xKUJdwYrY8FCyC1zFbxAdDtY4udqsUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743242395; c=relaxed/simple;
	bh=P5cspWY362mfViALwxpMl01Ggq9a5QDRmkjWMdLhu9Q=;
	h=To:Subject:From:Message-Id:Date; b=QD7ry468ZW5RVZ5pOmidJo+zruuDEicFtN4+0DZQztLon0XoLPUHTJPH47cmF74/wYiyLx2s0bG7ydGwkCYhsm2+DhrSO+sbw6dF3176EhMqsNiSJ+SPUHvLvswEkUDbgH9aRfAe+C0MJfFKqAG0s7yXAw9eqhBcWmEsYxzP5Vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kVbg5wWZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kVbg5wWZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6397C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743242393;
	bh=P5cspWY362mfViALwxpMl01Ggq9a5QDRmkjWMdLhu9Q=;
	h=To:Subject:From:Date:From;
	b=kVbg5wWZewhHwDkYTGBUvFDkZ9xeubMDTIDhWGKkGjBwoPFX9czHuucsBRRJm78bW
	 z0fRcY7l705AGSE1pzzAul9BeYP282E6MUcdANipSpkH4+zdqvy4461ZgUDH4x+44c
	 TXbPzhdTdHhpPA28tFINhNSm7iSBJs6dD9j9XUZsH1kjUazZVk8mQse6xA1OirCgUR
	 FIVbqsXrAT1HC/9kBHgExYlUJ9T1awmnMdSupoTF9K5GuYYMhOEoYLPzMEcrbQ5y07
	 gZfS2ySySjNxmwIsJ4SqsJqi/fbCZ+aeomfC4hm9nAsTVZeIMdpDwxAo6MAC15R4SN
	 0fzYbUpBE3plA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A11E0C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174324239360.29658.14059410852931968601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 956cc3b0a51c4749374d96cd53bb7a57ce075dd270eb327d603e9a4ec90a1152
Date: Sat, 29 Mar 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743242393
