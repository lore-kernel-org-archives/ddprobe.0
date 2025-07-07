Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDF02D8789
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751899794; cv=none; b=tLjzcDFdG1e9ocYa5K/xjvMsUH2YJwpDdWOx1THg06rb2RuFxYLWRMDEet6a09aRZfmwIrzZr8xco+XRdJSO5VIP4PsBwqcVxsn0AwmJuW/96VG4x6VAIuLgXG1LiGWBH/lmDP7FQPBSYCSFj38akPNFD76j/vYPVQlAWy63+M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751899794; c=relaxed/simple;
	bh=RfqBjqubup3vPfv7m6Hf577Q+Q4sVuKb9L6iKz935nU=;
	h=To:Subject:From:Message-Id:Date; b=ZIH2w7xpu6YZvbgOl4T9dpLc26WIf8uyf7uLmBOtXUHmhTMfUELLrSs50vkzBSDg0f5BQokY/4utM2zLV2BSmnth7F8U4IBrZV4uaKTcL3S2zSBWAWQZa02MzzwIYvq6SK4/UwJnVaSGvouYFEdc/FiDdNybwdFbpxK+JgRqZtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fAZ2BKFG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fAZ2BKFG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F195C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751899793;
	bh=RfqBjqubup3vPfv7m6Hf577Q+Q4sVuKb9L6iKz935nU=;
	h=To:Subject:From:Date:From;
	b=fAZ2BKFGy2tCLHYx6LIW4/sGiw7+899FBzclVEyuEDJN7ZR+6ad/uGvb2Ej45ImK5
	 tkgJvUoAgwRiusUsuSH9xoZyIJJcnPabdj5lWz2nRHho+k0C/alhES9fHbdDk88M4H
	 6PCpSU5WwSdfG9tckZEkRJcMLtWgWq/jxxP17GeLOKDDLk+yAi8q41OHEXflqPKWOJ
	 PnbWk4awMcCGDJI0SfQQbqY027rL8EglnVqF+EHx/4Ga2I4SNGdUc3Up1Os+qXfqQo
	 hE7u0bToNFctrdu13XbQrc72YXQQkhhUwePJr6O73SO0P6IJkYGF8vs2SARNazqsIC
	 TSv2Ptw1ECvAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5ADC83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175189979357.16706.6520760533299252491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62a790b1dbdd9e8cf2f1dbd0308fc7dc8b4a0ce5b2e1a8fa139e9f5050da7c12
Date: Mon, 07 Jul 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751899793
