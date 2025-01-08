Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2498678F24
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736300154; cv=none; b=CEcEea2tpYNS9Bw3AAiMsBYeKwhjGRPSCjRbl3DX1HpiEc8npQMR3YjzAbSl5EB6UrWYPxNWn18oAaUspRMvjwalw+WgiKwOv5xSuUZJCS+RO6cZDiEoHtBPJcF+/KoWrpw+oCp3h25EPUKXLGWqHo480gBq9vCcZ9VO0NQUcuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736300154; c=relaxed/simple;
	bh=Yq9+ahq1UiKp4qIyOCBt33xPV8TI/hVyB3NIQ2Hwxd8=;
	h=To:Subject:From:Message-Id:Date; b=lY5LVZkVVHAPE+XaLfTFnv5oiE7ITdeCIZANU2421+EAWRc1tZewtNtQC1DnVF2x6Xlq0/63nrYGf4BFEIEk+GQ/O9wx1sRj8eBpTO5xo69TLX3RVbUP0/RIna51Rgkx6jtzCncvTv1yw+i9jPhT7LQFVpwMI/Dtf9gIn7d5y3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7Q2osBk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7Q2osBk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67E6C4CED6
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736300153;
	bh=Yq9+ahq1UiKp4qIyOCBt33xPV8TI/hVyB3NIQ2Hwxd8=;
	h=To:Subject:From:Date:From;
	b=J7Q2osBkahEUYXfAjVKuAwxVcs9Z95JaMZ79qMK6/cS0hFFunRNtQFSoSSqaI60kT
	 ztb+y8DGBnqujc8xWZrrYuD0BPQ86YIYRv3Re+83+JFRabIov3erZHCjXgPvl94cxt
	 urRvgXjYY6y8YhLSYynCkuevMHQghYnjPk6ClSWg8weGIvW/2p9kW/U867OcLpado5
	 P+B8C+svfd+NVzI8/Uz6t81+pbC+T6A2Ar88NoSPf8E8XtfaqJPZ2A18BibY9KDYF8
	 vldB+8pm+/TVXvtM2aepIuhEUV9WOBynaGc58d9h2MwM0Eq9I8yOKG0Ylti1thc8yt
	 9Z0GaWhmCX7vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F05E77197
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173630015360.4868.16605721715807960606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58388dea3f340e627bc540a6ab3f30bbb6ad3935f8f632d63e9ffa6a221b47cb
Date: Wed, 08 Jan 2025 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736300153
