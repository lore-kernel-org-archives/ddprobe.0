Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5D77F513
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 08:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764750773; cv=none; b=rutSw+aWp9XtYWMoqxummhiHCi3nsGp8iklEbiejHUqeaIJ4JlUZ2VBHekIStVJ/3u+2hr/OQYQz43md2ncL4/B97c/iBM/gtE/T7Zelnu9pVBerx4P41/8VUKo+HffmROjAbwpe9x7g9kiCEl+tVgxTga4z/0tzu+H3DhBKBqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764750773; c=relaxed/simple;
	bh=w1UPGh9o/JPuv8Z0yn3pkxQ9/WTUgLaUZ57uL00KuHg=;
	h=To:Subject:From:Message-Id:Date; b=TgsUU7Ii4LZ9D9inYQlpVJAmT+k2P0ohFtNBGQDvLgLj90MdokciC1SRyw2WhGOERQvIhtpyfXYSPB0wM1dduEPBc/I+0z0wG8/1TYy7r5PiCMNx4oYJPpPcxln1ZKEegfpX62/qGH462kHVPA3U02e3wJ5n65JbvkmgK8b6P3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRVsxr5c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRVsxr5c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47A0C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 08:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764750773;
	bh=w1UPGh9o/JPuv8Z0yn3pkxQ9/WTUgLaUZ57uL00KuHg=;
	h=To:Subject:From:Date:From;
	b=mRVsxr5cCBsHbUrynnQiE6Znzii5YEhoh609rVnMY+IqJz5iCWCze7WraZtwFPmdq
	 Z6GAVfsOUo4t2a8oVkANLvwUc9AmWnAoq4JCXQNZnJkYMRQINpJSlarpKEUjpPsz0M
	 Y4DHA7WWpqiUJnul49B+qRHwDji9b5r8RZVjYyB+NBdd8fw4mz+04zkC77r4EHjQSH
	 wyJOrLXF0zAtu4oUrXWwdck1cwxVnTdKJm6kbjIlNelM/igYhQuTAh/tHb602hs8F8
	 Uf/yjqyna4h56pScM5bBMTrQ43Dxm78Vdy6BCLRuURs01LpoHMSvT7JnnPljkgOXfI
	 eWxgw2VxFyS6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94018D1266D
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 08:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176475077359.8242.16882275695363316271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7edf6a029000062c35635e8f23d30c13de4cb42a7d17a2120df71e2f13080db6
Date: Wed, 03 Dec 2025 08:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764750773
