Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5D827AC4C
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 01:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781573794; cv=none; b=ndcy4Cy1zs/B5I+rHiwDXzLzxEh3/wQJ3EsB04PwLyzIG9HYL6PQYpQT4pot8fp4o516/sBrT2zN933yTLH5fxsMVtGUBavkaV12307V0kVDzXWQPQCjy3v103Xfb5t6XX643FwTvxPkt24q90RORI1EI54BCn39JXJbyfzUjgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781573794; c=relaxed/simple;
	bh=Wekw+qevcAnedaa7eJ6/yKQagzeyhW0S8VpvpKFWJaM=;
	h=To:Subject:From:Message-Id:Date; b=tFdhfqRcIU0DC0YUIhdDkpK3GTXk3Jacus3gpR+ibEwkAImhy45TriaOA9J9rQ5WwT1gQheiI+qXgeFXixG1L9jz4Tw1qJXU0Tzhl3pejvpx2Z3863/w+EZpu/5Mh/ZZw6903fkZ/1Dh8O4nJ1mkMZmXdFRJ4SsQ3geSWD8YJlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nmvu4yZH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nmvu4yZH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9A21C2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 01:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781573793;
	bh=Wekw+qevcAnedaa7eJ6/yKQagzeyhW0S8VpvpKFWJaM=;
	h=To:Subject:From:Date:From;
	b=nmvu4yZHXQs+Wo9C6fMs3xv6G8pfaPWK14FLLpwPHfjp3dFYfoEdazcI7oSMVcDHc
	 849OVN9X97FUrnEbaiz+HdGFhA4dOzjZHBcjZDWE73huDGOKXPI24Rt29zUcIZyGrK
	 dT6N4GsX6Gam2Tp5eJZikgQDQCs9nS2pVDkgQtmurd+eTVNTJg8yzeeiLsWgGaKy5p
	 0428Tgvp/44gkjDv/Ohb92kaxwz8MiX6ljhuBE7OSi5/uqLiHfyq3epR1z6jbrZMYN
	 nx8lKkHFddpOTi0O/tt0mbonV95isyGS7LkArZUlTq+O20d7qsh5JBKO9bQZyFp8PC
	 rycxbG/sNf9Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD78CD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 01:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178157379373.7977.2333589877623523801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88dc5ac7eb131fd27af9c0cae332af5568fc7718889a43830df8553cd1f40600
Date: Tue, 16 Jun 2026 01:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781573793
