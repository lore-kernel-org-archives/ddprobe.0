Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356F630F92E
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785759034; cv=none; b=ca2dRwuJRUBGKuW8+mo+MnF778VYGfzVi8vHgjj9f3kAK0WPTVRR4m2m4nRo3SucrWjEVlHsVIRmGJOfrZnB5tloP0Wcrp1kCNRIwXpLzZW6n2Q+6AVlDHfUB/Jw6of3u0ad4QTteVPFj9DZXFHntfkeUE8xDoxfwZi2DFXNC8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785759034; c=relaxed/simple;
	bh=D2GtFJR6edsQPliABxhf3HssJvXYJxfzpap583LyLf4=;
	h=To:Subject:From:Message-Id:Date; b=aNUkmL1MAQ7taHBgRdtrRGoDKvU9JzDIRIQnp+GQ5rrZmbZ1VxNPZdOkRVfFFzouLfW7p5QW0NFBTnaYpwg9IoID8fSb3qN4LaCUBMZZ2FmojAhxV6AdF0kg6abP682UI1UACn6VLwhERDUEJjLebDtsdMajChFxGwb7fDEQNeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=frQDvqfp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="frQDvqfp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE102C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785759033;
	bh=D2GtFJR6edsQPliABxhf3HssJvXYJxfzpap583LyLf4=;
	h=To:Subject:From:Date:From;
	b=frQDvqfpY85v1SWZ231rb3Qt6bCy2213/TV2BjjpxsoI636FMj0AV3dEacNjif/ga
	 GSAbmH26jXG59S9/wsSAQaes0739wcn07RnkXC0jU/TUNRLxQt08Z/aS2MR94m+7sm
	 PJpY6I8uBWqHQ4g6SofHUeWDQearLvFUVpxJ+YBhh92qbUtKf2K5dPkNegx5OYZNZM
	 lqMRYrO/45SxDlXMxoUmGyuVCRaMjSpyxJZVN4tay3om+wv+bsSQ06UkT0YDLlpS1b
	 EVYvqWgAvQSlu/I8oi9VlEhHwoRNlZCzoNxjbsJglH7jCb0D8gXdbZ+5eyIq88Muea
	 V6r3aKQ6G4D9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6231C55184
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178575903372.21012.17006641178913762218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49dc9f018279960d4e4931aba1ab5ffb2ad44bb6d9201ccc6531d8a30c967844
Date: Mon, 03 Aug 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785759033
