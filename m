Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E9418D658
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 06:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765176775; cv=none; b=FA1u6WiRcjA0jqrRUnwZqer9gjRCcG5m5xStmjJKRKa0XuStzxXxVsVfzR7xAjKLE38E4ViNYR9/dCfRtcRLsxtLpprD5RtOowqR3vA1SPC60wVHK17kKnPgisjBnDwRdVUFkBhCLQN+JrGZgI3A3o1YOKPNY7qPk0D7me5+Ta4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765176775; c=relaxed/simple;
	bh=vNxOZGOVSnsfk0F/BQtZdS+utSLq4C/IX3CZhyVvutE=;
	h=To:Subject:From:Message-Id:Date; b=sG030b/1c9zTQydHpkXUuX1MAc2KKRotDPVJ47CBw3xc5QOnTzSwrwqM2Ur7TnAKSSKXghfiDDBKLItqwu2qJ74rrhEqY4X67iz5g2BAOb3AblxyKIUoRV0OKOIoIBuuLZht0/ENx5ebZcTEbdNl2M1mySebRkpq2RnKYbHi7co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QGRBnwSw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QGRBnwSw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F966C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 06:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765176773;
	bh=vNxOZGOVSnsfk0F/BQtZdS+utSLq4C/IX3CZhyVvutE=;
	h=To:Subject:From:Date:From;
	b=QGRBnwSwt2dQxJA0nJE3rYGncMv6pdpQEaGjn6YHb0WoNv8ReOgvb93k4J+r9f9mq
	 gWhgC1kEeRo8nXwTqRnAkFor0ytvGibZRsfXkG737j/N9sHy/B5SzecTy4u1VBc7p9
	 RhigQPOALVcCyhY82sBWhkdL5bJdkrWzt1rYTtOqO1lU/SPcKXuWm4tfIEGkzhz2Xg
	 Q/kCzsPD1p0R6jl8NBMBmbd0q4sPi/NhoxscGNEhfI6FhrGx7atgRaL52tyRgTrh4a
	 OGrpDJb/rjDFbuziK4jIG/zC8v3vqeS1p5FkJcyH5iUAw99X8h5UejgDZGXgX9I2u2
	 7RKT9mf/gsAOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90663D3ABEF
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 06:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176517677358.31645.6831230419272506604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d4ccd7fc2ee168f4f9be3bbf82a194facfaba9f42c2e85037a50b4ec78adce5
Date: Mon, 08 Dec 2025 06:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765176773
