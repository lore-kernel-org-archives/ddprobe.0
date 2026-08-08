Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6DB1F16B
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786225834; cv=none; b=Z1oOhgRjYIEb0m+wKa1TVcxso14j0C/aFUHAt6HH68Gesv5eYqiTc4s2DWX/ZriQvIZgcaApWIAzMX4YtkU4xo21UJE4dMLsuG8cmSibGXrE6LHXx81a5FeFzOYmPl3cj67SLVXUm94QQYBJQwfAhyP3BuoGeaBNCU2JMfvtEDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786225834; c=relaxed/simple;
	bh=W16K9HjUGxIGNooN+vW2mAMq/maUaEZ+j6GRA2+9AGo=;
	h=To:Subject:From:Message-Id:Date; b=IyP19hb0ztgnavUiBRcBPsaFqN/NdPlngxmkwzQSQggTB67TS+Zm+o3a4N6/V7bJl1w3tK9s3hCpS6XPqBjuEl61jNTxvO+ctVGe/ZwDwRrDjXIixpRdGLXhLhfY7SumgLDOsC50MKA1LwEbUpxsl84YDew7blsbk5k11DwEnM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WFz7hH8T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WFz7hH8T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B24C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786225833;
	bh=W16K9HjUGxIGNooN+vW2mAMq/maUaEZ+j6GRA2+9AGo=;
	h=To:Subject:From:Date:From;
	b=WFz7hH8ThDpWNB95eXIiY/e5mTMY4L18DEW6CEmmJFawwARBnVXNia5gQViCKF3Bo
	 /wEzZc7eZG5PxaeYSMYmebdu2NJDm2kqTpJpmqk53q6mSOvwzkN7H9KIXZ1bUrxn2n
	 tNFXKc9Jh+Qqd6j8m/wsJWjYiqVcqiel3dHyUwVsB4AL3L8ebBrBAS4ZGY/ecAdDAk
	 zkRcbMkFDPc0SlmodvqaxOTxA7wZ1ON1uSVxS3F8XmdLxAdEiBhJPWXDibeFv/sXVs
	 biL2x2elJJGdDLfn99KpRbXN/R2ivj4pvJiJJka4A/wy5TV6RZAL+dWmgVJnVvASEv
	 IJ7JfsCtSVt6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF59C5AD44
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178622583368.25779.1876696917990226513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa26b670ba235c979ddf6b2c968e2ebd7c40c4febbaa7732610e0cf4596c9659
Date: Sat, 08 Aug 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786225833
