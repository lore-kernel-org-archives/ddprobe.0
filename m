Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B983A9013
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768985034; cv=none; b=dO1ieDIh+qrwGOIQB+4LZBIqXJf2UC0W0BD0tPN7iZqoTE1IDSYn4q/tJ8eRNHt9/Z9BgZa0oKtzNYPMZqHT2DHfMqTGDHKw00KUoY6qmTxYSeozsbA1tRMe7IwuSOAvSwUWr05PMDrSjBc+yLPyozRRnesXxAm49WTfAaAgEmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768985034; c=relaxed/simple;
	bh=+fRI1nzpbX8vx2v17lvcCXZsvFipRkOaSstHXRYGU3U=;
	h=To:Subject:From:Message-Id:Date; b=nLQu+lXRW+vd9f9NBs38ff8xlXcZwIDFLxbuE/cszG7HlKkPTq3+yjNjqZiKawEFp/ypbDC24AzGrVZdpgTgLlST1yOT3YS1sFzXVuFR3DSZwWuHNk0OHiZZzTLwWI2iAwoCX9euJq5DOvd/dlSZWIQRQMGAiHqmCm4xnIjyTvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k6OaRD3U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k6OaRD3U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DF1C116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768985033;
	bh=+fRI1nzpbX8vx2v17lvcCXZsvFipRkOaSstHXRYGU3U=;
	h=To:Subject:From:Date:From;
	b=k6OaRD3UMUlGgfJpQqeQn7P+rbd0OiJO0plOnlDZD13kskaeWE1q5txCnPOaapfH4
	 wtUmzYP2rpUuAI6TyP2sZltWnooj1lxVgYWaK/EFgC34QwO+xK1I/hGaHj4ZIy4tSP
	 QYkrZWBVNe33RydvLG6TkVs90moMbIaHir29cfPzSHxG2BHu+P5z2IQOLsyAgaCc9b
	 hJ+02RuMfs8bGiSKAuwGU1VBSWYIxW1jZ1g6RvHzbysWorT/fASVDico4QzEM7Kx8N
	 Ygs7b5HP75cAtSpGk8NarggYN/iKJRyZY/WDAo/8Yn9v/LB71cqi/vClmMPAfon45f
	 pmHU2xJPeVSZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F5EC44502
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176898503358.30259.1874115555295282234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd80c6953b86576daae65d3958d346c430883d583ee372df36e021f81ca687c1
Date: Wed, 21 Jan 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768985033
