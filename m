Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A0B3BBD9
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 07:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713167963; cv=none; b=U/YRS1QETdTvjB2d5i3slzHErxwqydayaNlM9W1MAJyBKPeLurLpauYwVnh6L57rWLoPHBVFdVvMuAKjqigxn720ClrjRfjJh+9KNlU4sYbO7tQveWQjaiM/2tojk2CsjPdqOb3Ky/VvPHKe66gk62CVezkuoN/oJZIVuEjN+4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713167963; c=relaxed/simple;
	bh=uQe/w1GPLQlcGXigFVzBIenEQ3KbkmvwUbH9OeRHktA=;
	h=To:Subject:From:Message-Id:Date; b=Ypdzua4jLDdKEiBcWHIUsBCzL1SRDGruu0RoB4hnXxf4IYeDNyzS6IBffEiF+5pd3yvJPR4eOl7dw6ptKW7WqVF2wyMAmWjv3M83eKNnKlEXWGnzKenJxv2QLc4IIj7ysIAI+4U+hEXBoSp1gEWPkAs0vxCuHs8KELnXqocQwq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=clNKTghP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="clNKTghP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F4EC113CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 07:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713167962;
	bh=uQe/w1GPLQlcGXigFVzBIenEQ3KbkmvwUbH9OeRHktA=;
	h=To:Subject:From:Date:From;
	b=clNKTghPjAN5/D4Y8onOL8oxhj8Gb5rTz70CLAXhf/D8LPay3Itha2cby1aAWLw8a
	 EVUpHewDVcpcMgDrsP84PxSwic1ODOPsUzHxAwQ4pYhZRAu6mxUAmXUUR5DrWUMrZG
	 ToWZ2AbJP0YjFwMEDLrEqPIC6iGwkHBddXO9rjI9+UeGVkGvqVb9TcNOO+mgAWaRan
	 6aNf5COa96Nw1cdXwWOahp+Y3Jrfpn5TquPLMYg04P8jvAy8vpq6Cv7eU2McefgDhS
	 Rjf+XFis8mFr3itAIkVUW2y9eTxvrtdDhUIgs86FOLboJ4orgBbzAVDkvEiPTyIKxX
	 q4CQFmz/Dkfrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C62FBC4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 07:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171316796279.32329.1320643153116282673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a66461d439862536cd6e24ef96b904f827221f67c78fd6a52f50eb6f488af73
Date: Mon, 15 Apr 2024 07:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713167962
