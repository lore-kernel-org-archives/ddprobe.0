Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405E8F4E2
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743565194; cv=none; b=L894axebsjv1vz0waYdH84SQTCy2uWcgyfzW6wTkpjQGiSXwE16KvCX5N9KIWy8Kzt4mG4iCV5LKTt0zfEDO9IpHryEEcfgcVHKcUGAKWNpX0yA68Su38YuaR1Yqb9laE+4OthtvjdqfzZvLl4fuInTpgraGi8upEux9+QYySUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743565194; c=relaxed/simple;
	bh=nzZRaCQdGUHMwfUlwfd8xh7+SOkLX2vMLr7RmIsO/oE=;
	h=To:Subject:From:Message-Id:Date; b=KfjZFG2abgd5qSL1D4a0wRjgexMP36fvCsiuJ5aa6RNQq94yMIAfmgiwaG8wKv7vqzceDHAKo8vmgfknKR8t+du29k1G7b2AM2BnNV3X+tInrsY0MqdFQhChfiubs7uPoHXw2lQzV3KtMS+kVxEEDb/EPeer+W03Kblz1tVW+uE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qM9wYhhn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qM9wYhhn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6541C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743565193;
	bh=nzZRaCQdGUHMwfUlwfd8xh7+SOkLX2vMLr7RmIsO/oE=;
	h=To:Subject:From:Date:From;
	b=qM9wYhhnFQmgy3cv/xpfFEI26+fF5uh8OKvWiekntz3uHHGtr9SAQavi5PLfKvVCN
	 pHhb5Z5gE1Hpp4oDqq2fzMy618+YUxo4LBWnxIg9CcCBBw+SkN9T5ahlOxDenO++Rr
	 zk9eAseO4oJVAye/BzRsD6QQp9lK2bEfOWW7C/GNFsy1j1gpbp3PSmJfRKKURNEBVg
	 yFnUcI/VKqeLXkrPavqiDMml2JvCVxv8Q5aieKWmw72Mj9vEHanSxkLtvxmS9JYPCc
	 fOyJcnHwKE40uhLghTkaDAxQaurjh87h0VVssFRla9bSHIjmW2B5Q0m5MEGRRi/m+u
	 BgKeY8QCeZY8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D52C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174356519359.7028.14437482003683837200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0373deb682ee5b7ca9ab72e57bc629458360773d674e93aabe32e284985c7e4
Date: Wed, 02 Apr 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743565193
