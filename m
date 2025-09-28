Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B63190685
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759023594; cv=none; b=jGAdalf1XoKIaM47J/bJjL7vx3wRBV0ZO/x2EGFtj+XDCTyuvrfH7FEq7rlfPCYzZjQJyL5HZ+Ys2ouvU/lSMJiX8QvJZbvV7xcBFzV30fU+I0SQt7UQFYbeCixCSFljjjZfbDW/5JT4ra1FDsKihO1lZSe0/KOlTb5OcsPoU5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759023594; c=relaxed/simple;
	bh=MxaTnehsHcSgLELVV98fL66E5zEzSMYRgctBh82wzg0=;
	h=To:Subject:From:Message-Id:Date; b=upmv6sOMDP+3fCbqJ6vcQQEfCFnbxzk9uo8EHRugSt2NiOPY9GcLI36wF+eSGWaurpZJZAXAtNiCGWWuocvjjiOD0U10ZYZzFbQHm//+58wsNNj8gt+nHLtPq8uQZTmNn0R6JLphD+1+FSb39x3ZUNO2HYAYSza6KqiITZKTDpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W7TqKoKT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W7TqKoKT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A814AC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759023593;
	bh=MxaTnehsHcSgLELVV98fL66E5zEzSMYRgctBh82wzg0=;
	h=To:Subject:From:Date:From;
	b=W7TqKoKT5xRngtXuu7mCyrbLlAClbd5rEh9z/tR5ICXKUhMtuVYtYGRhs8ewl3yop
	 L+Okw1zIiMKmby4YWXhJ8QvtAHDrmyz0Xj6kcai88RmfoCuJbmR429NGYaU0aD9Rqv
	 8SHuD/iWTzADMGILBFveHX9uYd1PTnG4XotEuZcxTVKpe8VJdhzNrGa8vFQXehMvr/
	 GZh8yMkyxgr+C6cv6072Hyw2MK4+Fy+lMi8uGZk3Dosu8cp+NbAuqxQhPQzCxaMRbi
	 MWFWxBgJKq2vx6BnvaJETYFmlYoIwHkg7Xg/KH7THOI+Ci18RG1HFUYreBmwZhUkuc
	 k3KrraS6pwo5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94461CAC5B0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175902359358.4363.18341863021696614498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ac0d9de722a79063885be2e59dcaa2279dd34b169d23a06c91bb3e0ec2d0632
Date: Sun, 28 Sep 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759023593
