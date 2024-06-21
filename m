Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6885080603
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 01:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718934083; cv=none; b=tDPW9C7JaMyULfwVAjgMhYJywM9rdhJKxXop52fOjKtHLmDPsKHXFS5yDmqzflHeoDt673+aCNLlS0uPHYyqOUjelEc8cg0Qeipeu5BoeifgCm77ZA5ylU6sv1SCQMMeRnzR2husC5WIPlHs4KbZrC5kxgXtf7B6XKavBiUlgdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718934083; c=relaxed/simple;
	bh=jtUAKYj6BLoBOswBahk1aY7oFg3b94RQaaMSrIZ042U=;
	h=To:Subject:From:Message-Id:Date; b=UDltFSBjYyeDWkWdBLvrxPp3s2b8curCz7sjHsRR7WlffPqvouHWmVR29ghFxT4fUyx+AZ8FTs14mdPowJjkHLSEM2dxVhjpubBS9kQ6o0pLt30NL2IvVqDBdi0nzeICMvKzbuyzr2KBBfFQXR39uMyS90XQIdxEXJj04S0mozw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S5azHZYj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S5azHZYj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF4CAC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 01:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718934082;
	bh=jtUAKYj6BLoBOswBahk1aY7oFg3b94RQaaMSrIZ042U=;
	h=To:Subject:From:Date:From;
	b=S5azHZYj394lNOcVqWKdO42qUFQ3Ri/uPJMh5N15yl9kv0I35bSjnnfjXvbzPP4GS
	 4wnQZHIphboJfZyDHfMRyS7bMh3sIB12b1aMRY0rZcMLtTN3uRPHWMXXIA721DTefv
	 DXiAqyKW4fKSKJRkaCoKtAc0dpnHMd29hGrsnyb1PHw1h10ilBploy7Inis9LKQxHJ
	 jPpBS7VGoazZ/eSFoS6sLEmm5BiwSM5jNtQReqttS3izoitCyIXwCnhXxH4DUSFP75
	 yYkWYcovVx6HKTVjnlrng/AjoTn7wBzWeq3ofmnStQ7OkzKsCO2H0Oi1bDs+X84T65
	 ukNnCNbknQm7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C23B5C2BA18
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 01:41:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171893408278.20574.16658092229218962766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b60d648c45d89532ce38f2bfde40349bc3c17903ad9dd558bb6fa267bb64647
Date: Fri, 21 Jun 2024 01:41:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718934082
