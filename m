Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C68F1369BC
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732790754; cv=none; b=majfYoDlOWBKnwI+JKa64lGKiZVYSD8OFqBSJzPS9xvdwS9VZh0FOPvYOqpSypPkteMLW2eIyOynAPQW2qazJZNMpUre4MOCsLIceJuXUn3apeuHaanJLvFuRNfypNOfaQ83qFmqPzK58vxjenh8eQWD5JzdYFtgXrXYWZw2f/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732790754; c=relaxed/simple;
	bh=3r5OYbnCgxtgYmzoX/2m9TAvwbv0WyN2U1xtSBBGfR0=;
	h=To:Subject:From:Message-Id:Date; b=AMU7bie40TQ9MOZgP6Nz7fazX2oE6Xf44ifJzNereeIkVtrxOJxaW6bIxSpTeO4N5eRVFluW86FqBLjLR7aOQuWVRPEhSKk33atwE7SQg3n7ObKQUULG2bHD45nF6kOAoAWG0pt0EKxzaCKYwYRw15ve76aIcs3ylF/UwiY+3dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WGdGqruv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WGdGqruv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE8AC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732790753;
	bh=3r5OYbnCgxtgYmzoX/2m9TAvwbv0WyN2U1xtSBBGfR0=;
	h=To:Subject:From:Date:From;
	b=WGdGqruv2ub6CCSDEoMx+LrbHmumCsnN6kdtXiZIu+gVPpRIN1QHiCXtkPgifJOxv
	 ktagZ0lP+VOzOqbQnKuGIL7OrAim4HCBNFmEYMWZOYv/j7ZAyDfgPvxkLBXaZpXl+U
	 Zfk/Lx5j6TPLHzQUu8lNSXswFufecNJEZP/yo+grK7mo+XYH9vkJV9VzLqDSM8vwPc
	 WTJZQKNT60gLWO7hB5DzzymyvaYWcA1jpaLn+CpHmXDB81TyaByIQ/hAG0IhZKyVlU
	 P5nop5zt0V7gxvV6pIj4ukgjgUkRfwo1qx0l1ljTkCz9eNCbW1Y1HMTS+20ytQ1BqF
	 Flxq0URcV9L4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C4E9D690F8
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173279075363.18543.7245689254718584459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02a4a00842957e9548f81b1c4d0753fd03cd7728e05609e0d85803c02755a18c
Date: Thu, 28 Nov 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732790753
