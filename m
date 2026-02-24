Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3363F23B62C
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771895694; cv=none; b=pUBZh/dw64xU+fzjHA99ahc+MA2tVgNhOlhUURgR51BLe3wN/+61H4dNpfIJgRADZyd6Fes6ONzzKvz0AMJP564Cl/BR1Dh6LdcfiouFNmYmnK3ejtO8gai/KJLDaF7QCnMTzLE81YSouekAhQYAY5JGIDzWcszBHtulRjPsyAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771895694; c=relaxed/simple;
	bh=NAX994oJwDJPoVrPx9N30s9Ts7K71MNOZEbZ6I2Uajk=;
	h=To:Subject:From:Message-Id:Date; b=XqUEBZLcGR7yvhZCR1wPJRkdX9vUz8luK10PaQDxHZYP3pRFoAtWmbYL9eH6SLy3Hv3I/6GOy37X4x2xfhd+EnK5YreNvkIQDkXQhOivRMdjVAYHPrlSZcg7NczD4Wf6qSY8jyiOvbQljobpXRBZRa1IDzXhGSxE1e74z0rAm/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pIWwkDGl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIWwkDGl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B582FC19421
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771895693;
	bh=NAX994oJwDJPoVrPx9N30s9Ts7K71MNOZEbZ6I2Uajk=;
	h=To:Subject:From:Date:From;
	b=pIWwkDGlFRPQ/iXSPAjpasupb33Fz/BOhHIP/GrHuRpYA0c2YviAvFHCVhMHWP3IN
	 TCBZWfWq80VEnVkmUM1GvlfyGRqaHPN2O/QKpv/VGK1EfQw/vXWEEMU1dAjdtOdN/a
	 ApKFkikRtceg7o0k/hjQ2bd6Ft05pQ6XP1a2VKqBmo/cw2dtlvka2s8yIM/l7Izy9p
	 GIIFKiTi9aUKfmHjZcIfJhzA7y130r0rdXBCQYmquGHovAaKLJvpXa2Qu1qlJ1ccd8
	 fQbYGlVPdQxWB65+GTDa8+fQvSZtxCVHXvTzK5O+uc0HhPNs0JQ7dLJzP1XgokHQxI
	 Wt1fAGL9ftRYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4B1EEC2B8
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177189569362.3039.9927894664220990320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28a27f07c735fe76d35c40b6e718f29afaacf9f28c51adc0e69ae7debb925fce
Date: Tue, 24 Feb 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771895693
