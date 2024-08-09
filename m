Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414421953BE
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723210554; cv=none; b=JnVJ3gFgheEbmPg1GU/46kMCJgwNk8tfDpxV1AEtFJQHuVgdQCZGPE46oE10/H8MsyuTRuGgCJtwz3Uq4onF/wtr7HYpq5VALvlM4QTcxw5oEgWQj7wN0Czx+w22Yx82w1+M2u+L+kqjj+sGus5PydJTM0xNNU7qI+wghGQWpBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723210554; c=relaxed/simple;
	bh=a912M3DDq4ke44sB9V1Jkc/a3NeOnNkVWGgub5Gv7fE=;
	h=To:Subject:From:Message-Id:Date; b=uIvlaL32M73nTxzzOVlAuVocCapRnK+1Fj5EWXuK+0Zm3Q+riaepJTq2h5MYdGbvnByrXxfstyWYjENUp4BdqJMxz5Q4zYknGarGo0Ii7PBMoa8XXJKS2O5HMZd83BdcrbtSX03QJWNvlTmluRN/xKQ+OV2oKL7InF8VdIctoRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=szKQMlEx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="szKQMlEx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE8FAC32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723210553;
	bh=a912M3DDq4ke44sB9V1Jkc/a3NeOnNkVWGgub5Gv7fE=;
	h=To:Subject:From:Date:From;
	b=szKQMlEx1/DKINx9KGDaELBwx61Ua+PBZMOpxerZEJZ3bFeRy3BNY7Xh8919Vu3xe
	 9GjJp0B1zX1MW8x+QpJN8nwtWzpjZ29iD2w8Ix2E/IzgFtXNbzIDupUbW4T65oPylv
	 7mnSnHs0Vl3vh2zoArtemh7qA6PqFY7w85HUCjYj4WccXRbKH2u0/2PquuDhtGd9GY
	 NwnfvmPi71LlxdzLrO3WKl1iJ0GnoE09I5Y0PbXVZDm8cho50ehVahQAmawKGPB4mN
	 2SKvIC9wicwrKb14ruuy9tq0tMV2ZkLwnSenLsFyJ2XUBTYu6gRivTmFEQ8n93lqyj
	 XIpgi6EAGm9MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99506C52D7C
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172321055361.4563.3035828925096729321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d19915b67d5e6d8b9fba0b7a31bea95e4033dad3a62dc101d0f6034bc7a87ffa
Date: Fri, 09 Aug 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723210553
