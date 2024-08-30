Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAF7715C150
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725060953; cv=none; b=o0QublkMmC17c88fviKRx/+hvBYBt1nr8ZVYuo0ha5RhF9nSk43byLKq4OKgIZoWYrEN95Vp8G18ZzNSafZJe98uRBaGShT+cxJ7f3PzIPk2tfKhXeagTWGLI5emqt7hhyPEwq2HsMeiCIOiEF7qEnrm7fpYLxPbIUr4hic470M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725060953; c=relaxed/simple;
	bh=bHvEUccRVNe4hTFni8KSDSKpJQfVDqjvKVV86jkY4SA=;
	h=To:Subject:From:Message-Id:Date; b=iD4TMb4cC23hayC42H4ZAR1Wg+096Qtjgb/bw6W5lrx1Oshy4XSeKJNNKtW2nKQyc51Gm1MftNIwUrAoiEzHy8GCfQ3n8QSqOPIxgtv5TJ2isLEse0kzAC/KNofPN1fLMn3ydOyjgAgFaLy9L5MXFEUTNNVKJZHqBRPAkD62cwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rb1BtfWz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rb1BtfWz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8518C4CEC2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725060953;
	bh=bHvEUccRVNe4hTFni8KSDSKpJQfVDqjvKVV86jkY4SA=;
	h=To:Subject:From:Date:From;
	b=rb1BtfWzxWFrkj6tWZH2MXvreEd5H7Ha8VuaLluIco2qxlifr8TSmre7w8vJvmK89
	 DJ2qGldrnH6o1dZ3+xNd9soAo33HaTSVZEya7XGJDnnqMwx+JbQxaG0FuqbHLVPlQD
	 IXXsEFsElVntqEPn/HUCm4+0R5CGKLfsRajUbU8I4POS28x+fHyO4Jv/apIrV62Q2w
	 7gsZrVk6rtHicT6AJThzRcMsPR/ODTppoN2BZvWCTe4Je+0cPbwR6YPnu37PBfhSoZ
	 y1YWJbCYRLBdMk7J8e7liI/I/8SP5/CFvHOjMiGl1SPhS+tw+bZjyLYysS0eXelAJ4
	 mRwvZVAhsKlZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9933DCA100A
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172506095359.29825.11376568364247320023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5ad6b03e4484425864c5e7afc8142a5699f4f84fa782c5a42d3ea62a290fde1
Date: Fri, 30 Aug 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725060953
