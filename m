Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B632C2376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 07:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764314574; cv=none; b=JhkPhPnfiHucyCPmQ5VbnwoR+tv2FKxEIlTxv2fj7A+kuZRfE0UkEP9Zg5dizvwKMI6yzKoLY4SavcAqadEueX8u6YECax8Tmp0wsJ5n4V3FS+j6NFUF2GroHh5I4s3AUJp0/93zDQ6cI+Jsxz82wYk+UV5aJbQ3AqUR7Ha360M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764314574; c=relaxed/simple;
	bh=2jetdq3KwwAiAS24w3rivIM0zwwLjcZp46VJrEz3tPw=;
	h=To:Subject:From:Message-Id:Date; b=ThR8Z+ZzxLox97URtkzax0xhRYmAFMzWU6P4uT5RheSCpm97yh7vcVf2GREiZR1rwL0x7OkSF0yv+8ia/sI/aHzW1lCZ1We8G1vlCZZRaI6XR7p2C6qOdBWouKehcEqgQZ8AXF/Ktl+Uo82IKJkQy6KoaM9Tv9frWQ+Xvrnz3sI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tKUfCllN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tKUfCllN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BE7C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 07:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764314573;
	bh=2jetdq3KwwAiAS24w3rivIM0zwwLjcZp46VJrEz3tPw=;
	h=To:Subject:From:Date:From;
	b=tKUfCllNn5SZBw59MLZ8tR1Jr2pjp4HMfR11g0NZGYbCQzaGNFEeqN7P96bggyEXH
	 yxk2ceTencI2BIKJzaYGLEx1ElTNm0nqv6CKxa79wUAyPAG22YEP5P81JtYSbJf257
	 KOBDVp1QIPeE4A8pXa6QvDCiox3b6adR4hgsqEkxVRCnW1Cz0kMdVrpSYoQEb1hOWk
	 Hhbob8bJx2adtDbQzrUR/j01+kT8FSnSfWzcESiiH5YFsCb7iSw2A5e1iY6WJWrw5G
	 U2aXc1jalLZNxi8eD3N1OAIcXKFo3t+NBL+KAMWGWQZ+J/40Iv29K7PaJPP6NxyQhv
	 drYX24r0c1VJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA56CFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 07:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176431457358.2517.15279199020965769627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52c480ff7ff0ac972281075d33fc4b1e17e2b6fb8fc7721ae9dfccceec097f44
Date: Fri, 28 Nov 2025 07:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764314573
