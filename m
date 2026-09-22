Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9579C3FC5B5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790055034; cv=none; b=iD5rAhke9QIt+CjxrbZDHtMyZPgRaT3cg9g4VafV5cMmJO7pE/bld3BmjEZpYHEQT0c3aGZnF91wx2o82hKqPBNUXxhyxFdtmbrepGH55NA5lGzcgDJYImqlH0E0lSV4GUICO4il1ge2z7PRfDL0dRXw0mWgJOzeVHUCrLZdStc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790055034; c=relaxed/simple;
	bh=TsvApkNFasiDzGowFzBjzRj5arZTfhL14LILKCgTuqE=;
	h=To:Subject:From:Message-Id:Date; b=QWrpakA8YFwVxTbdqeNOON4U6L1ruJmlCFA26Ub+qTcGVj5HsK9bxVQy8saJs0pIQo3Yiv89oUbrnTYTYHdiIloWEZTXzykaf4AahTpFB9aBftlc5pejArO40ePx/9H2IoFqrpA9A+XE5+fJfk0fzQkpaH5NpfeTU02QNh5Bkvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5OT90WS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5OT90WS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D21DBC2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790055033;
	bh=TsvApkNFasiDzGowFzBjzRj5arZTfhL14LILKCgTuqE=;
	h=To:Subject:From:Date:From;
	b=L5OT90WSQ4vmaod9UU8VUwLKa6NAAYV58b/UGKEOyl2VnriDsWr55scuQ5fISFASW
	 uDBGw/7LY2K1/Znv8Q5exM3fKA9iqn/pC9DZjD4yAqOG4Eu1AK219Hb8sAv8735b/x
	 uLNs3eMcadqgNQAmhzHroqpKv9WxWJiiQjdO0KOrRQ2hi84hCa4snOsQgcNxLoSPkv
	 WqC10X38oPDfxP2ghTjYQieocFfJKaBQabyKT4Z2hUuafzLBhJ06zkrKQ1bcx1rEru
	 q9khz+cc6DOBVBRY6JEXaG9da7Xx6vlCP9cqXtOkbbRc3ra9R1UiYy+DSsHVfG84Ve
	 1ReM6iJBG5Vqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE79C982FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179005503368.11005.15517085250331452615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 120d926ffbd60f3c657c44ec747d513d71043b1e459434c708b091266918faff
Date: Tue, 22 Sep 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790055033
