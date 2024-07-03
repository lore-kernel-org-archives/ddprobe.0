Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B76E25760
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 22:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720045523; cv=none; b=hmT/Q1wt7dFWJVGl70x9x8+M5N4HCwELslRmM9JSmN4YBeD+MT1RDvt/L6ZEm2QpmyeU9zMMbgskYDwsna4z166rBpThoqhkFzMXMrcpE7xIgI3afijZjNS9FIFRljv0EKg8Lajsj3mXBgxMLxgclrAPTkRU9BP2x8LsQ2waVpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720045523; c=relaxed/simple;
	bh=K90l6Uqm0LuF/2c9NmB93luclrIg1dj9AsCN9wBJ18k=;
	h=To:Subject:From:Message-Id:Date; b=MYWRs+/RRrBYNllx5S1tawzFnttFoZCJhfuktykzmmwYm2/qJ3nZVmtsXX51UxbYs8xPXMiFNdAbfxfs0cPLi5CpBrf047nM5MSCDqjd8VH5QA8Yv2zd2k+CoDYocL/xO5zj625R3j3jLaYhNPIqGE/5oAm8R2tdy3gWuBh92XU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n0FSyqML; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n0FSyqML"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DABBBC2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 22:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720045522;
	bh=K90l6Uqm0LuF/2c9NmB93luclrIg1dj9AsCN9wBJ18k=;
	h=To:Subject:From:Date:From;
	b=n0FSyqMLnngTan7CXfvfRq1jb2cTzbcVNL5baN3UkN1mddk6qYgWNj91ZCU82W28o
	 OEYZyJI/er+YNrvPjDc1N34/VnSID6d7mc+btdB+J41IajTZ2QrtlO+DtiLpPUhoag
	 dlfX/yOiA2C3LS5Pyq8g+eTEuI3m6NZuju56aZ7kuhCUIQyST9RLSFRJNjXXx7rowH
	 AqOhRjUyk2fYIzjfoDs+u0CdRhmJD9PrAamKLmkwdYT5mfksH/yHHQVylBdaSErivA
	 QrxqZNbosEagd7ReIKpPfVFqOKG91foJZ2CfE3hA3lCHofeLRLPYhcMNRvxsJVngZw
	 +eG0QuEHka7vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6ECCC31D97
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 22:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172004552277.12995.1503292307233508078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78df88b58878f6d9d1a608771ea7179de8cf010da8dbcd74ea1995796134ae87
Date: Wed, 03 Jul 2024 22:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720045522
