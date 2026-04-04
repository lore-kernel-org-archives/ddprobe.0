Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C51C359A8A
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 21:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775339734; cv=none; b=qekMqsTdhaPe/dTRYTiB2hTwd6xANSmpfMNIKkGyQxLf4N7sJUH7a4xfCdsoSJxR/Hgk0+ccJj0KPqJ7fWvJWP2p2lMCeH81om9pJzi+WdHAyK7pg8wjgv1qB4UCvem1e7Z9wVUL/y6FgkVodvCuRP1lYFjGpgpq9hacXbSZwGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775339734; c=relaxed/simple;
	bh=oGKWIcEEDhfhoeY+KgDBUMZBgF91bhKiV7JfNItQInU=;
	h=To:Subject:From:Message-Id:Date; b=YyKvq9oL8WxBXgLwm03b57LdPnKpRwwhKReh+II5CZhtb3r14HWn/M71WVFCwbS4iAte6wolmMUJGFth2VU1uqkumpatjU+TFJGqDSYTfbUvPB8CTcCpsv160co3+TrZzpmto324AbA+evlBK4QOiiie7+8RPMh0r+652mrtYAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLM0HvWs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLM0HvWs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4871C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 21:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775339733;
	bh=oGKWIcEEDhfhoeY+KgDBUMZBgF91bhKiV7JfNItQInU=;
	h=To:Subject:From:Date:From;
	b=fLM0HvWsvqhGwEEmSTsykDyKqbfI35VUVm+LNwJRFd4+G9/YIjgu4CkKt1PeEFCM5
	 c329WaPg588drqX7BAIojQpKgmb/RTGG1p13D0DOnxhB8o5DlSS0WLxVOq9nXXH9zz
	 EuGFSxj5Lwxd4TEIRb/S48Z8elhU9k5F3N9e/7e/scqdnLSJFNBI4b4fzDWkCeftoL
	 5C2nGIR7hya9jfSe2+ZWAHVmpnd12Odo4W6Du53h8NaqycO74wHHgbc7p/2MM/x7Ha
	 Ou6TMm+vOcGDW4DRdTaZ7fixrUzPR9YxFhOdTudN3XOLdQilflkY0sioaZiCFM961A
	 zPT2qxIvxDUyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24AAE63FFD
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 21:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177533973369.22817.4907129962701711151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ba87ca9783237ca45af6255c46185fe6425d5b3b7a4785c61a5fa0a036df9db
Date: Sat, 04 Apr 2026 21:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775339733
