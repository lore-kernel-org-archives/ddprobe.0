Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3659542BC3C
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 21:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784063314; cv=none; b=Vgl7DFZ5kq++s1JwqCJYnNQnk07IITDSjlj1eb5mWjmrfjp+UrwyqreG1+QZTXsbtgyoRwTBqNtdpBPmk+Uh0366sQEFTvIc/bw9rB+n7h4FL3lJBmclJNl45eQoetZD+X6g0cFG6vL4t3W6d5HniSV0Xzo1o7R6xkyWwlc2wqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784063314; c=relaxed/simple;
	bh=7nJopCXTezId5K58caQQlGPnZau2e1EUEuh++s3sadk=;
	h=To:Subject:From:Message-Id:Date; b=l5izj+syNfkfrHxw3htvAnk4UNb51I+5KJACkSC/b+UOyKZsZpcQG//9wQQo18PRWeElQFEYDFUca7COQFYeEUkHYc6IPxzhS9ZGn+Fnjo2Zi8l3194flEcAkM9HUc6PBhi6F4DssKwO4W8O6TMt1N8k9FvJcQqRLMkIBENdYgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AL0r46L7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AL0r46L7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9895C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 21:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784063313;
	bh=7nJopCXTezId5K58caQQlGPnZau2e1EUEuh++s3sadk=;
	h=To:Subject:From:Date:From;
	b=AL0r46L72cY0jNy4vrGVGXmIyFNAnZXXjAOEx4PpAiFpmiO4Kcn3d8nLe2P41OeUa
	 VenrMW95aP1u2oeYTca5sWhCowCzv2xR+cUUFPItwwJudotaRy0+rnZ9vbEIPdLBr4
	 ien1guJu1WHuxQqrOg3yaMOjrJKz9mnItHrjjsETVuv+A2XKpJLAAIOucOTh5Y03uP
	 bpXeRMkshwsN8XcvTPFZxOW7cwJGvIwxIY+/ac+9KFxlgzWrxpVGkbOCAyxoFWmxk7
	 SZLtIi99btLZa/vr7Pk+wv5Ewv2mw8tfBULEnodtLTyDlXJXW5v18gpNwF6YoQZlog
	 33qT0IrPsC6aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DCFC43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 21:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178406331371.24661.10524610228691850849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 477cd48b5254e0a52b3e6d1d4de6219e22c98f9036a6338188d293625773c071
Date: Tue, 14 Jul 2026 21:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784063313
