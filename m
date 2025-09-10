Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C815930F81F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757539193; cv=none; b=Wgnzk6PMB2S0V2aYHQwFXhTx9PEDtSr5kT8p8dzFYLxP6iRjyvOVfIH03dDnE3oEf01LSFs2T/cP3mK6E5Kdo/n46yXASKnWWNsdpynB/Wy/92YarQRjTX8dMAItEUrEZmYn1+a/qNIZyohGeHj38j89T7bw05+ppNhQsn/St28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757539193; c=relaxed/simple;
	bh=tLTAECycBLcGa26XWrnhpft/cHYEOTtOaPKf/tU1y+o=;
	h=To:Subject:From:Message-Id:Date; b=pOc5joevHpffkLwhb1imxfjyZKHxLkiS19ZOeq4AMfrcTM5tWfotoFg6pBSFt7jqAXSeKN85hkRU//mgEPUupSnYZ8ULl0cCgAuLUPASHAsI3a5dLEJqQGVN7M1KvBc7dh8Tjt2UBC/dqEsrGJ68jOBu42qWspEWCAeNm3+BPPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GjMweGF1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GjMweGF1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D9CC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757539193;
	bh=tLTAECycBLcGa26XWrnhpft/cHYEOTtOaPKf/tU1y+o=;
	h=To:Subject:From:Date:From;
	b=GjMweGF1TeirJaTa8tjIRHjB5lzO6ikDp7q88C9hWmWBEmKh8XRgbq03QUSZCHzC1
	 rMaS3zCo8LzaDlDefjmK6maPrKmGJuYH+w/ynMSUZa3eRNVMesixqR+NYZuBcdn2lO
	 qVzzaHtNGsnFuRAlbL+TLdTeE4aQc0Wa7whWh3xF25JsDnDdljrW1jXjBYmvczbMHE
	 YjXML5HCHMNe7ZUCJsk0We53hPJ4c4cygW+4YBgKmV8mSQlAWboBWGWK3EF0EJSyYI
	 /b2ZUHKi901GywCX4Mn05cs2C8ze1tz3JUX4f71plsIRY6xylExxRZzOAKLtIs5fh8
	 4bblSyO4ggt4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E7CCA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175753919358.26641.11642086789392045432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be8a5ad24e931ca0881ba074e697ae98ca8e806273e780d31b927357c0ccf2be
Date: Wed, 10 Sep 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757539193
