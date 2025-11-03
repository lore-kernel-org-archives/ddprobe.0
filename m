Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A7B280CD2
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762138194; cv=none; b=Xb4tWndQKxlA3ZWSTAYkKPQezfQRi+gWJ6SdibmzW0aLk8F/RWicV51qMu4WKT8HYCgXJE8PQuE5CwoGciUK469nsHvfEipmSIbMWXM/sxWUw6DXWovSqWuF7BYSbftnHfSmIPE5csNGrUk//NEpixXWsNZc51LzqiyW5Q+Vf7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762138194; c=relaxed/simple;
	bh=IXHmPnuh7XlWdmh+gHCSqfC7MM71CKRov72D5vUTlpQ=;
	h=To:Subject:From:Message-Id:Date; b=QixFBBI80rLraiagExDj8qrXUFMVR5/YlptWFxBOU+MUVZAsxZdo6tqYfa9o1zccYrgdeRv0nAfZ7RqGOAdPdDoT3Pw2a7FU2jGNqtQtISWfbGPpr9WvYeMsF/ty+ysUPCICvVdhuKFE6PkB+pcfqcc4jNGvIFGJ8GyiZPVPZtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X3bU4M0O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X3bU4M0O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5165C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762138193;
	bh=IXHmPnuh7XlWdmh+gHCSqfC7MM71CKRov72D5vUTlpQ=;
	h=To:Subject:From:Date:From;
	b=X3bU4M0OQVVjLYNC5ZVTgYTva08UaK0TcyymJWHYloLkbAD98uR85hLlH2FWkZ0kO
	 IcnK0UjesbpqYjYVyzpFWJHXnaYnu9vIAuObw8DM+MSBGT/uQHfcMNoVyIYVjulTl1
	 bi7i6ayCswVZZ86S1v0Vl7VSyCtRhpSZV3gyzWDfXCTrGGuTFodKvnPl3gvFOdKTa1
	 4BXWkPsQqEsfzDsTNr3G600QdASTnDHp861dMeXEXohAymUFa+EUHpehGx6THpWlYw
	 h8KO1vqR3wBHvIHVZ4Og3WFjGEBi04v93gjz2Wje3AlV6ocBNn/6LxZFu5FUDKuTZ0
	 i4Hi2uoDCiN5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921ADCCFA00
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176213819358.31095.17817795218555018547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a839b8ff5c208693219fec06da589a0eaaaae9ac3a93900900c2b7b1235b82ca
Date: Mon, 03 Nov 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762138193
