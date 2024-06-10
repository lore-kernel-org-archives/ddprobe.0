Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526543BB48
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 22:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718059703; cv=none; b=lDOYV+nC53evxQpdymUQdOFkJcc55pPcv656TQl952cfYqyhttlkt0EKWdjmpzyglhGLvGQalz34h3YV3TMWDODNsqqxDRTk7UWdepQ+2mid6i3by2akZ6O3h69/bgk4Q0imeNQ0cUqMYumLw7oAJg2dHVSXlD90GnC4Aw/F0Zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718059703; c=relaxed/simple;
	bh=r2gneV+5trE6x6x79jLpLMhIbC0dmjqLhY4Xbv6rl0c=;
	h=To:Subject:From:Message-Id:Date; b=rB2szVhzD3H+jUboBGvrkrGjqDHkqPjYmB9DuSlgiqSdEw3/RyLGiVO0uaIdIR1iVNNLDaIpD1K5DAalEQhZCbDUQx7vV36zTa6RWEbn8lt/S0aXy96OhRUKdUvjpNT8Tu3cX8eztUotLqII437J1HCD16h+AbG+5tzDlb3jzKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=acyhfFkx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="acyhfFkx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA32CC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 22:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718059702;
	bh=r2gneV+5trE6x6x79jLpLMhIbC0dmjqLhY4Xbv6rl0c=;
	h=To:Subject:From:Date:From;
	b=acyhfFkxBQpx9nP3YVV5NQNXhpapQWbP1UCkwtlVyO0WeauRtGnAmfJLZb6ShXGEu
	 PX1qg5dNfbtQdj/AE3G1CJ80ssAHgGqCqsotIX2BBG4lrBhIfLjzT3kqkQFvVu9Tim
	 CCJor5ad4X2mR3LASs8LfANI2erwgfwMxy/X6fCO5EAOLWE6TUP8nw2bNh2E+XbaHi
	 U6HcEb8MVMr4w6xWt6k8IZf5F9ThtyuQPSXI0LN6Demvw9dZr/TlTPe8tVjIeZBcj/
	 DbZUwNNnkJLAT7xBaRgEB/j6k6wpKrY2i7bllfMrx4W0I20A66cgVO3ve0FGT4YYXP
	 ZhY4lvbs9Ng3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C81BEC27C4F
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 22:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171805970278.25426.10912433828567786979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8795af181a1e4f55cda22a15f171b165cee2615b79cbb218cdd604742781856e
Date: Mon, 10 Jun 2024 22:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718059702
