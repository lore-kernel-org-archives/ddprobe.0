Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A2127B51D
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745323794; cv=none; b=bKzlfSIYEzrAWmMYHLbjPxv7TCd5j4h2l3dMumgssDss+bIONam6WRkajpepDKxBDGlY301gVzL06U9dmxG5Amw7doFZxBxir4Ja6NXlisu8YNe5SQmu3EO9vozTzx0CrtT2B4b88iSgKFUEeCZGorwrgUsYp35eL2BoqlLoGzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745323794; c=relaxed/simple;
	bh=a+t9ZBFs8um2NGkMyRi3OTkQqFYToSup0En1BLxE7dI=;
	h=To:Subject:From:Message-Id:Date; b=Cc3idnvgs+QJ0xy/JscnBw9eHoz0sy/YovOyqidTUJFmf9Wk9puL/LNzOLFCwQ7da6I7XJsa590FMKH7utXVR1S97XuvmwziINmynzZgmDFAqRpijS6YYUUkEePdktkJ/I1EKtZcMEwNXIqWYtzFduZOJUYB3JLczlmPEcHsq7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UE3kqFzA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UE3kqFzA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24EDC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745323793;
	bh=a+t9ZBFs8um2NGkMyRi3OTkQqFYToSup0En1BLxE7dI=;
	h=To:Subject:From:Date:From;
	b=UE3kqFzA9sEOL0XjlpEQvIaWhoxwQAYnbc76oEH8rq5ljhKyVf6PYOD0QnYoAmUXH
	 eh7b1Ep44TvEVk8lGIJTTzzQzOMU540m5wrLdZxTM/cEBeMJvaioRIa96LYtqxlLo0
	 pSbl2L8djMkjc0Sjl/uyWWAHJk6Wm2GfI0fqeXCGi6cNTwdtI2S6yjZ5UVIzrCXOZT
	 wHMiglum8dgkuZxOKr3UJuwoTNXrWD+p3dkuY4iGzI4C6pT5wjfA7BepID+TQa4zYS
	 XCOt8kg96yXymp1E5ZCfhnwCel7VjSRhJKlN3JxPGdyl98ykBn7Wlfpm2W5N0Tsffv
	 jcU4tLTzknmgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A2FC369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174532379359.28741.5061147291393063640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91353d7b1b3f9f4d48df5025a66a4812a7313fab99ad59438dbf014751f040e1
Date: Tue, 22 Apr 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745323793
