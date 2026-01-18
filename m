Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289CC500954
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768713234; cv=none; b=RanpvhpGb4Dy6Nsm//ftClkbRclfm1mkEavdphEr2b2CiYPYUJevw4NolwfWsggjApimK8SUv7JQ75mDnBk4paqgiNoRluIQT+FwCXgFXT5v61B4XOIKnZPz2Vchiz7rgIz79heEr9X5jkYm8zN4/MHwzB4EgQWuXEGSc+hxYL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768713234; c=relaxed/simple;
	bh=+6Qjaqvz5xiKQaVclz6E5HrxhbFnDCy+/kbohvkixdg=;
	h=To:Subject:From:Message-Id:Date; b=O7up5NSwgbARIz3oY7C1ahCfZUdFNCFF/Azbo0Bv8EiFa0r2vNEu7qDRbfPtjStpwJlyTCQuuSDePWtcopSlbrb3b3rnJyu6ABzo53dlAYDs3Dsr5LS9MeS10g/Don7CVfWydgnEgyfeqNiV+dm+c8zTVZXcjTZyFj9TXbU9hJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGvswGEX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGvswGEX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B33C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768713233;
	bh=+6Qjaqvz5xiKQaVclz6E5HrxhbFnDCy+/kbohvkixdg=;
	h=To:Subject:From:Date:From;
	b=oGvswGEXKYDxzT7F/+ToVbAygq+IeTa7p6OK7KDxiNPtBp1wQD9CO7+2jJ/IkT+PR
	 1Sp7fTsmZU/tvFg2c0Plbm3E7jh42agH8x2T+A0t2jpiaqEIQDRw0xD4htv7yRYskK
	 UeQPtOz5dWQuscWf1IL1J1PJJa2CfSlQqLO2Bl656pWrP0T32RljkZ0qQYS5W6aPqf
	 1x3YZfMHtlsnRLnmfH1Wjk6InNPx90vHOQKTgvjaoeOTVS+wOvQ4dGweoNwSAutOQ7
	 y5mthi9Skc2DbDqZJe9ZpgvGbHMOPKSPbkfIgS8E5V8pZuGzM5HH10gYZ7flReCFsL
	 x7G9uIpcaMrwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963BEC9830C
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176871323358.6029.17167133824333040892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5878481d096a8e8f2f8028c1a2767d7068ed46da78d4398514e36be527889b7
Date: Sun, 18 Jan 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768713233
