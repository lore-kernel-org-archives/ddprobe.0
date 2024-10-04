Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54EC11757D
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728005754; cv=none; b=ESsBpEvxY/guk6dVgfnQnzhq54LQD5jVsNHZFHKiwtIMacV9pcSagi6op/PkG3e7x0NMPRFNHC89L3Ohv5/gnRGYHYco3s8vWRajQSzaVZF2pIHvFgEIzbgfPwAbZI3ilLtRlIr82wvN9N1azyE4Zoyzu2ALWN5nRzVyBNPdSAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728005754; c=relaxed/simple;
	bh=j1xk431GYaq85/1eA0DQU1h0A/PEJ5aH6ZbxXUvZRuU=;
	h=To:Subject:From:Message-Id:Date; b=ERpr5kCeJ0DtA08VtCXKa0lddFPkQtTrZQJmXoSSBxPCO66O16G3Kh7molFMy2QoceZWpljsz/Km8IUm/VFkmgKkI/DwsCTV0FLObnE6e8WNQnZSrf0IMlern7Uajk2EFwJJfnTG62wjfIiVp1/XVZMHrL8q08qtY3Nbx52UhWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVhx/T+6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVhx/T+6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4786C4CEC5
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728005753;
	bh=j1xk431GYaq85/1eA0DQU1h0A/PEJ5aH6ZbxXUvZRuU=;
	h=To:Subject:From:Date:From;
	b=HVhx/T+6e9AVxxOZd1283QRbK8kKTy6S2oUD+1A5sqfAV+BQ06WCRYVRfz1uhtC1l
	 0l7eLCjF2JCq5v1TyGi2CkS3G6WrCt4PzZm4wGwSPFI3nIhnIc/6m4Tpg9/nn9p7n8
	 GTQ5dPpr+KayAK9LOer5S00jBrMxq3sATpNSwqJ+fsWb0/WRvnJzW26itfoKzIPi7G
	 9DKOK0qi+1i03/pWo4UEhvWXCZJ2PRkVjSe4ZG7f0vfdE61BG3eQrjDstsJ8t0FJ22
	 3sLOA12MYdxWx3lo+UmTYGnfeAY7sOkCnjzT1Yw/c3wqwHRqcwIw1rz1t4gkwAHhJL
	 R/p3tWksDnJHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC493CF34DC
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172800575365.8996.11519811517555697949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd7be6c910c3caef871f1e1378f525c4bc26e71886ccb92ec7601434cd21365d
Date: Fri, 04 Oct 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728005753
