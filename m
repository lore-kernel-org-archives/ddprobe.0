Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3864026BDB6
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 07:10:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739257855; cv=none; b=I3kzGjYOEIKXVhaCh+euwQd0X5BfB0tbLRvruKGmGwnf7PJg1C+Lb39Qjewp5OJakhihD+MJTZ3nTR6YHSYd++Q/9GsmRe+ilhLdVLNh/FKlv1NeSKUxOhbs8+SlTctAG/ms+NyQpsB9mr8GCgT3b0o9tsOojBJOw2vBaJJKqlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739257855; c=relaxed/simple;
	bh=4yB4c3bCchgq/SU5vPB9cQ5fcSmlOur3WSM2z4Ql/Rc=;
	h=To:Subject:From:Message-Id:Date; b=mV596QC+ST0Wgi01+7knaykGJW0eWGBTkyzdZhWbT5K+11dQNiRr5hMabE/TgVJ8rJnBhrRnrDYerPBETmQh8/2LeBmrtSyF4hNWqKiQR3F5siVjRv9eunPOFYuMnm5X1hW2NG34VsstN1BYtg9uDWjG/v2OxN1xDYDTxkvNWNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FCdTGsX5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FCdTGsX5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE1BC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 07:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739257854;
	bh=4yB4c3bCchgq/SU5vPB9cQ5fcSmlOur3WSM2z4Ql/Rc=;
	h=To:Subject:From:Date:From;
	b=FCdTGsX5OrdBuyNEbyinAa0Gtn+HZhv0bwGYYTciCONTNRt1ZLN+FhzgEqsVNz8b0
	 cwxRk3q5VZlInbtLGTitmpLTfjllAsKytfGwoR8FghPfNbNJtOb0qR2EZNKqzzeU3P
	 NLWJrgEEo7Fz2E4gaWDPphKvhMrcfc8ztaFUW8JU+LL40HyYa9NbOJc5RM0doJMOcM
	 FuzYNwWVpbL6rR79KmykmtQC0mVk/iHNNX0OiCfMB1H6Iu0ZkLz5VfviEL8f0Ykkul
	 PFF1BTT7bYz4CRqn9NpLPpunEM7bbR5sz8MVl/tfTB8rUFHpTjppbtMPbQMYqekUkM
	 bmxuZUQ27ZYkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35EA4C0219E
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 07:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173925785415.24021.1859148260053867141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5008290f49658816a7704f20f09c77fded1d8a3a2c942dc23c960cb5fa8f046a
Date: Tue, 11 Feb 2025 07:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739257854
