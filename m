Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F03AE3E8696
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 10:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778150254; cv=none; b=o4yZLHauOznXbDe0f+UBa35aFSbMYRUA92w6fMx5lx43hKWC1/bOQ9BTeQAGobNbJrLpCkB9CxJ/rtlPhlIKhXRjbsB9qq7lLE/ZxhuLVLnUE46sAqVJiUzpTfRiQRTnxcxE/O9JzQ3qrdPerzoVxOifNh2Q9f3rQqOHNcVLRu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778150254; c=relaxed/simple;
	bh=AhPdEIXroJJrRo7u1uNLwmhmgvSYZBalbagpkcaDteE=;
	h=To:Subject:From:Message-Id:Date; b=PtlXTt0QDUHr+z9QZgSdL9u0nHBieAPZG+32LjcNnmrJNTVsNgqVzov5wBYAsu6RHBHZnTbL0P1pFHl3y1Ml9ieRwkcDuBmfTZhik9qnQTWKUsobffW8cHdZRwDQ9ld2kO4EJvxQighMjkRQJnQr1oo/YggTcKk5YSlbS36U7fU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZmEXvABS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZmEXvABS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C95CAC2BCC4
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778150253;
	bh=AhPdEIXroJJrRo7u1uNLwmhmgvSYZBalbagpkcaDteE=;
	h=To:Subject:From:Date:From;
	b=ZmEXvABS9kIKvSyaQJ3hHW+UZUFWH2wu8tvAYWQE6hj7rgIkEl8W1F1A+oaEwnKy+
	 Ghm7tjfFzKCvIE/ErLRcBAOp9JoP/jedUZqX62T9Zut7KqqLSUv1xyk9w2gKVGieGg
	 xwG9m9tcheuiaPLhCI/sPZLbDOl+vHif3NFHBb6kt5mVMkXPEFBnzvZhUiN+Hbaw0u
	 FO7DEdFDqMh55vDBFFTwrNo+4LoYtBGYs8+DpnpWshkNJJDe1nntXBjtLiNVXZ84oG
	 IfdqInYiqlWNCkg1mmZy38HHhhd9ZhxP4qhFGqL+GkvBLwkyWXxc+05tt506j6mAH3
	 5W7i1c9SZNi+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B584ECD3442
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 10:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177815025372.21862.9357383412393859648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3c1c02e77888fc2434e68361dd3f3a33a4447540a2dc2f361018a853f514894
Date: Thu, 07 May 2026 10:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778150253
