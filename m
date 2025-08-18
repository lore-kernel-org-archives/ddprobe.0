Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269B2286A9
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755487195; cv=none; b=HluF1l09wBCb//GHWi2FIDJRTT/hAwxoZ21MhoEbx/C8WCwx4XCT1i6VYwWhGdpxhQLM3fzMfpYKz1pdpEpj15VKFPczR4viPqCMEBT2NGCo4qscoZPd5IscmB1w304/OaXXY1om4iB8bbhlHDRTV4S4AguGN8M5Fs5Zk+LN1ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755487195; c=relaxed/simple;
	bh=G2Aamih9SpvV9rgr1MkXva3OdywESo1Wc/nUW8rN0c4=;
	h=To:Subject:From:Message-Id:Date; b=B1fpRGfKULRwOpiwfeqbrzagw7FohMd65ogtMKaWZ3GWZ2H1+cUE6VncCDuMeHyBwhZ9z99OwSxI8epatTxtzzkZV6p9GF79cQcA1q5VDIKt/90p+2HTq4zQRZGcCXdcem/5px9nfmqA6RB5DG2a+qCoZay+ve3u5qhK07n7Pz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QEUtT4nz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QEUtT4nz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D97C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755487193;
	bh=G2Aamih9SpvV9rgr1MkXva3OdywESo1Wc/nUW8rN0c4=;
	h=To:Subject:From:Date:From;
	b=QEUtT4nzlgj8V+G4Ek27bWjWuU1zEZA5C7kaFK811PtAr/3TMlaADUN9KJey5Vrhp
	 B/pwrZiyRBhIRTOKg3ke6cztjzXKBRpzYXainb71hEtkr8KLIqQGZRJmS0j0HNe4ky
	 H1brr3OaIwiA0Dfq+beevnh4zJ9xogbagbwWZGYycz4VR96ofPeuzn/cAIgaR+C9sD
	 utCV3EFNdYO11Q8LwHTTfzWhg3zl+YpD402CXMC3POWFg1i5RQJwkU0mPNml179+q5
	 peXGrZUFtE+sUwoMEm5005iFNvXBAP2VUGV4omaLUuEZiwo9DRiyQtJf0Fb4u98q33
	 rPXUAMIq2KS+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9130BCA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175548719357.26080.3368389071930797769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67c76b231afc0e46b4611dba6cffab4214f747f50b123ea6e4fd6f9d8eaa166f
Date: Mon, 18 Aug 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755487193
