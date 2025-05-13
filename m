Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3C7628C863
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747134593; cv=none; b=sQKTbj6nQwNPNbgsJFfJaK5KJiNBMP82DEU+bPMcCdlB+RNxGrYOgWw23xzmfhuDzphR2VLlv0EPmYHMihwKFIVICMagmfQz+j8Sh/IJwgLG1ATd777GFmFKZXo+cnoUfGWwK/kGLDwXO2rBykMaM8262aE7ipvI2kjZ20U9G4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747134593; c=relaxed/simple;
	bh=eUN28MQCVtzjypNL/a/WIENBk1J6OAT1blPHTqb62/c=;
	h=To:Subject:From:Message-Id:Date; b=DVNkdoPUrDCamK26jQElkDQc8bf4+NxexHGnVbmhxfmJxPBnGS+f7bOtsmB8X/xUnj1PMfSOueKb46nyv++JARLmKncVSuXjP2B3PXb3uP1NyLY74sk90/nCcNGnbLa0bXdoNRDk9yI8UpY0X0ukaDZNWByYi1sm9Nc90hpzuR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YRJnQ1Ex; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRJnQ1Ex"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A61C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747134593;
	bh=eUN28MQCVtzjypNL/a/WIENBk1J6OAT1blPHTqb62/c=;
	h=To:Subject:From:Date:From;
	b=YRJnQ1ExbiD4ujUOLSIkC8QOrhFqnEeCEySsJn+9d6XrcB/NCie6Hg6dyQZcgjpIa
	 CzborPhnU2dTjaynF6PtyQImOdmc8ZC1+Sd9zQCV7fTqCzBqtnax7yP3QyOwU7L9Lb
	 kHVY2lCBmgWltTRKu7lRKAZYQM7VEsVv6a5cr54TBPfiZw14hFQzA/PFeepnXt8voO
	 iWgr+EV5zorFda7+tRAZkQlybtghx+BaB27stCQ5mQCOev1CRUe0o4NC4V6SeAE/PV
	 +cVYfpHdW4SCtTom/jvKI+K7o+zO2mz1Cg5KSQ7khwcJy6zdXCJZH2AhiGLZLys/hO
	 PSaSRDww/CwIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968B0C3ABCC
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174713459360.6352.8247075591841930244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89e8f414aa7d3b71c4206dee9891a903dce54c10fd18c7ddad8302fef907dc65
Date: Tue, 13 May 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747134593
