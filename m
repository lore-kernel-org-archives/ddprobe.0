Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05DCE429828
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769031834; cv=none; b=m4nq4s4FLAbsvshlDAFnaVk4KuH/fyFjClQ5tnl+YuhVhDV6zdqWS9LIiDzfS1lfvq1UkH3C0/8rq6G+1cnDk6HeLIn1lnvAgn3FXB5zYxkok3qNo4O6sJjjij3DngLV9ygGDCW54dQVNwZljS6kCSNg5jGREuFRgp7BhYyViRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769031834; c=relaxed/simple;
	bh=mG+qwIh4z8safqXWJfCtxr2rVi3on2c0PbVTSh4g+iU=;
	h=To:Subject:From:Message-Id:Date; b=W17EE/AOI9InunLSAJgs4BJQMJflK9YFrdE6xKttSHOsjhUcAw9l2GKbC5Aee/UPqMGQm01xSeKyQiLmGN/9IGFnF1yNvAZu3CPvg2ovSPIG6kdEnUZedb3Ri5KskGlWHMpYmA4IRzyXC5FHmHvaMeSGOd7oj8hoI1qjFMzHqmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPbfgaj2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPbfgaj2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1673C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769031833;
	bh=mG+qwIh4z8safqXWJfCtxr2rVi3on2c0PbVTSh4g+iU=;
	h=To:Subject:From:Date:From;
	b=XPbfgaj2nRYCz2X1Y8yqpdNT4uSlMeNExdgf3XVImHQt8cz1M5gS7w0tLpza2ZvM3
	 Lzx8VJfCkw3UjYYsdcpkjCfbn4uqZC+rHwajkMLkmqXCqnmFGMt9D4n61s/2ECzPee
	 BvqYC8+woPwcfdiTidGFGqQrmNzC3wH3GcGk9l0YKLgA0vqmYkhjbNQmHSORe/eYJ2
	 C9NxnHx5YQWonxgrG/9ALlcwBKmOpg2y/S+fxkMsYvZSLUYokMntGz8iHteUc4GDfX
	 R02cJwZTumWZXh3N7YL1plJ9ci7j2xH5Umxo7FCMTo0tPwMiNxlZ7Vdd4IzKr1/pr+
	 xlRpFuiq3EHAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F62C44506
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176903183358.29700.1978012938361046322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1591a69f20d7537a78716539f798a3a67f1d5b27bd305b32095d0469ea3c622f
Date: Wed, 21 Jan 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769031833
