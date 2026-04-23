Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FFA8311963
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 07:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776931054; cv=none; b=L7Ph74nt+qQerlkqD3+evet3EoAtKiLPHKn1nuTVyMn5Pf505P79IVFvyrd+ZRPX5kpsyw/3aNOFls4CSy8YD59nazGX0IsDyD+HMrUzxtIO2yMMUv7A1qzUWS6fWvjWZT+TK7v55nobuRCI5UedPI2+fvdYOnrBKeXQod5own8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776931054; c=relaxed/simple;
	bh=jFn54hrAZt73NvEv9KK4n/leMVkY2XuNK0Kvi/uOK6Y=;
	h=To:Subject:From:Message-Id:Date; b=M8BTb772+xqbKQ877A1JDQhHHShgmNg8N8VUVcoM+aEdA0gjaaEdpLB4HQ8VaSin9cT+PDeeff4WikdIjpkbugbdJl6c3TrV9Ub2l9fGeRXjSsAUPgZFUM4Yb5m6V8ZBJA7gF9G6xqE7pNsN+c1t9PMoPqY22yR4y4Gqh/cCpFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tr8oRIxx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tr8oRIxx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC3C3C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 07:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776931053;
	bh=jFn54hrAZt73NvEv9KK4n/leMVkY2XuNK0Kvi/uOK6Y=;
	h=To:Subject:From:Date:From;
	b=tr8oRIxxuZAT1JbQ3HuWZFtbsG5B9+dTDaJBzmM7EtVruNivlQuzOp3/EqX+S/klL
	 DkWp5qJFIPFtWu0M1WGS3treK2dkpuph2ukAl5tGWD5RY9AbCBvRVSt0njKQfg/j+f
	 CIg/e597Xw9zL+NyyRwnwRZdi9YV99hXAibAzLPkQFdyxoyIj50jJpSDeZNFwEgzf+
	 uMP19IEm4rFYX0pIa8W3TQwQjfEg+Zs+cVYRpl1bYial7J0zSGlEXXcg9RzQtz06rE
	 NDSEUwfgvkdGAAUSGeOE5I6gfi4lj+s0N8O4MrXZ3F9ZBZnnsC06fQLYZwVbk7fibm
	 au9Yj9kQpeYlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6FFF99344
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 07:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177693105369.26109.3280427147715172459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8885f59dd5d5c64db18887587a827d90b30616856c620802763dab85ecea195
Date: Thu, 23 Apr 2026 07:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776931053
