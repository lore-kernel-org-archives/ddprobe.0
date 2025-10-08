Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00C161E0B9C
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759919394; cv=none; b=rbeCXcAFb4jf3MFkNJRXCUEUfuSiyvxBErubdCqDNyTK8rtNtdAUEQdS7pN6qEWZQMEYPuYF7np0hIqjyoB+7MCfm3m0KejFqsU6QhjtXCdL86CvYvaSF1l00xFq/Vf8M8lGZD/7KU+FzDUsKyyogLstgQ1hwFTQSzeEGikqUjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759919394; c=relaxed/simple;
	bh=mAbWAA7mI4qmeJdCITtBKEkSnLz3oAylvis0oSt0xNw=;
	h=To:Subject:From:Message-Id:Date; b=Zp+wniy3zeE0wvi1LA6FUBVNlXBdL88pXASep8P/Hwl14rsUM94QHmLdGUeelk1i4xEewSkihBdP7Bovq2vz7SPJWsXp8QLcxgos07bvBnXRkk18pisLjzKDHjjwXFVGR6D7pQZ55QhbRvXW15KZ2ZMn6th8FQ+2IHIB5+amLqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzCfE4mC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzCfE4mC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C356C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759919393;
	bh=mAbWAA7mI4qmeJdCITtBKEkSnLz3oAylvis0oSt0xNw=;
	h=To:Subject:From:Date:From;
	b=qzCfE4mCFCfQBkB4FnDg4gpjK64j5d69m4sMBSH7HCzgzTf5NZHxVkTivDn/qkKey
	 kEAhKpzBoGwbVQWxEUoYgSpo4AkHAvBakOnLKjQcRtvlUo9S+DuNtAApnsHRQFf11q
	 oUc2t+stAqiSOt7Iotav2GJmP1u/wCbgmawaOxLRC6Hdmr3zo7/x8qLwLxWXkFHqTJ
	 fhWT854YFRWMakUIBRkD0cBOxO67Hhp2eLDDr4Qm4/Ktq95BbmilrgZy2VeezzWtf2
	 +69lqm38+yNI7f86LNVY06RCHbTqjw4c07693m1vhA2ZPM+Ow5JEUicBjP4IsHFYsg
	 vZYph3snuubZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4E3CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175991939357.30049.4500679507976135426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85d507cd81e46f591e8d754471024a04be6741c937e903f01ce7d7ffb7250302
Date: Wed, 08 Oct 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759919393
