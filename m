Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23CA7339A8
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771067094; cv=none; b=VI/TrEIfPAOuwbIGgB7v2VQWrYn5aPlpi0S/U9b5oL0PhxqGAE0fkQecI4l3/wh9Gb9xmKwiKVrIwtjWeaSN6FZMThb/uTPLgkCRJ84m19VOCU9+6MrUmFaBnTgElxqT4x8P8K3JVsLP/QGFO4QLjKz6TFuRSIDCdc8OoRo/yLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771067094; c=relaxed/simple;
	bh=86Ua41mhf6bplth2C0GWwAF5g1wpR5Gv9FEsHt/2SMo=;
	h=To:Subject:From:Message-Id:Date; b=HTcOiF8LBxJ3g7X4cCh4irFnH50/WW8Ki0rW64qd/pOcy2a/g3obZ0tsHA9Nz6YhIU8Mmc7aHSDdG6o0XODRDlUa4oZT7ABZnqOK84zp1uzsYwAf6ZneoF5x0qw9zLwzA1PHqutf7B28lXlnEiW2lTYRoBmRmkmVQBA3f9bH8G8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mq6Q0NJW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mq6Q0NJW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1DB9C19423
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771067093;
	bh=86Ua41mhf6bplth2C0GWwAF5g1wpR5Gv9FEsHt/2SMo=;
	h=To:Subject:From:Date:From;
	b=Mq6Q0NJWiTQIZuERXdSEgabq8s3+KVkS2bZrwtd6hWDop/F+fRWBjKm43bJ0A1/NH
	 wnPfn1Ni7tejz+hk4W6MQ6LWQpJ6kfUOIgKlKToXfVE8h93svrf+IyWuF4F+NlWcLG
	 7Q9NqsjR4cD/f3MYD4y05n/GADT8nppLvnK0TZtVC5lX0Tx7pavBYZM29wl2g+NIcE
	 sGhcAoa3R+qQ3YgRLNvogw5E+hlvczngJXpwytu/3ZQQjbDQH84pqDDA6ADYeyEMLn
	 85pE6+owWUgmujOwzmqqggAdQPC04KX+XN6k3WrSILXcLty8JK46k+o0WR9yh108NV
	 r6aHfrH+IK4sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E373EF48C4
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177106709363.11864.15252175406712400246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8be0256330c68402bec01a4cbaa139d5114edae919bbb31e6a58bfa337a9463
Date: Sat, 14 Feb 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771067093
