Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70B841649DF
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 20:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714594943; cv=none; b=KwStLb7zcgUNO0HmEh9DlSfrE8wJO/FCnW05KBMRfJq2euD36m10wh6amXe8lpJMsRRC6lPFchpmQvnA7FHlVL5XB/7JYFlF27HTlUMKsLoWfYVgfb6FkbcFVoWa4uoDgVlu6GAZeVtMJHJMlUL8h7HS0rrOusHYMG0ozdMKGz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714594943; c=relaxed/simple;
	bh=ZmPHtsMGAAY9eKUE60wAjnNRWL7Mt5xAWQYMvoQIH8I=;
	h=To:Subject:From:Message-Id:Date; b=sejDOfH4V/N4stAqNYs/1GMw4AKrfKVXV7KSBeO023RCKICYoU2lLL/7zgaLM4pwj7rywVqQA84N+bnOxjLB7b4igBMdKNVpV4BSTOJEJpsjZK7lJuMjl4oR7FnMDYD9pAV93gIZ1QKOddplHaoIxH4sUqh9o0IlyF8B/cLfajA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hSLPKfbD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hSLPKfbD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFE8FC072AA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 20:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714594943;
	bh=ZmPHtsMGAAY9eKUE60wAjnNRWL7Mt5xAWQYMvoQIH8I=;
	h=To:Subject:From:Date:From;
	b=hSLPKfbDrfTJj+GuadRLzOvGkBjAjgFN7a2y0+fHOow1/d8mA2IfEgtor8DX65LKZ
	 v55Yok78oknv/knczxQqdp07Y4lUeJ4HuZlcW3OpNWrx8a8CVXCYFEMcQbKs29rDLq
	 brpddFsz9+IV87PBplVCJqHF/Q+ueYa4NaIN9E1PhHSSadt4Vh7P7m+XYIL6tvNVJq
	 Ew0Ue/UkcbxmG8z5CYyXI50sghVbW7SWNOQiwBp0vXxJwnXmsGxWZsHX65rvxgj1F9
	 FeZyY9G6Q1gQ64a4e9nY0k7z8CpxurWOIsY2yA2v1+U5gmns+xxu6RC4z/hxMsrm8z
	 AVSu6EZlSLVAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1E56C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 20:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171459494284.20147.15855644153351703441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9a05d6f94c66e24d3d34fee6001acb09362f0866a0fe39c58447383407351f2
Date: Wed, 01 May 2024 20:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714594942
