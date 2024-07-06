Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A1335695
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 04:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720240523; cv=none; b=Ej/sJbgVVUV30K0E/AVDbYOTvqyw6jKFDQSj3e2728nnFVBLJWd4wEdP3EC+qtbiabADqd+Lta+20952W32T8KpLevytxChScjQPOQNv9ySOJzPKD5Xf6UW962++4krpruva5XSPYtq04uHwSs/e5QEsV0UaeiRRtKyG6XTUHa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720240523; c=relaxed/simple;
	bh=zPqDgzSpFIM2zghcK5DOMryi5YnUGlTx4z8Mek85RUU=;
	h=To:Subject:From:Message-Id:Date; b=VRSPSaCAUKEkURCnErgZNIovD5JcA7mXRjrWYqa6TE7GCd2JhJ2bpePzP9v+5lU2oJ/Wk3Nip1jNSnKxalLRRUbXton5s0dNXhW/HPJ99EEAYH7P/wv9fW0oOMEAlfFATMdIIPu4AHMpLT4EhpQmcIMfoXnAncB2x2jCFANTYxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZlpXeQPQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZlpXeQPQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC2CEC2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 04:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720240522;
	bh=zPqDgzSpFIM2zghcK5DOMryi5YnUGlTx4z8Mek85RUU=;
	h=To:Subject:From:Date:From;
	b=ZlpXeQPQQ4a3dMXPmcEHROD+wkprtKHLb6YydWVUoiE1qYF2+VjOrS0eoe81x0l0h
	 VbuTnQyiZbdl7cOPyCuZHl+0DujzWnNIFzDTUhbMemFItJ26Eh35cqNMQZOpCLLYBm
	 HLcTbSPAJQApQe+EYbjIomlyK8eSMx84JPLa/FnDT7diqIGTZ3z3p4srjK+EgzxOzn
	 66xsrHK5Dwfk3T1HvqiEXXIqM1cSUzUaH1rNULGl1fpTn8goktg0h2lodsPeEf6h1r
	 yJ8Bsclf7m6QXSSvuDwrD3kGNw8XJXdNld9xJVfEbvfbe5LRNjL3pmKvX5+x2t0E5i
	 p9rPYEd8b3zzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6EC4C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 04:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172024052276.21621.15165166833795545949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80b049ad8a4463e1f52d47e2050cad0027e919361bb6b32b50e3f21c5c7eaa01
Date: Sat, 06 Jul 2024 04:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720240522
