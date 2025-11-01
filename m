Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8A528504F
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761995394; cv=none; b=NXzAJbNY9bdBjlA4G17vFCb8GwQ9MVuDwIsgwjeNoA8ImUTTuKzwFaEfOz2FMADoa92VjuNEOnRYtAkkoMIKFg7TuY8YJH3R1sgQd0SS2OYME7/0qU7aV5xAsiTqOuXWKT2dyjg+8zQJML7o6J9LQTp50KUYFD3izIteUiCfWps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761995394; c=relaxed/simple;
	bh=k9aUhXkRlIZ5RjYJpHl6Ura32QNjWZrDI7R7SNLMi+A=;
	h=To:Subject:From:Message-Id:Date; b=MU6qCaespHKzBL/pnlOG8FVGB430CKAVayTdZ27pUG46sP9RR5wvjXkMvjvmoE5JwS5dzFlkSJWBH8gFcMrKRUKqZQfxVuGuqCMg+FDfVwSNf69z812kUT+DDzGHn3+4550gGRXqmRPygkmH675qcMkQ1mnY6e+bpXBjek/KxQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PgHI/Gab; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PgHI/Gab"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1455C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761995393;
	bh=k9aUhXkRlIZ5RjYJpHl6Ura32QNjWZrDI7R7SNLMi+A=;
	h=To:Subject:From:Date:From;
	b=PgHI/GabJjRjUKlHRZETlhVPOp5kCM9xNLxzGABJ8/C21jxvNAM7Vl3/8MRTkG6Vg
	 W5F0dw/u7zdLOpFqA3954uRweKmbmG7yQSPodKdYeoIoIfZffEvnLUYg9tkkvQ1o9t
	 aveXk5mz1V6aAzqwUsqGKXH9i9LsouB5WmZQsNduvSQdyElnvqHTQuLcmdYoU8tTsb
	 CEqKKM0JKsXNyCjxoKnnwNZgZPsb+3KJzgVqBidY3/vtDoVnScF+jcDZVbhmd/ut7o
	 AOfjhmhjMcvaa62WugcX2D3fBfItt5s6KuD5evEJh6doqfzAcfZkR6sSQSkd202jj+
	 U5I90QfueC3yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9659BCCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176199539358.13309.7475240973011518136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae9309971fbcefcdad9cb965f2210e524d90845b4aa6e497c64c1988c2a0ac9d
Date: Sat, 01 Nov 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761995393
