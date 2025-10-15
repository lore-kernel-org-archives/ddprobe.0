Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B1C15A8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760495994; cv=none; b=iY8kcj84vHly3fEjh9bu9TK8Q3zpfHGoKW4aTKhV3nqALk2XMItMsgEpFLVjAUyDa9lYWZcw4XOIC97PBCjzrYP41npoMpFMz+IDEbOuyPW/bvZCCvvZKG44LR1Y8CzFAvBUEPcPi6UGRD0zXxE+V7KZmXBK/PMAL0vnI8pZsFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760495994; c=relaxed/simple;
	bh=IUCHdLTc4RBC1WBWpb7KwEjyXH/l4rho9hKzxL7xZmo=;
	h=To:Subject:From:Message-Id:Date; b=IlUCVXGobIPiZvjQ1QYRE7GXcs1WvfvmnJeSBw2ng5I+k9Ghdlw7MVWsuMgpK0ZWsgJpR1ZIRvlJJeegjjDlfWKkVsRaPlKmETKAhuLDhq6p/3pE1UrfOG9N6EgDactYh1/D3CNY0Z0lH3Uj/C0XT4pbxMYmaSZbH1Ui3AofPl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GSbEIGJC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GSbEIGJC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2343C113D0
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760495993;
	bh=IUCHdLTc4RBC1WBWpb7KwEjyXH/l4rho9hKzxL7xZmo=;
	h=To:Subject:From:Date:From;
	b=GSbEIGJCFO4qp6OWZDMe1kPO/GsWNGoWrC2fRcdTxBG1cUjhOha7f3qn88RBGuSBG
	 dLefHlh6L1Qpg8aTu/AfRahhLa3J9m39R3PWIv3fTv/F8bxA5mbZHJGwllwaYMydQJ
	 SWY9pU0E1t3g1fdtRoRHq2YiZVXSloSTJoqAXTqyuAZ+Ik7JMtJrBGexKO/WQly0wC
	 PT99ZPOCfbLgZvbH0ijXF/3iEI4f9k0avjLAEYY7nb1C2rIw8/I905hjOhXkKgIj++
	 izC2FplUf88x1cWKLp1QlkH/NEHty+DBQSwEg6Alqr3GrplPfEBTtjEz5tdXbs3ANY
	 Z91Je+bAb5HSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F45CCCD184
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176049599357.6647.9270134535346948972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e4e1b712dac7f4d221dc86ae24a1e4157f05b8d6eac2d0c56a93b8d2ee6dbbe
Date: Wed, 15 Oct 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760495993
