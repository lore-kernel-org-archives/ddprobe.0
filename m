Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF0B46B5
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758382794; cv=none; b=lxZQA4OKBoU5Zxg5WVgFsJ/yv2o/HC+0yJPiGn+BBZ8Vbzp3grF5Eg7+PL++/vFcBTvH6rFy5WpE5xfOfyVQbeQaYdrPuL9cj11KC2X6OGEUiSf5RePlZG3NAgF9SNSlZsHgUfjr6hWoSEyx2OPqeCDusVzuHelMGlcPD5mUlXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758382794; c=relaxed/simple;
	bh=2AoQbVlXEZhJbCJR/jKRs5FkU12IbcldWGExsDWI0Fg=;
	h=To:Subject:From:Message-Id:Date; b=OFpbQmkgjcaGZda1+5Bsy2MhsyBXHwhGHLNfXCMEvb5btNkq6dcwCoov/P+mtzs4PMukCZO90h3a8R/+nlExgeBzeMCjciLDHRq4DOmkG5qIfGYkW6EYFjUYQtyH4j7DLwYtImkBV9tj+qTmJhULTKcjSIvkPGdbC/K5lVnVvic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecIcmSWj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecIcmSWj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1E0C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758382793;
	bh=2AoQbVlXEZhJbCJR/jKRs5FkU12IbcldWGExsDWI0Fg=;
	h=To:Subject:From:Date:From;
	b=ecIcmSWjr6I5sKVihr7OO5yiP5Q8wOuEcjeUcvptP2dCD/X7g2j57IBycj3H+mhrG
	 Jg3wqeDTL9EQsD1jWdeubH7SvFkl8AqEwL4adiULodK/Zfi3CLg8XMiZs+ruS/Ek5k
	 29pi6k5l9h9VrDOZkADxw2jX1M0wYTpj55+OUQkih3x0WkYrEWk815gYy8NGyeifXf
	 U4CakamTRrYx7drCZGgIPU+FUjOPqSiPzJ0Uw36EGeDXnrcPA2CR8yYS+FO1OB721q
	 J8843ZLsLpco3iNjr8p9dQSCPiweVbfR5UXH7h7yjaNz+OBSMiDP0TS3y9x5L3W3u4
	 wP7rnhkes12tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F8ECAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175838279359.31183.8229143647162430857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eb41e7e3b9a2dd761c739b471562d8798a4d96f1a65e5de01d97c6bef66fe66
Date: Sat, 20 Sep 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758382793
