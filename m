Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4160AA94A
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 21:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714252343; cv=none; b=dWn/Jl4c7qx3ODAMdFPtg0YCJIq5dI+NDSvohUgLQGg/SZ7csOKi7+T4/KEKTltCq3eBVQTZjcY1Tpwx0EhODN7/KmvdcgZ5U4+FjURYUC4K+oZbHSNR2TNCmt+YOfMOtsmM+vcPtl9du+mJFkt37sOxF0fXqciAs04wZYurNNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714252343; c=relaxed/simple;
	bh=srjZrTATAoShGg2wUiQcbKD6D6IivdVhhIKlXX/s4/U=;
	h=To:Subject:From:Message-Id:Date; b=qexF6G3SddOOpW4jpBqTsZl9MyQ9tpaMFLNjPU7e56k0pxf+WivVYvahqEwAdl4vYnikusvCfoMsABDpgZHJRYNmIvcPnzJnoaVWJJTy9G4Mx02kPb7Os2ZYnLPWsxpqgUxgemBCPL7he/3L7Gh4Ofw/I/dDUV115mRvGCj1v48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y0UxByh3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y0UxByh3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D78D3C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 21:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714252342;
	bh=srjZrTATAoShGg2wUiQcbKD6D6IivdVhhIKlXX/s4/U=;
	h=To:Subject:From:Date:From;
	b=Y0UxByh3xzH4/mRyVkks1ZIHgLJZqat66X2JITuviilahci022YfpCcp0NJu2nvGV
	 ABCc3wjED8AgkvRbJx+eBr8wlYmKictISnycTyp5XNce06sxnZ9hnQuyrhB2gXlpNu
	 oKMHWpPZn/JpGxQcJJrqK1HriAvfd2SPjcSMpLIkM7W+7k6JsQh+BYfWxFJHtFqzgd
	 26Rb0Ep2iKLqKRjLbmn3oZHeC++iguV3AepECp1woF2a97vJEf/z5Jkmmy+SQPD949
	 D84VbVyEDTzA6PDapA/6rtTxMW7EdfqqKD5SSkf5T4/+MITXlofejKom8NYGeG1yDm
	 GaPSzvil5YELw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4008C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 21:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171425234276.23534.8513571139097777569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adc5e6f0c8e0c77c75bc0e482eb92eaa83920aeded060347baf445e6609afed0
Date: Sat, 27 Apr 2024 21:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714252342
