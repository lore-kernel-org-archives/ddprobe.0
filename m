Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C771991CD
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751793594; cv=none; b=MlpjHtUMZEYv21vhWdCFYXiPWthhp/KHNIfMeAXrnnBvC8YnsqNDDb9kxm3UqKl2V1qT+AmNEcMBvaYysTwI1ZoqABv2MMeJB8haRLZrTFgS79Koi1NMh0NQUoAXe2czRvslEXrp0kxrqeWkoCkVMOo6Rm/bnNwOlSuDnUM1BvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751793594; c=relaxed/simple;
	bh=85ba1OCpRSNCGMqe6oIeWncR1oBB+9m3slhHy7KjsNg=;
	h=To:Subject:From:Message-Id:Date; b=l85mGrXt+HrLhIJXQZHIM3SC6NBm03YuEts91dJF4mga3UGxo4pp9+krtR8TruecGzT0LoWgHu6b7xjW4o/S7NNz72Hrd48zhxtiKreFNDz/gMmeU16Nbu7tGJs3JRbVOASENLAeb9a4DgiwEur+6xZvaAWm8mWIMSI9QipfF1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQGtD/fy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQGtD/fy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9F6C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751793593;
	bh=85ba1OCpRSNCGMqe6oIeWncR1oBB+9m3slhHy7KjsNg=;
	h=To:Subject:From:Date:From;
	b=MQGtD/fyCoFufysC2N30J4GaHQR64umyRjKUouasoGNjdOLb8em6ohVEMP7M9nd0n
	 tk78GzUW2O8/8x/GOVNgk0CNiSnv+2/CwQN6BPvgwwVw+721qsVYbGD6jGIfcTMag/
	 4pPEXGllgAtrkfDo2pdcZ19WHyWW78iKXWfGTv8JA982kAB+lcwm6SIQQFlYbyxOEs
	 wWOlHZrKGyWXO15Ou4Bp0YzGFdvTRHc9RSDKIiZlNFHImqdhqcAjTecflGSpl0CU4N
	 BRRnQo6ZYlpLhWadHNrvO7G/p+O31aLc25DXar+cpsl8cvnfmYmNIHRAovM7bdLK0O
	 Dp0GbVrVqz7sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F71CC83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175179359357.8545.6946320012701729880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ed467d097dde10eda0045cdf96d2a65abb1d24a07103dee64902d522d2c7bf1
Date: Sun, 06 Jul 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751793593
