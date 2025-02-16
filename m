Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DAF37E1
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 00:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739666334; cv=none; b=j19Tg3A9SQy8e6shPtj56B5pLdW4P3wCGijXaMew9LCwHsIY6KKkrK9fjF49AiqmJ11EgWsb+v4DjcWZ1kj7W6AuTgMGYuQVU/qmaZiH5l7Ea9jtYbN7PR3gMuqiFQ1AuAWbPqYTMC32AOT09SXIDaao8oaEXQ6lN+J67K+QAK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739666334; c=relaxed/simple;
	bh=pD6te/F+GnVDc9S3zVqG4nX08jRkSUuBCJ45J544msw=;
	h=To:Subject:From:Message-Id:Date; b=N4TiNGMVsXwcxdgCAvBB2Mm8A2DzDAZnFPB6uRgzontdBkzcM50czp3Tbx/tvHq/xWqno3LLv2Z55AVUAVPqSw9cThlehMvFfJrpJb3KiRO92XOTJQTrzcRRtTduINivNs5+OiqSwQtXcEQclsVx412oikhII2vpnfS8qB/yWC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dnAOVhRY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dnAOVhRY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE444C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 00:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739666333;
	bh=pD6te/F+GnVDc9S3zVqG4nX08jRkSUuBCJ45J544msw=;
	h=To:Subject:From:Date:From;
	b=dnAOVhRY0GDD4bSTvZaTmp3iuy7gsq0SBzTC5D4K5xKwgdLYPE+454+QXFCXA1+Bq
	 J6PbKbeZ9Kr0zC6eyF139IdyokLb6qbsPvBEZ/OqgOrZwwnzp6DjkjyPHZZvLLfygn
	 qCs7h4+q5cMnKo/RCjS7H+4pmJx0II/Rcz2UUWy8J0XNvJoPB027y7WXLJGxAUNrlg
	 0r/P/W9ZhC8LeHj7qNLhtJFek7G2PhO+W4U3bpAeueuVYJkefSvlvO60LsNhWjCTnp
	 qRiAaKsSfrDt7SCjjhvqa4BhZHCLifX9+lM2JO+E6JsuReePKLC8LFElojlJB28rAS
	 YynqKkIta7P2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D54C021A0
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 00:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173966633364.25807.1737536543964908533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1785aa3ab799caa5f5d878d95d8f10d05befe31eddef25347c63f55194515be1
Date: Sun, 16 Feb 2025 00:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739666333
