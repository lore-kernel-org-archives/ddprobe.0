Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114C11E521E
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757866195; cv=none; b=lzlQNhFWq15fnVCH+Pg7QzjEp3Mo/SSAnqXcKdnFgusocj5dPAAoR8uPbzTZ3GOH8Qccr1hahrK3e/2v98sDY4GPAm6DYA7fQWmBxZmIGEaSGy5BPbtToskqr7+TK6cHoIIzauW8yaQ2mToolMrfMf2pKEqkRO6wG+qnljADA+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757866195; c=relaxed/simple;
	bh=KF3de9r+OiNIpdb7K8BzGPouBobLpC3ubbM5ZKJjZu0=;
	h=To:Subject:From:Message-Id:Date; b=nxBSjkwZAcLPteb7QEv1+waTaYesY45cVHzMfUdefAADX1rILsKjo12mwBjHJ0Hq1rs/803tRpAJz5DULdQ2XkVFj3Sc78RYDFfGdKtUZk1ydUlDqUY3qeORclLwz+DxaR+a4KMRc9+3xeoNHU4gU+cj9nYMBh/PiF20v0rQu5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GIZllYYy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GIZllYYy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F01C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757866193;
	bh=KF3de9r+OiNIpdb7K8BzGPouBobLpC3ubbM5ZKJjZu0=;
	h=To:Subject:From:Date:From;
	b=GIZllYYy0i8dy6g9Ujoka7Zt8806Rku5vhTO8heVX1h8/WkTtMVKCqx1wpN86FxqN
	 kYfcHgJE8azikNCSXt0a1uUxUU05dy8hOcRXxpkw3Yz6PZ73vRqfWETctIEwNG8Ku1
	 fDWnb159YeKR+pKDQXwad9hPEU/awjKZ6PdI34VZBM+lDkWXoFlX0mBBP8cC80eLbe
	 PNd3ZJbs0KzZUicxxnRtxgG9+TnWYaVrf7j3TlmLp00KY3DRaO9vdM+AsUNF0EfoqO
	 bPMeM7Kliq2UZhFFGWKN55HkFkCsD/cFmM9VU42+n5FYkIM4BZ1lZnP58/IFfLkZs3
	 kQuQEm6eiMXNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964EECA0EE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175786619358.26474.9128430202252533027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dce7be0f7f88408da005e0743b9cf6e159a686eb50342b5f686aa9d6b2bd7e59
Date: Sun, 14 Sep 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757866193
