Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133DE341077
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 10:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763720514; cv=none; b=DEtvFnbhANTzDkNcPkV/2a1+F/Wc28mY1qCwnKlpWFMJXiuVxdpCaAJg+fgWajf3MtaJemicnciCFxeIvILudQy42Ci8HQI1xiDWy5HALTVacsvGCU7YPc9NcGMPbPcBdXKg534ctNygohMe6bkZE5iFvdMbfMWptmmNACbio+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763720514; c=relaxed/simple;
	bh=IScW27WJygfzlbq3I5N8KoZ3UE8QJIyuIjHDBLO/puQ=;
	h=To:Subject:From:Message-Id:Date; b=sxA/hQ3e8II0U1a47MpEdDucEEZgY/mIVcIdCJGcP+5HRKEis/3CDDJyyoOn8r+Nw/8UceFSlQubbDq5bfthGFzH95ABEqCXG97nZPXmJ+f4AcXGjA8V22zBn8w2C1mnYXhl8/JgrrF+mU4Gv86ZIDRUseQdzTAXzzkhIKgtZXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TdBH+ybD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TdBH+ybD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4562C116C6
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 10:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763720513;
	bh=IScW27WJygfzlbq3I5N8KoZ3UE8QJIyuIjHDBLO/puQ=;
	h=To:Subject:From:Date:From;
	b=TdBH+ybDjo3iCx6FqOcw17kO/N2hrJyDUPy9FBwK27N3vgCFGOzXUafgpPh6tsItu
	 cWaYdYBVL20WzKjFrs6l7JGNpkd8awEUf8rmhdleKP1UvY9kUrHEuQYnpKwZBc7Rzu
	 yF82y5lLQHcpmra3dp7OaqvOl8z8jj/AmW2tIHfGMHG62DN46TsRFKLuxMCY+FpF2s
	 m5zlYQwFxncgdJ3FVub3NLauWcHHBqbSlEHOcuHnL/MLbnA96BZLkPoCYNRhDEuzTq
	 DuIUX6dSxxiw8gkwqN0hL8PUTeFDo23sQQm1enJM59ekr65KifFv6dKhQtVBzJlhK3
	 mfuG+OJJw/I6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910C0CFA76C
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 10:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176372051358.29098.9261415756716133035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 428c53ca490a77f6bda7fe8a8973516e1933c8fb1e0e56e0320c7cc41dea3878
Date: Fri, 21 Nov 2025 10:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763720513
