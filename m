Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3083E18B12
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754198994; cv=none; b=dXkmYWyFwyrYTjy2xGXTFQ9E690F3pUTvgUMkkKlgqeWFfxhvJDZnOZ+Ygp/fKQy5Cr8aXHRRQCcxttpZwxYgm6q1VCwWqUMTXpXkiYPqLa+0hu6wNWc4Ko6mxhaCK8Vn3gWI/R1fromAxfmdFlH8Y3tbd+NB9lXhpEm0MvRhSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754198994; c=relaxed/simple;
	bh=a9cml5H/Ld9voedBzj7aXFgT9k2FlNK/fWxDt0PGF3w=;
	h=To:Subject:From:Message-Id:Date; b=sRVYtKf5VAPvrtP8U5+HrcO0/qk2QO8k7Gj9AU/HJ3usO3zqqd2irV72XqeiZzN/kHaxgnA0sClk198kTqfTFxCEYvcrATreeOTPsAu7uPyhAshsPBVX6m2bE3k+/M0GgnO0kbA70JvDWUz0ZyxaYxpoipaaG0U6ig9MXCUZkZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMTLgB37; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMTLgB37"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A155BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754198993;
	bh=a9cml5H/Ld9voedBzj7aXFgT9k2FlNK/fWxDt0PGF3w=;
	h=To:Subject:From:Date:From;
	b=jMTLgB37fxeLbvqvGd5+BE7OYYWMdrn2HgwTEYW1PBQHKNItE6ZDYbAQWF4FtXyBJ
	 mRnPaMtiwrv5W6Yf7ZyQGWr44HEpmde+0bPGHl0Yka+vGlomyiRkomPmhzV7ipxP77
	 ZGat9OWqCh7g+ydnyT3U6tgVwF/gFCmGBazgHITIbHepKPrE9pbvugvcakKBrpt22x
	 PEdkwg8rsVxCqSCllEwqQcFJ88mWSgzv0bPnWEWjJFHJpJD6ME038jBdHx/bv7rLJL
	 thZbmAeFsLogvTkmv7TMf7O4QKpIxBMCmryjLAJ1BIX+bnP7kPEgN9Rm0Ss4m98G6F
	 ROD7MDHtFiJeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEDFC87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175419899357.12063.16637059194070406372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 625d7d90c1605c9d04abc69e78c1b3bcd9b5047652921238f7c8cd71eb6805f0
Date: Sun, 03 Aug 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754198993
