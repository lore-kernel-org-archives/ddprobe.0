Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC9422989BC
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 21:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776202654; cv=none; b=gF1HKHaFNajeTPaa72U1ZqGhu8urjWUWzavgGjEi/aPpmvU46nLWf84vbOk5MDX3VmwGLjDS1Dr7/dokFizZgekQHQNfjU4C6TYsrZeeZ4zbD+Kfb0WAJ2zqRrpNHwyNr9/WZbuKb2OvUAvXt4Lu/3QiKCl4pRG7nm/u6Xd1EUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776202654; c=relaxed/simple;
	bh=/8vka3Z5VRpPQedMffmsyS1KtJqIh/iJYp4Tr3KUCTs=;
	h=To:Subject:From:Message-Id:Date; b=gipF4/eiO8dzQBPTCjzdn63ruM277/IRrGTUwn786uez50SdIGNbSMzvKG0V1OrtK130ba0xhz1UO3DchURFbBfpIX79QUtISfxBi7y7GUPEVkHwCijADsTw/Y8xz1nxo9jl88eocjSM9rDnktDxZGkkWtBpidQFgxB53tZAT7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U1zHzj+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U1zHzj+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C509FC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 21:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776202653;
	bh=/8vka3Z5VRpPQedMffmsyS1KtJqIh/iJYp4Tr3KUCTs=;
	h=To:Subject:From:Date:From;
	b=U1zHzj+w610IR2zgVmV2I0Z0UDuH2QxaDUIkqfBv2geongaYsZVZ03ZjwtfZ9brnb
	 clZDXPghA3b/8UqUIJOQurXjOcYvuUAUkRCRZ+FpMnETyjbGaovBJBJ5nFFwTCZO/0
	 LnhlwbJGF+F7pN43KHzNA3zBao0dqWvCfKQSccL7PJ8C7F383PykezSW+ubxWTKyeB
	 cX1FMJCB3FCWB/1GhnhWvoiqbqL/oE6bIYctxxDwSOH/NZQ/LmTcIu+Yk53uRA3CoB
	 djzc2vgzr9ANkaMeRJ3yvd6Y0JKhf7Lh5XPne9gTmXOtLRTngaHc9o5XzfWuMkLLFF
	 Weoool6K7m7ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0893F9D0D8
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 21:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177620265371.28133.14565687832520169638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 791b0c4b20bbf2a4271101a2b05d49d5088f3277cbbb1116372a366772ff1d88
Date: Tue, 14 Apr 2026 21:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776202653
