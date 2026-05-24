Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5A12AD37
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 06:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779603154; cv=none; b=poS09/WDMcAxKULOaT1/gKdLPlv2UitcOTD0sEOsBxzicKMySbU0q01IUjmB/GwRpPppGHHOHEx2AfAwN98EzOjDWyyOKB7jBUOO1RopUYtFfm9MfKBTN1QiiONaYfcUe8cH6vhuZWxwya0NjcqleZFwHspnXHK7E/uW3fFokH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779603154; c=relaxed/simple;
	bh=nAXtjhq1yYSgs06QkO6sGHTEgg9ArcPwHZX+mzLlS10=;
	h=To:Subject:From:Message-Id:Date; b=KQRJBPzcHr0B9naJX0h05btctHfnaEDYcB/QghHVIKjbIlAoeIw6HOihw+piROUkGbusksVvQ91K0ghCqmhAZNKZQ8lcpbvih2MZa0sz3cWuYNrmgzbxba7nzhY8nUUNbmA/7G9dAICjbim6e8sICAi86OmHkhl6q9oUE75MZNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TEwrOA8m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TEwrOA8m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8185C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 06:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779603153;
	bh=nAXtjhq1yYSgs06QkO6sGHTEgg9ArcPwHZX+mzLlS10=;
	h=To:Subject:From:Date:From;
	b=TEwrOA8mJZzQCtwj0TJ3IC/Cf4Tu0Pp9w6fYkALqrhIS/pSq1/grqixqzfRlCv2QD
	 Tmh9XwdGHWp3z6akzvDXs93umMl6xx4N+w8Vsfz+tRXxqMaJXQu3Y4mRwgxJwom95q
	 n9xRRjb9n4LqaojH2fU5i7CECMXeDN7H6tLm5h7lsxRKlXF35SBlZYCD3Pk2w3pvSe
	 mPLzjpLre6bgzOzWkA6w3IbDc9IbRYUdkQEugVdUNFGAelHAUsDS+auHLxR6qKKlet
	 h6Hcr6bPgDDslUSpDLLBknGNlxBYkwMFAs9gLCIilnh1svsyD+x8H4E9FtSc26zzUE
	 jBOe+UDb520dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC53BCD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 06:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177960315368.26160.11565321273127035923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53009c93562ae224e97f9c2c0fbd8e7076aab33e9d4453380291e0a7a88188f9
Date: Sun, 24 May 2026 06:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779603153
