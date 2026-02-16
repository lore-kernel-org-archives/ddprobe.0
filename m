Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD8F63CB
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771278894; cv=none; b=IYW+yCS63HvSMVCSPMO0P5/oC03sGU1kVP3Bqh9jA4IsT3NocYyEU7m95yEUf4ye/7wTK5ntFesl6J0i21f4t5ufC0rEMX6z92lkPwZpjBU6wdMaLfgbP+rpPGgKu724N5tTunlOhNblqMV8B4AMNMDsHs9CX98BKLK+w0ufRjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771278894; c=relaxed/simple;
	bh=2G2Eq6T2RdaMJYjkxohzn3vpcYR4dvTW3g6XNJ43sXo=;
	h=To:Subject:From:Message-Id:Date; b=MpJV7KUAWUXP48AuRbZULjx1V7k+kw50qlc78wbTgO7vrifsUHj825VIT+iHjNSRODJGRddISOTtO83Z+VM7+KLXzD+16cirUSqI14qeR61Hy4jusejjOhVxLTalc0UsDYigRaGCB8TIxuHJe9zkU+r/seDdDTnkSquOz5rhYYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VGmT/VUB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VGmT/VUB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A1DC116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771278893;
	bh=2G2Eq6T2RdaMJYjkxohzn3vpcYR4dvTW3g6XNJ43sXo=;
	h=To:Subject:From:Date:From;
	b=VGmT/VUBHH3mNWnm8cE/vHgm0Xg3TO+v1FHuTsMkvnqbyGhL+D1PMSdViLU3ka+Ii
	 wIEH06vQt31qfn38ch7N374jtcc/9c0zPcOJi4hM4gU96AgydvhTxDVNAjHqyGUd4n
	 s2zE3Gx4po6zpf69sv2jS8NavB8pm22iTUJvPOPulsfPwAqfIOc8iY5rXPxVvsrTeA
	 DtsQWL4UScOHk2T9CORXWvaWtAv3rQGY/eERkVD/w6C7lZSbXR3WRa20bqwksJW+3c
	 FYw8whOYLx/WZ5JZL9kLJLVd7shjTo6KLCej7YLOnljxNkD96npkQQFFy02M1FPFv5
	 lpBtxRTN+gM6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9792EE83837
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177127889358.3765.7101779155984038450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0780d0ee3143729344d1e88c2024949bf39761c2208dc8a65036caf74cec7c5
Date: Mon, 16 Feb 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771278893
