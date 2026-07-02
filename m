Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F6538E5ED
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 10:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782988714; cv=none; b=lurFMORflBLoPcrn3QClOioLQEYwhL5ofXoa3Ikt9hUO2CkAXHT8LkOAvzE9jASU1rL4KzktOYMBGJ5X4wnxn0M0QMeiMP35wpkfMUaKmsNUqvM9Rxz936wZUZ4W38aJwAVvSqPBW07qBhdL4fICUavneW4smWSD2WizgkIPNGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782988714; c=relaxed/simple;
	bh=7DqNG/HnhY3RdV+NF34Z7vfKXSD39QCy1/gdqazNuFE=;
	h=To:Subject:From:Message-Id:Date; b=fOXaOevXOXNeQFzr0dPXvX4bv3ZcPEJtR42TDec3gE/kbWkoDTPPeACq/jDPRNFmqn1gjSQ3s68dykku5RPyCgmOp0Gp/SX6zx9bewrVeajaRPwxpLILUzQbfXy05YzjSQSoLWJb/phQzbpzwABJ97Jor2grlMpTwQIWC3W2sBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AuwGGqto; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AuwGGqto"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C96DBC2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 10:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782988713;
	bh=7DqNG/HnhY3RdV+NF34Z7vfKXSD39QCy1/gdqazNuFE=;
	h=To:Subject:From:Date:From;
	b=AuwGGqto10CNDHhJxxFs+dM2Qo2d8a8dTNb0DYxp6Gw7GRJZ/OeOfZvBB26Erj1s9
	 ogAp785xJdpzLqQWy9qxe8q11LxfPmMd12gWwoJfG37YoLcOjOJaMFW0HT7kyNAyII
	 eJOHkJNrLTkP8LCkaBYYaAMdUDgd7F7H+tTJ4LC+V+BYugZygB6RBenSk8i/QtPg6R
	 SP/c+qRbMY+w/2STnv/pc+yED458DPf/DkhkdIkyJFOI1cAsUL7M+c/31kYGf1GsHu
	 TwDhXNJ2v0cXYxdfiKrRG7f44LVe6bPhFpMo73+88jyiPb364JAFyysAKIHPo+Ruex
	 ACMduNLXy6whA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88CEC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 10:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178298871368.4254.8293211843715643064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7e048dd1003394564cd6a8ee203e02f161dc5e3ad21855343c68b531ad615de
Date: Thu, 02 Jul 2026 10:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782988713
