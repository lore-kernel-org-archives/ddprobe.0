Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5BF279DD8
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753199994; cv=none; b=T5ZP/8H4l13hykNX7XeSwMWlUukpAsiuE5ALA2gg+183k7CjDZhsBMmko/1IwtXwy743o81a+am/MSeN1pwbHRVPnv5ndKl6YqABRJCQEqYUB3scPRT9aW05a2Jnfxayawbl+OkndQqwHN+52cDkvckPF655SnXTJZgam+734hE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753199994; c=relaxed/simple;
	bh=wNoilTp35M4we40aqXU500Qmxbz6dITa0S2qWALzKEs=;
	h=To:Subject:From:Message-Id:Date; b=MsvkdhgDtmQ94UaE/E7kGfbd9io5P1DQYwXN87Kd28Z6QGUlIBXfdsiTEg9sNkSSshgEV+H60dYtLmA4d7YYSxun2qM0NN9CvABcxONTSdQ+BFpyFlykA+5XP/t1SslxYoex1HMrFDnQVkfC/qxwmNkV13ZuNAlS45H0YWPBEXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IOBYQqG+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IOBYQqG+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0161C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753199993;
	bh=wNoilTp35M4we40aqXU500Qmxbz6dITa0S2qWALzKEs=;
	h=To:Subject:From:Date:From;
	b=IOBYQqG+OPqSGJ+5bq5B1u5456n0sw7qr7KD9VjcGL3coAKe2MWBPBoFv+j1Ajbtb
	 gsfBHOm1Ku7IleAEUBieqRcby6efshrrqLOF6sNzF4fO0hFem2egynd3Ng2FXPnGxJ
	 TSZlMrSxYqqhRxMlmLXQHGwkQDILklWlukIfdden/XyUopgM/7Xvs1JyHf7yqdLJOj
	 N9wNYieyr7BwWJ4pExq1d3oY4FKCcg5bHdZvC49egi4NScx9RZejIcWZvhe0hLUZwT
	 lSxaawLo1+DIyHurN9ElMcyA9wfVv5rPLTzSVooGBkaZ0wQRsrNj7h7R+NOjDeT5D6
	 rsMCEXJS2bo0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A64C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175319999358.31440.2207715782284537737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f49c35c95bab0478faad1317342806bdf66a01b4543c05952b340d4f13d46272
Date: Tue, 22 Jul 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753199993
