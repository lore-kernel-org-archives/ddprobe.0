Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DF33B0AE6
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 09:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777283854; cv=none; b=o3lpHqBj7dD2hKDChbUlSCKjfiGT4RZMf/LCx8lhEQVm0tiRPbiJ1PPAtrCSO0MNd0Al03+wJRMZx7x0W8mBToucGMYGn+i4R7y0DnTNCopFKnPUKlHpzpaBZxVgo9xZQb39or0ETSDuU1df37NgUlqF0jg91w9OiuDyihi2xcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777283854; c=relaxed/simple;
	bh=XGA6NeODhLa2B+BQre01YPBoJptIMbuPVXE8dky4dzA=;
	h=To:Subject:From:Message-Id:Date; b=fJ7kl0El/1lJvE5OK2/e3iEQ+TeCtXNGnDyDdMvxbCUVVfQDz6hfcBbP93sCFczwtIajNn7x/o5ieKkAwfL3qKWIMTWVSY6m7/ZpZDb8342c3KBVwl/aFJnsmCpcEy+za7oUDf5TjEQ6oxAAaVGQsAu1GPa1IpzCdeCO9TPoCaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MOCl9tqB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MOCl9tqB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C698CC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 09:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777283853;
	bh=XGA6NeODhLa2B+BQre01YPBoJptIMbuPVXE8dky4dzA=;
	h=To:Subject:From:Date:From;
	b=MOCl9tqB1HujMXUcjBa/1itZ7qcJKYypgx++iKkdwOgqSrSBhMw2s5hkq+cszMOue
	 zl3/TTq8D4bveKLaJrHgDTVv+Pln5rZOrPfuc/UtSYUi5mia0tGrhcKmrzFcnjE0j7
	 W/j4qlLBZFAU8S0dNRDJl0Xm+frw7jXYyEi5P9wuSYK4KL/+Rw9I2xdwRmqLCFPXay
	 d9epGTrYJaAv1teqebRgbvHkbHr73iqdYxi1RictXab3MZLCIPyaD514ZGmcqUMGOx
	 loOoFCKm4Xdrnfr9JXnNshvoADudtTdT2T9N9Db4VmyIEIXATHxxWKDcJlgIed4m0X
	 y+hcPZmg2Hs+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6BF9FF885E
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 09:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177728385373.31555.14669869461059470586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00b645459b6fca829ddb6fe7f07f91ab5b2ff74b5c5f09f0ad96eafdce895d85
Date: Mon, 27 Apr 2026 09:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777283853
