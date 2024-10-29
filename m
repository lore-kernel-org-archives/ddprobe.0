Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269F51CD2B
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730168154; cv=none; b=Ru10Ni9gQvmCQb0WJy2cLB5AHU8rjhiwic//lc+uCrJYJolC1Y3wiwM7rOQRc7cIwyyewX956gWRfzJaBzAKNnHtTe0xSjofnX2SHPuZnrMOC1UWP8f3OgyDJ1PfWcvpmkply5hYxn8etf4L+yBYs46yD9LTe99tbJWiSsqoWmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730168154; c=relaxed/simple;
	bh=S++ceBtuwxdHkEJ3BTSBfpYUJBfIRz1Mn3Oe372Atyg=;
	h=To:Subject:From:Message-Id:Date; b=qxVdKgp9qsWdaEhm+2Dlmkq8ejfypZvrkrDhz4EJhoTSGr1NJoFqzRmqe2xikg4S5AbicTBq/zzyKc8BGzxvVXunSYdGgRZHblN1YViTsUB3kQO0+IEzMPra7hPar8AWYSRhH2yB8QZrDGryYfQ/NESmLviv1uQ74k+CwxqTIdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OaucWfpQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OaucWfpQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDACC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730168153;
	bh=S++ceBtuwxdHkEJ3BTSBfpYUJBfIRz1Mn3Oe372Atyg=;
	h=To:Subject:From:Date:From;
	b=OaucWfpQxTc/vEg668rFGvzsBJGpWgkVJEXnZSl/VaJ8tdUcDpl1KAMFHZ3YCM0W8
	 p/Hnw/VgU6Xf1bX0nfHxbzp6XHh3B7z/1iohJgHCloGHfq339XWeOSI2Jw5YU7DS3Y
	 AdTlvpQcVeND1HjtpO9WFpv4aak19IdSYyzj2npiweRlsDAaHifl49FHSJ8KhstNra
	 V2dkVDJnImWeeer6Yu236EVs/IE6FG3BsaFcPWhbj6m0Khr6592kDgXjwOjECaR/ih
	 0kIt84a/SBWSFaNvC52PCZ1HQHrkYdAxKPtpmQ4P6vvTlSAFVtC9xICyracDePx5vQ
	 OCx3TRcfZ9mTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FFED5B840
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173016815361.9390.4886475329486033515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37b580043c049071e8dfd5d1c5f1571e5be15ed086bf705fefae0462ec6514dc
Date: Tue, 29 Oct 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730168153
