Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3685031691E
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757710794; cv=none; b=RFeXyqN060WQypMf/Oy2Z1Vtl4cYf/vxTKI6jSIEtZ2ljx7NpN7lOgxMALx7/QyIJcKH+0i0UF75SnfwdpLC8gZrZ67ZbZVYzkNkElGtFRsEQN1/U8QeZan2w+Z7NU5xWvsLtd8ywfR+t3+BFD05OgafJ9sYLAHIexC5PLnQeU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757710794; c=relaxed/simple;
	bh=5Phw7k0bkP73RBLzkR4nM2ZjELSlgO+gdV4J+gMSpjE=;
	h=To:Subject:From:Message-Id:Date; b=PMwZFA+I+xNh1KL9XuPxiv/TZpSXpJZK3MB9RmyoyeGzS8o9NJwDT+IXEFRc2A61T4G/OCspMC/2b0UYGwBj9S2W4MmAXiIiVA2Emyp8BfuFDus2TGVc3vtHGLAWn3Nub3X7CgbV0S69I3DlZb7Z74yrBe3paBlLWMbvuPzGr4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H1Sa9j11; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H1Sa9j11"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DB6C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757710793;
	bh=5Phw7k0bkP73RBLzkR4nM2ZjELSlgO+gdV4J+gMSpjE=;
	h=To:Subject:From:Date:From;
	b=H1Sa9j11O3hIuRUGYOnEW4jRLZ8Q/9BrD0Ihj967IV3QInPpvMSRlZNKwnItphcNG
	 48b0qWHhM1UP0R20YW3x4MER5EgBgoxUFR5/7DTA38sCLPoKsr3ZtyM6rkJ16+E6Mc
	 Wpx5mQuS7mMkJJycs4fDyyjOttcfUcDldliFoIugBcN9ASziSAsrq4XHWUuTfw8eWP
	 iefo2eScvQNcqheYz/JvJLVa+TibnmwV/QN4aqtbTeMg36jo2giCpES4m0p7i8Fr6j
	 Pp3HK/HdiX94opr2W5lqkv3RsJxzm5I8VeGnTtSskalQcu/n2zifLgahk4+1vyKmoZ
	 g27yuK5lomuFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC48CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175771079358.22044.1336274361644345442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecad7190e7b00c9a4bc0ee8ee82557e6e8ac748dafc74db455d446bae49a9481
Date: Fri, 12 Sep 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757710793
