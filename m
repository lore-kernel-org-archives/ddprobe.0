Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDB51898E9
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727474754; cv=none; b=tbs8eSfHhAbC1bbKY3JpXgn5a6U87uEvEu0z8Dyf+982l8NqtKJLAUWo7z0X4d7JsH9x9S+DaYAmdf5hh6giQO8b+X4xkR7JyWGu3E0oKcZP3+PuFouXxBDq4uh53GTH+++m/S5dlpWf6SZGg5IPMqYYYZG0M9F9MEioYAxNl6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727474754; c=relaxed/simple;
	bh=tOLY0z90rG6dTN4Jj6sF7qACA7UEQ/9Ur4XqtjvnbnU=;
	h=To:Subject:From:Message-Id:Date; b=j0pJ4LGQIY4TF11daZk3UnC9lPdm7SmmJY2nlPlXQiP3/Ie/q8EP8ll82vzaVtEwJX9PSJASr6htTYmnZ7hW6tx/iRUL9kscTEjfxYYGz2tz3Si1UfxLop+nbV1prw9aXmvvpf+TBcAQlLRwcDGZeb827nKCbsgp6o4/NIyRDxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ddBAvcHU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ddBAvcHU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5BEFC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727474753;
	bh=tOLY0z90rG6dTN4Jj6sF7qACA7UEQ/9Ur4XqtjvnbnU=;
	h=To:Subject:From:Date:From;
	b=ddBAvcHU8l5Xml7vUWmfDIKijuci0dwTNVKmXa8Yje6A6y/8CaaHCXtxEpFMJEVv2
	 2lIELLamBrOTuqD+dxnAIbAdLDPnXhjT7hyrMlBISJfJl6xuEXSGdGI9/bprXfpEcN
	 dwNBSP+13N+FtQ1gzjpqdV2Ih5b4GVroX4Z0CI/g9BHLwLHSldbCMA88bcUWr51OvB
	 fBBrCeZ05fXbmES/QtB70JRe3Ucigay5TnOkDhIyX2EjAeCor7VhiX1atpaPFGyMkg
	 2M02hTBSTH6sEQCcA7BudQuBBwY83hooWy/gIygFMqg7YQzdwM/vvsNJCO5o8ebc82
	 O2j0WDAljtJZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E683CF6487
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172747475362.13022.12389534184309816334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c0c6c63bb73905f4518390b13d3dc72ac6df7b954f5fa9d6550bc5fd40a116d
Date: Fri, 27 Sep 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727474753
