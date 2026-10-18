Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C28EA1A0BF1
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792361434; cv=none; b=eGPtHnf1PEgDw/K14oFxXRwxyjD0ROC7vZjjz986NTuMGKVb6dfl35Tk/J22UIZlGVQTFp9b0T7owDaui9LKLpDb/v5IdZzFWsV5ZdbywaYFIQk+htyrJoDF2QIpG4q45yzEUyxjEZDwx5M/mEBa7IHHD8XUqdXtvrC1vFUoBLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792361434; c=relaxed/simple;
	bh=4id+yJ+AkdQln5v4xMUIsiLmPTm7czrnjLaAWfyD6Ng=;
	h=To:Subject:From:Message-Id:Date; b=U/OUGwcGlmtnKxZDZ1OETZYUTnyG+0rXDrJbnnmQ3OBICJIQWvXOJZep57zLgP6PQBS73fvArLvW6vIVkIwtbk3QKCPMTPeHdAT36heQDxXkB0QbGfTZiSzpoXkfmheLLreyw3bUJTiXfxBcr1DTYORd/yCT8SCUd0A0hRuw94Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WScV6zfe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WScV6zfe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D43BBC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792361433;
	bh=4id+yJ+AkdQln5v4xMUIsiLmPTm7czrnjLaAWfyD6Ng=;
	h=To:Subject:From:Date:From;
	b=WScV6zfeYvQGPGkb3cnwsNjDhl1SZkUvhfuyX8iHl4clAopQ7zBxqEXB4P71Vsp6g
	 ps+r0hE3JSTpiRH0cDFq01GewaIdFLIo4Gvq5+ykA8ylDSxDS/Xb3TMJMD7pXBXQKd
	 hVRcc5g1wVueVfHsYNv/hoHxZUhDxpkrJ0VTc2cbTdDGtSlqyMjrsvmGxSFt9KLjq6
	 lylXZYvaYX655JCkZX+ze08j0QMDN1Y07epG/DHwOL32adQ5N1Z40NEup6fpx4AM5N
	 tCPnkLxp4TfOEEbKDjMCFEzsYWXCV39+bAd6lDHkyyqJde0Tp9hhmSFqcsFbM1Q9Q8
	 +cNgiLQWONrXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCAFCCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179236143368.15393.10543139229258834468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40a4c73bc555ee731e62ee69ac10445786d20abd36b9dfe47a1acb1c6f23cdad
Date: Sun, 18 Oct 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792361433
