Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DA62209F22
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 11:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741259934; cv=none; b=cSXWoSLuo0bK9MGeF5BhwcA+aNPhj5tJzjuBXfFEC9q40I+Wd/33MBU4xpTGfhy8jZ/cvzG8CKxF6lukHD0iIxkv6W+STZMqJzGSQh7hz74s3vJBeMd7+DAT6KORaFpDcAkNJVJ3wxGG1iYv39EHyaw7oLfQPcaplsaIYVMaLOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741259934; c=relaxed/simple;
	bh=5VFM4V4t6ygi9A+dwe5UzBlobd5bwZsEiy5f0aSOdR8=;
	h=To:Subject:From:Message-Id:Date; b=KWt03lCTgoW3rOXmmRQ0yQqk1nkQrTqw+z90s0fPAOrztr86jyPcypb8e6n4fwtnZ9Uz5fa0oDL5oq9SjUjDezbgOEp/R8u9K8WlMD0HytDQEyZc88pEL9yomVgW03mR4vQ2hxC7nEjdE6yRbcnPZpy283nZyR6OBT9LdZC35b8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WMGxs1mH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WMGxs1mH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB322C4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 11:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741259933;
	bh=5VFM4V4t6ygi9A+dwe5UzBlobd5bwZsEiy5f0aSOdR8=;
	h=To:Subject:From:Date:From;
	b=WMGxs1mH6G7UgMdxCbXzPEmWNlsp4nYllFmkaKZ3fxViBa7ED7suEoK2+3k9beAhw
	 wxQ5IDEz9xsA0gXkkIhyoZmbFHZaSWm3F+L/sEqsRJgklxF/81xaDZN1Iowz3COBmO
	 jEhTWyQ7pEYOqU/Nj0bzACSp/i357fIYjmSlV8P3Lw16qJjFx8lGAm54DWHPtaZ+12
	 RFdYrpexIrKiBsYMe0FJTs4TliB9j/SiAuzGA8mRq2UVxlWCpHn2BTVld9HQ3KoQ0e
	 DsTNrtIW/aPzSLoCsyINA+cwg0pxqfxKj3Oj2ABfnG38z5YWvkvOothDgNttOEpHbf
	 1BlW89hwz4tqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97928C282EC
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 11:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174125993361.16457.6092282185161568585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9f674b8666df5061e62ab9068cbc610bd6cd211e68b4910bdb97ee227fcfa57
Date: Thu, 06 Mar 2025 11:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741259933
