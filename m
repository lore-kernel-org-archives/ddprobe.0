Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD60330B32
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786944034; cv=none; b=dgYAnavPPJlZw7uKuNjTsEgKFlQp/kLdivr1mCC8LCOMC3I4nbE1vmRPxKNKmBm6uq3NE3pjHoyJDPorUwiFIQyxylnUjs3kTlH1nJWlvPKkfuqClE1gBKmYg4jtPI8cdOstl01gPtUN5s5a7pCc1VBNtsvjdx8lQ1SyE1XZtq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786944034; c=relaxed/simple;
	bh=jLvzHtq6OtNvZNatzOOgSq/YyEbqFjkw83/FWRs8AFY=;
	h=To:Subject:From:Message-Id:Date; b=eQCSpAeZU6435Xit3AiZPGYA7RPw+qrDAFGTwUew6UxD3LB6aLbj67UyjfsUPHOqaVmmCoWQE7cSXNjX7GsPcIiY1MN6QskhTXUgLlmsgX01HFXKYS+9eMctn7zZgGBR6tWj8Q0j5h960b0ObVSGNiM92Cg4yO2m7JolzwnNgPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VVgnXP/h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VVgnXP/h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2944C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786944033;
	bh=jLvzHtq6OtNvZNatzOOgSq/YyEbqFjkw83/FWRs8AFY=;
	h=To:Subject:From:Date:From;
	b=VVgnXP/h1jgCbQdbgoZvXzszB2TYWBxOrSDB45SVuYca+vJdhSTyQhymRMw4I4RL/
	 IIJguSZ77ryZkamYMwgJtZb6ktSStx77epTTxK7raY6k0KTdjwhTGZrTXfM9dAy0vx
	 SyKFEoKoiusE7YoPAdXNI5+nhJhjBMOUQBsK7dpP0kJG/Iov5eAPy70xzc3NRtqkkr
	 eZZuJ3Y73pmwVtiojgwQ/01hah6fFyTNraCU1BbF22walpdBI0bBcU0YAyRd3ONs9c
	 NPbrgYfM6PlAgcNkFDpjhro3W5g0oPgsBG8LIwdQHYPz3M/1l38E78IcRxqJPN3910
	 dH0DmlpLFGOJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1A4C5CFC1
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178694403370.3206.11637471367215193905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd0a8a137a4ce3d11c7fa711809f7e172c70b5ed2ff6ae01490c21cc2d1024ae
Date: Mon, 17 Aug 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786944033
