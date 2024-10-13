Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239C4231CAA
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728821754; cv=none; b=UTi0MXT9tp1NT2IbMsbxvJsPkapF1QI8agrn4xiXQPB/pp6A8Lo1Cf+3/HvFch3aP9itgDOSIOGmfRUSMUx+AQ1owIOLs77vMw8Y/MkodnS7w+ewDt9PxgKjV9DZ9vCjehwVXnSKQkJHaN343O7bXw1ziBGVjtzWhL1cQJFMnZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728821754; c=relaxed/simple;
	bh=DmJ0MzM1ON1Qxsn+R8tmoCP8YOVwTrk4ZsBZsEQ03OY=;
	h=To:Subject:From:Message-Id:Date; b=eY9bxLExOXi3qz6VSuCrlwwaRd0am38ayGL2jLv7oX3Po/u7Y5bSqrYanjLB1ASb9zz7zzV5Rvu4pK12DzeyznTiccW6x8i3/pLB2qT/0NsXinqAdnUNs8lpVEZbjwI7GaBDUaWFGve5WXMZGN6j56KC5wx9iXUJgaLeRP++5qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qhfdnZRd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhfdnZRd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A777DC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728821753;
	bh=DmJ0MzM1ON1Qxsn+R8tmoCP8YOVwTrk4ZsBZsEQ03OY=;
	h=To:Subject:From:Date:From;
	b=qhfdnZRdeJOP2IpFv3sxNegay1BlEeAzlW3CwXknRLD6PwpXeAyiUHtNEgDedytAN
	 PwnewwMtXpsJpbC+MCKn3nfPRgbike2nECGnSKblmLRnWMKvTRT3vCJvNw+LcVV0hs
	 xae4nEnO/tDEUUTAPJBtL6yH41pO36At5odtAxnvA6oJb359LcjJeXH7aX2eCE07DP
	 R19LShZh2/aXKJ/sl0mO2Zc/F/QBZ58BDw8lT3YMWL29s7ku/GOlKvcNPhEira7O+1
	 e0fQkw6OxVWVNn3l8v4LNLM1WUHqFSLpKvEr0d1/sJ0oSior4aFcWn4g7LQJEsyKq2
	 YtrZb537Dsu/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A513CF2576
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172882175358.30328.11728894892521463585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e74d14c0d55ec21f711e05e087ccc2910d13813128e4c3b1617988ad49a0f451
Date: Sun, 13 Oct 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728821753
