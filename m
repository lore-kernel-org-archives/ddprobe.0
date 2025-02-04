Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C34B23BE
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738633554; cv=none; b=dCSMt7zjYZQQf1pkSQPfsMWQb/hbmZQs+Dsh1gyFnFB25sJYHRy1IA28zhxj5Qjm+Q1Z5V2y3aVzgfDBpa2RjezxTMvU5nyOzScQL8Yy9453pYsAceeEUlM4w2TEumYC3rOIGeHqCgONWOpcqyOHoQNIh/NGTArkfmrUm0kBpKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738633554; c=relaxed/simple;
	bh=mhOR0vcSqm3QtcPg06JcSbm4P9LcTAMncIIGOcdUoa4=;
	h=To:Subject:From:Message-Id:Date; b=nKZEoODEomEPdUJnA9b5Cg70hjwwj7Y2cvPE9eRZmHoC+9vofnn37lS5Zr1me1kv/mjSMwzn258bQ35aEpek+M20JjrRfn7UTRVp4bIGgO+cadYvXvMTw8yvOVWFCd6pDeWhZnJ4Q1Hilg5LGIbQ2ZOwqOJlT+W+GEk4oK1ulds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sdi9oxIa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sdi9oxIa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD05C4CEE0
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738633553;
	bh=mhOR0vcSqm3QtcPg06JcSbm4P9LcTAMncIIGOcdUoa4=;
	h=To:Subject:From:Date:From;
	b=Sdi9oxIaOOekWwuQVGG51VWUXOwnMxhbLNtGHTRbe7pKmGel1vILKCt81O2Wdnhok
	 Gra/0thvA4gsBcF8/XfvxSIULayf7CUnZYtyny7UQnmdt/nuPZoDIWpBUEsjzR2Zd7
	 gIRlPzCnZ1DgqppWagY0n+tzrUU1YQtFAsTgtCOAnM/lDXXfiRgLl05QvBc5OtfdC2
	 KzKwggOvSEV0lRXsXlUSzvxno7HOUpGsezcW77UD+xf0nY2SaZ0tulrcjmbviVoCFF
	 u/mghhW3aHl9Rn7BD1BL10gYkQxnuEwChMIDvHqlKO1TIX+fJL2SiowatIa67RjFBH
	 Q9qgcc/t8PgUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920FDC02192
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173863355357.28079.11156214366413456058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cb94d7922c407f152be8af8eb55a5ca25afa33776dee670075c86bc646b87b8
Date: Tue, 04 Feb 2025 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738633553
