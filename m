Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62A26A95B
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 22:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720305983; cv=none; b=YMruMUObjmWCafRWal4iPSh05WmmXOVfBaiF6wBiU1EUpgMnkmt03cRLs+nd+IoSKOMhufEf2200Hj32fRqf9qICeSaCAujVoRvHVv5OATi9630h6DjNjMnfQ9CYYQbVMrEorMA+i89yg1ipSLOVF6k2vVTL2UcF4h3N5PCwZE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720305983; c=relaxed/simple;
	bh=qCzOdvccC9fVs7qb+ff77Dm5PDnC1KqORPzdxosvmBI=;
	h=To:Subject:From:Message-Id:Date; b=MtgHQsFzY7hHVglKZjNuJysx3CS9gBh3jKzO6o2L3K3KpwMkgJHsvd6LjBF4OJ7n/5LNVZJ/dX7iU1PjtfIBxQ7a4hjiWb0PD5ErSW/xpfq3tOL3WHE3MVj6A36Yo8nFQEzAW9ZmGHZSuzd/IdXZ3D709W4i6+XuTCshcjez8VY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbEh7jCg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mbEh7jCg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF9DC2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 22:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720305982;
	bh=qCzOdvccC9fVs7qb+ff77Dm5PDnC1KqORPzdxosvmBI=;
	h=To:Subject:From:Date:From;
	b=mbEh7jCg4c4I4WddPZlf2GlFGeNfvmIF9PPoSsNZ8YCjtyFQMF5rv+ULU37tjeIH1
	 aD+0qkD5AeQJo3kDqwC9pKhkjxjWAAUuaxSPDyv/TbRc6vcQhyVrYtNT6K3CEEK+On
	 eMFw+nONDGqCl6glzxeDhAkwHrS6MwHKZ5NxGh9p5oHHfZnyMtWirUiJ4lG2oBStYS
	 yZBlnpmXYxQcFCGKcyxE76Js17AGLJcNEl3JJGtc1Cnm6aSCkKnPBbO5nAhSTBW3HV
	 v2pmytMotGvscqypNNX5krQ1fzMp7igfljt3mdZ9D2lGulahg+mqX8tmxoAZSMocxb
	 BvqVtehAkVhxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF780C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 22:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172030598276.1027.13776491791168247353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecc2458115a8851651b0f76233c0e5786933b1b27521b11eca407e6eba5ce112
Date: Sat, 06 Jul 2024 22:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720305982
