Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB7D174EE4
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746251994; cv=none; b=NEOJNjOYQJBxhFRBP9V47ZZL6NMElxDJrJc/ehexRldN50LvmIrQUQfwTrjCCvWbcLEaWFkkdgRbyLi4ozbRevqbqEEGCsxjOeXd76VVUye8LSW1ED2cfGgDnBNKgFIvAiUH1dM0kEpHi9S/mY2x1SFy9Fl7JX6D9pOaov6Jt4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746251994; c=relaxed/simple;
	bh=ILVRJ4RgBEo/P4p+UPNDv++Klp0sUE42oQzMhn51ZRM=;
	h=To:Subject:From:Message-Id:Date; b=UOAL6Snt+cfcP2udLZDRX+cZ8o6R4Cmk/bvMSqWBgwt9gGyMcM0hmPUwzYjObw0YaA9vx/v15WLUslhrBvlcwzdt3zJ8+DnQRiu8w/AZXAKNv7wSaUeWJf3XQt3XjdPYGO1XpiBIVaUlMPSnycNttWIDdVPQPRMuny2jGwhg4HE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TEY/Rxn3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TEY/Rxn3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A661BC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746251993;
	bh=ILVRJ4RgBEo/P4p+UPNDv++Klp0sUE42oQzMhn51ZRM=;
	h=To:Subject:From:Date:From;
	b=TEY/Rxn3LXwQdJPQTqIjF1rmMbj5bybpPHn9P5xMYnTNp9qh95QHjiqoVEalnH6I/
	 pgWRwRrJ/w8WIoUqAbDBAStpPTAcCehyPauj/zvI3Ytw3iw1KMPbzJn9uxbDLOWRSU
	 /r5UgDmLTev/UBHFoM5gQ/ah8Y4ijNJ5X2nPLMlFuNkY+3yZLSy7hpwcTTvDyEHPX9
	 PUpJJ7Hj1D31ie0HknItLNP/4E70LEN+hJftTa4YMSsHXhE3u0GIBHQn51JwQqiXja
	 lYJFcaWbEzQqzL3ZjZJnN/mYPWbZ7enFT0XPnmq0JSfRFzVzP/3ZM7GX9Xy+zj3e/U
	 /wvAfzixEWkxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F37C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174625199357.7794.11510579942645768126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92b4d7d9802c57edcd8bfbdb19aae8b9dc26cb01ac2b3a118819f071d64f67b8
Date: Sat, 03 May 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746251993
