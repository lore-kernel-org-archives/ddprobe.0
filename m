Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D0DB65C
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727590554; cv=none; b=uM5vJM80RZYiTN+DQC+Pw8EmZNO6tadY/d7VYTjJADGKkOsT30sZh1K/4wpHBR7piSoTwuTqyYYrgFIsxuhdBsXWL5GOzvQ6q2rnbU/QbOs+HE3BCfn/AVWwQopPzlWJRNvuJwYb5DpHiMx06vRrYoMT8XlXzmnoBcd7rbpYPx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727590554; c=relaxed/simple;
	bh=zJSK5jJXYqJYFYuDLONDQV2B+LpHeN+LtrVEsjN118A=;
	h=To:Subject:From:Message-Id:Date; b=KIbeop9nUzIA91IwueCMwemkhlSlI2/PqXz1l0F2dvvACcqthM/BoYKvWgcnMGAnI+HvoQ9NiEPO2cFp2GLjktvXOtLNrNLKbSscqI9M2v6aijElRvvS61dlAjQoXmJ4L6elBaOkgbut3ocYOc+7SBBL9CLmBxlJ1BVGOj6rAEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rfAEy3+9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rfAEy3+9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C05C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727590553;
	bh=zJSK5jJXYqJYFYuDLONDQV2B+LpHeN+LtrVEsjN118A=;
	h=To:Subject:From:Date:From;
	b=rfAEy3+9DAhgrFERg5/zXE+gw+zvfay67bQw8ug/Nqg1rHM85nLSu/N57lXoJbvWx
	 sz5J6SFKovmTBDzuD+imigy8gysVVO6evnNw484iKPQg9qjSBVNtKamVBDvg+3s3ZK
	 l0bKz4SURaW/OiKdGwhoJDTP6h9ieQUScCxel5KfWcM0ZLu/Vm/Ioklq37yQGS9Y49
	 G68gvH9E1/j0N1rclTtjKTJds5GXR8KINJIvgj4LP1Ymrp+6rwjqlEpvkgMtv8z6os
	 dBYioyaZ+/e3h+mDWWw8ayO7twP1ixLbT64to7hyqULuc6fTOFEEt3l2NwCiF2yza9
	 3bFphEpEc2p2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9620BCF6498
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172759055360.22928.15110510914801397049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44320dade27aeb264d96984acecb1f231d03a127966530ec3ef5507fae884aea
Date: Sun, 29 Sep 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727590553
