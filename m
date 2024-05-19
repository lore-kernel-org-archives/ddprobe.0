Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C3E210940
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 05:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716097943; cv=none; b=PQjFs8AW2dTBDwo1oYZdYD9OPvmEoMYc+MExYavGs50dokek7ieizCwoJk+Tm/rxj78D3WJ+BZ7hXmaKkBx99meXXoMFb+QyFjZZvf0VYathMkn5cWWD0MmuS4cGIvJFtuNHykGug27PqbVTB9SmC1/p2WJG02qgVkZqS7eHnaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716097943; c=relaxed/simple;
	bh=+cLMWEPsMwJYD0Hb31MiE002HxfXGijvqS7BxOWoDuw=;
	h=To:Subject:From:Message-Id:Date; b=S1LUznqi4LKucu6/9tiu5V8j1NhiUN+Li02u/B146z2yOMS6XTYPlt7za3TWnKMXYXR+x93ZqzblI/Rq91p1BIrOjDH1ePqK/Kt+3Qam7TzAu+uMYWqWTgnSTDVg9ReVw3Cz6tJ6r1PMo94ew+ytZGpjE6IbrxSooKp/TOcnUho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ppmNKGqw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ppmNKGqw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6C72C32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 05:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716097942;
	bh=+cLMWEPsMwJYD0Hb31MiE002HxfXGijvqS7BxOWoDuw=;
	h=To:Subject:From:Date:From;
	b=ppmNKGqwSo2uBpQfsqn8HQLb7HyrI4+H76QDBl5vLuTA6lZ1V1/iomntyRkdEUbLx
	 IPPnFDA5xnrbz2V49KTPNXOO3T+Px37N1UaNgAWi+V43Hm91vlTTcMgZSb8+6EDAmP
	 8y7BGeNY13kxe04O1Xk2pCruoz2RC+xQt9zTVYXfOrzkLXi+dua5BX9rLhv4mhSA2v
	 es0WAiTMzQZoSJZ/mRl3Fe3mjwNM3NpuGt/F0GzcwjsEah37EspTeSFc6wLnT23c/T
	 P7tQrA4BFlktaRb2dd90w+8eQO4S+VsV5c05rG70SrsrRCnzNbmPpCa6CbaOcV5Nd3
	 9ZZzDDF6oSWrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD457C25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 05:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171609794279.15168.16613213397846639946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04d2b26778dc8a2e6b8149fe1a810cc9507ca0137b3e2e56ba8c3f9c8e505afa
Date: Sun, 19 May 2024 05:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716097942
