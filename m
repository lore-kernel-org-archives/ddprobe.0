Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3CF1991C9
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761547194; cv=none; b=QYC6fQN70sFt9X42clTwx/IaggUjjTo9I6q5FVRfxRnAmFWdjKMJQq0dmbPyQjMnLnwgF3XOOAVapuaRW6ieTa/0VjtKf83vWbjiZuRt/VjwONOofgtdaROCGaADHu0Q5FekExlFb+AfOKT0WiYk1KBKdZfeignTRuLyOoTSyuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761547194; c=relaxed/simple;
	bh=jP/oVeXbF8Aq/6g7kmxOP6F9PK6RyiaJQ65WOps07BA=;
	h=To:Subject:From:Message-Id:Date; b=st883XK9+1SJVMn0fQsl02rzmDTgiKuGpjXe0U4iaU8AWf0pOY5xnU6v6wfp55jXhleUZhKxkuc991DittyMxwcqKIli8RMzWJhqk+UOOBHm78ftR0oqbiKX8vdQEAhxSE4/j4TumXfS2dQyxvSLm1toJhtTfniNDptAgVLVA3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ONZb8nG6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ONZb8nG6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC085C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761547193;
	bh=jP/oVeXbF8Aq/6g7kmxOP6F9PK6RyiaJQ65WOps07BA=;
	h=To:Subject:From:Date:From;
	b=ONZb8nG6als1qf7Q+ARpL+tFhkVQhyKhpiK1p11hXKJf22WpAH/BHUumyw9zCJfQ7
	 YgiGyaFJNNQDrhLOyT9TTmTUV8plrEujTxWW3S8gTrnjpnpoM8jGJKpYGgtsZKcEUK
	 VbUxqAu6EYssSsW/QBNTxb93R3htrT4eAGxhD+eVjFZ+Py/8GSaLCSkaCG0fpo2HR9
	 MadCyXzIDXq4z1Ts8zqqU/GsxukA70ZZ5VvPjT1JibUwvYDMssRWPg/qUHQJflIewi
	 NxhAIgkQ3OQyeMPxY0PPV5p24z7p1fEAvabLphwdjDN4iKGNALLq1owxSDGh2rnEj3
	 A/dQLEsbc9BBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DC4CCF9E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176154719361.17861.14187779147269205752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 433ded967b98320b7a6fe3df893eebecef209db7ac338e102abdb8281119b6d3
Date: Mon, 27 Oct 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761547193
