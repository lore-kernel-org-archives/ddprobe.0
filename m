Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2866221F1F
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759925994; cv=none; b=AVnZ5PW5ccxVqu0UeBaTQ2ov19oK29itCqnVG0+OxYPZVaeF+pXNZRqQuGUvBKd/9Z4789eirKkU2xyw3+z/9aqpN5r6hZiUyNvBLKqx34jQD502oXqrhR9/OQUxxnAWtyVHUzZnPevvZWTLoHMZF6Xdn2XRknSMvj7rKZhKNhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759925994; c=relaxed/simple;
	bh=OwsO41crJSwSxuEc4foJfDd154gDJEdI56Z4fNfarMs=;
	h=To:Subject:From:Message-Id:Date; b=nPRDSUCgo+D3552ufuvzrq/DlpPxBRnIO7vBFH5Bzcx4l4jML7cit7+eZwCsgsUKX9+gjqvrJzTDkOJBIqa6UP1ymXBTTvZR8IAq1QJ/ci8yteZKxJ1C/kHgoJZ0olLM01b0A01sgBCLkbupUvMU8rKVZno5EBR2XrG1zv8Fzt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KPnD4V9C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KPnD4V9C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1268C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759925993;
	bh=OwsO41crJSwSxuEc4foJfDd154gDJEdI56Z4fNfarMs=;
	h=To:Subject:From:Date:From;
	b=KPnD4V9Cwz3nTY58RyTo9TzYGDLEm6xOEjdj5gMB8nwlbMwXQHumUDz3G4iVEw3T6
	 7ddAgrbZPERNkY8NgfVEcnTl+7iUKyP6hEiMAcfsvpdVu0IYeUYdBPEcrf5yp4+Rhs
	 k94FmS/RoI9+bPiHhxCCeNXeVxk3dxc7bq/mrA9kYVuYtTRYN+LcRPJM/zhhyUxMb2
	 YRIsvO5WLuu1cZxC/4Xb/+Bhrd4hwmJwdW89Lss97jYF11B4afcWs8i3B/MlSV6cEH
	 voMoevbt8337Hd1P/PPDQyLJ4UqF2h6mepHUw9OIqIG6nD+R7cCO3Cgj3DmPDKxHNk
	 b7Z6jrNYLlX0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CB9CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175992599357.22669.18011026705069938572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77fd72f2de72ec3812c6040012099190b037e124508780843519e277eafa1e91
Date: Wed, 08 Oct 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759925993
