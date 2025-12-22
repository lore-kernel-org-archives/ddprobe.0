Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFDE2FF16C
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766393034; cv=none; b=My4S7d7Q9TKQVlICVJt/nNNyji0u4AVcVpIBY8M2wv2sZ5Jn9yplXJjvphFmx5mEUTcQf6PZEFigD5ylYLBo5Ap7jJ9XQhQKuuJ44Gj2ERyF8HsXUKJtE29jPHJ6Zrajbr/pD6cjox7f1ACT8eZo5ZIneHTp2H76s1BoS2kt5Ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766393034; c=relaxed/simple;
	bh=R/2gavij4hg0W+DOUvpZw7hug3oXlypbRZRFk8dxQes=;
	h=To:Subject:From:Message-Id:Date; b=gSexca+Yb7lJyNA784LPb19mH+52Yh0HmZColQq/xle73lvany+u2K81cIgGXxKNR6xoumVSNd3fpLVHWUCW5oh0SwXASbCk/dZJNYzwkBXCCsYUtCWw2ZpydWxh+ISEYmFVVWYI7wf/AR58AocduSyrBLzPJYAinAUTfzquMhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HiPL+DkX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HiPL+DkX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4102C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766393033;
	bh=R/2gavij4hg0W+DOUvpZw7hug3oXlypbRZRFk8dxQes=;
	h=To:Subject:From:Date:From;
	b=HiPL+DkXtAEInqebiNE6fjN0tUunFJry6j4SjXMm46ex/agMrDsJzxjwnA4djtZiU
	 KXHYHmMveFbHSiumEaFiS4lFC4TA4LaqzZbggvGmWRTLH92M/9U0Wb4xLbddHI+6Zm
	 6ra0FHM9b9vKNYoPa+mdjn8wS/UwOwq8glRhrebBlbRN0pfjbGvamUZ40nArO7l7je
	 UomzAzELyetCU6TYKA1la1WiPLXEIgW/0nrqiMDcWY8Ad9BnuCRU8OscLfFmk3u50B
	 BJJAAEok4QgU61muHAEwr+rrOaNifKQNHMHUsNmUpDJIljWk92D+BDNDJu7tjMHXo0
	 BOMI3L4T26gmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A20F1D711D5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176639303365.11298.3491970316862126931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2f57aba85131106aae86ae3ce1670440c84e5c008be5d47fa85e165c0c8a6e7
Date: Mon, 22 Dec 2025 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766393033
