Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433193A9D9A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 16:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783787314; cv=none; b=nHEI8IfN+nM9FyZCjqvJLm35SNoMTObTg+Il0h5pwZtVJOjWhBDDgvrM/Clc6cWQ2zrU5P8ovzC1pgKzQcCi8nKLWNSfDLfIA63BwrGoR25b7mxcS/NwJZZFsWUGpRuvwUVGvL2J5ic6+r6crV1jYyrxngwkbQkTd6MWo6HYbF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783787314; c=relaxed/simple;
	bh=REk2htaa3G1fWG21PavrBRT71a4PNHBmPSbF8Jvwo2w=;
	h=To:Subject:From:Message-Id:Date; b=rnKOiyrS7uaXc0/MzPjlpfbLR6yNR9+lk3sqal8lq/tUymL8kiULzW/TRZdMAPFNl4KhqKZtfJCrvABwZGsnpiUq4nhYI4rKe2MCrpb5agy5OTuZEvRZgcPdZrxFmB5S7yc4HweKZ2M/F/fgyJMtOeLFdG3RqMxSZONdaNfmvyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gpm79w4Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gpm79w4Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19B4C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 16:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783787313;
	bh=REk2htaa3G1fWG21PavrBRT71a4PNHBmPSbF8Jvwo2w=;
	h=To:Subject:From:Date:From;
	b=gpm79w4ZTkYdeT9WmsYKUIPKCjiOF4ldEiwZzpSMFbrgms7lEoJn7i+LgRi+0UvcK
	 HbBvncUG9aGawlYLW788InC3aF55EqjnWH9VCnDLVz9f+FKK/+UeDGIrUc+bY5fYnp
	 cw6qng5+0vkpDauFfeSYV4Vz+40Ki0Ob9mWCv1Y6m6rh2gnXuzzKAyHsDAmI4h11T9
	 uHfzAZTrESxtspVNLTCHlduSAAYlG3YoVeXNv84HzZyS5u5xPvYTCl9HjW5//wIrgp
	 jFEO9dRrEjs3vbVt0vC4vV6bYu5E8ZwD09H+BqIapAcwnbmEmcqzr1ubo/gtcdkuwn
	 lP7Nsr0sHXr6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE998C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 16:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178378731368.26580.14979788337611201132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 149aa96c515e64c668852f57f0f1cdc8b9a9bb79aa8a45a27a50fb11c6ca3ff7
Date: Sat, 11 Jul 2026 16:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783787313
