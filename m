Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 615F425785D
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789870234; cv=none; b=SYGPdN7EwtU251bZmiJ7M68POKjWxphqaKQ6HKf+6ZI/fot7zuKOLfi+YqpIxPbBlbnm+SlFEw4GzNeAxDUMC2o7iCxDjrsisdZ/SWkJ8s13ec5r/D/08YFAeY0Vfu1xNTONykoL7fxY/EJFBCx7N6mxPJIWN9nEOYV3D1YmzB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789870234; c=relaxed/simple;
	bh=daKX3hUb//V3n/qhJJQmoc9NrTP+8+8bOWKiRRVAdRA=;
	h=To:Subject:From:Message-Id:Date; b=fxM0PCSWiqCvV2TNpd0zyS/G0qfOZMSdfUZpYcezLgiEEKIaoy3yYXKZir3kSZEqM6zgMqOZDELx1lz4LDY55SRocC2I7rLrMVbVTSsnKhYsHduAbllitsi6DTgXOlMF9y8WFiM8mUNyMrxfYORsCCvirErdWMdNYLJSwJqeTr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o3pfWJm/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o3pfWJm/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DFCC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789870233;
	bh=daKX3hUb//V3n/qhJJQmoc9NrTP+8+8bOWKiRRVAdRA=;
	h=To:Subject:From:Date:From;
	b=o3pfWJm/4foWZIbbThlpat4YAYO0s3fd+aRmpX+Kf1nf/Bts0lODZW15h+F3MGoIU
	 /FonsslzwzFREkTdf1OCyNO+lALB9mMXCMR62NBBQFjL2DHzaQB+lGyWiiN8cAA6X6
	 wE/HRGiX94QzxuZg7GuJbdu3YCBcx3OszrzYH956GU3uqj+6zmSv7nadfPyDNEs8v/
	 3ho4oTfj7g+zwOH9Kp0LTNl7C5BkNM+xC3vztCDdw9NcOmhj0Wjk6/fU/IXaK+Zyvu
	 ZHkA4D08YtG+/x9Ax6lMTb1Jm+sy23R9yd8qJJYFb/spzMfuBFAQgnbJTCxFFr/3kL
	 HPLtki/jcRStw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD22DC982CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178987023368.6312.2882423776147262182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87b82a61a4115d84fa5e4c72a3f0ceced99140639ef83eeb5bec758bb9922258
Date: Sun, 20 Sep 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789870233
