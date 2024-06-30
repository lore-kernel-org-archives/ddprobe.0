Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BCBB39855
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 19:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719776063; cv=none; b=gKWuLVcLcJRMgjWgWDWxDxxWj/CT56aC4KONxmAt5Zf4JT13yOrFGRsFmmGFlNMebrJg1ue00pKtCpv237LM0q5HNTsLcTaYghVd8clfeGF0QzIThrudeR1rzCW2uiLNuYe7so7PXWJgAmnv5drjLuY8t+PtTFpphDvbHCdTU38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719776063; c=relaxed/simple;
	bh=Vs9tA0ClR0XarD2LcHUOBv5CemJLIelq4OqEgvcDshg=;
	h=To:Subject:From:Message-Id:Date; b=qaTn5G+KM6N0pvfAG3OJp9zbeK/597BV2d1Uw0Glv1LxzxS5phXhZJlBs6iP/euDjBxI6mm49549LMIiLZupzN+dQsYfLDgCxJ4AEDh7JdX0X3SeSuoH8OMZrob/D2b/nMwH/L1yGaOm7fQ9YxD7swxFYltmutRp0ykLxuu5jpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KgQw5I7F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KgQw5I7F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D78DEC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 19:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719776062;
	bh=Vs9tA0ClR0XarD2LcHUOBv5CemJLIelq4OqEgvcDshg=;
	h=To:Subject:From:Date:From;
	b=KgQw5I7FhUHRe54svSmU/pEcmshNoaul5sfFa7b+ojJwQ2TwkuKWs2QIJMTs5LPoi
	 mAqjbY2UXLAbo5PDofxz8oGeVjsotOQmOMiseAbQjTZe6nVG71jPD5qqH25gPBrl3n
	 lBG/vB+nOeh99qCQwkGB+q9e8qdW+JOolfGWeLUOtzAFkJtie8iwWTWPkyY6L2VCEO
	 sVjJys7zgYhc8tJOYZlkvAddp/xXaF9Kyag8ZQilqBNFjvh41sQUxPbw4SVmxrG6UB
	 CIoW34swqCV4P0WvgzQ2ZW54cDgxAl3BnTcTuXKbo4YyjosGLYORzz92jHFAEMwOF2
	 4jcMltaLnvYbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C14A9C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 19:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171977606278.319.11251091164401640631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 529505a942dd148f2010883ea09956a1c590f9ebdb4e441f0a3b86f23f42bcf8
Date: Sun, 30 Jun 2024 19:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719776062
