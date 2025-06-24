Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D7626ACB
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750745394; cv=none; b=RWfz84YrqwekjtOXJ1Zgn5jXQgrf4+By7pWI9Su72cabndx1aAWpF/pI4K2Zjvf78PcT/Brs6fg05U1vQOYSSycro/ulDfaAsPsCtjuUWvArbUgHR+7IZWJyAVC+nrt7V6VUSZaU6ssNi9Gu/HE7s9IFhgBOZL5oCLHuDHkK64Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750745394; c=relaxed/simple;
	bh=3u+nAuxoqWzYJJImmAcpXkuNnBf1IiXssLGladp+tQQ=;
	h=To:Subject:From:Message-Id:Date; b=Sx9HunNKQO+3G60qGIuffu7eqlXqdaQ+EWSk6/k7UJsyANWX4qXUejfaJMiuD48bjKUnmft09HA2ty+McPHIO+ZkAjQxq5TvsH8odm3PItrWfmJQNzS3/rpHMB7XEYjxGe1zqgvxU9Hi1Zy7b0fTWry3Lo54A6sDct1GDJ8WjL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IdePOqtw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IdePOqtw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB53C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750745393;
	bh=3u+nAuxoqWzYJJImmAcpXkuNnBf1IiXssLGladp+tQQ=;
	h=To:Subject:From:Date:From;
	b=IdePOqtw8Y3lgAYD+Xvov0zbrY39GaeqVktEq4QlVPqYnMXJ+M+fvmNdpyqQ1s5bO
	 hTxK3lyyoO47v/VlMP9JaNHLVEC2FDl5/unM96LOjs0IaqH4ZIj2Q1JeOIw5Uo7dUr
	 JCy2bGvaIQHKdWtfZNUT4YMtSsMMsPibu/WOUGd6W2d5nygtx4DKRGaUfRth4iPDt1
	 TgQFo3POuzKN21TpEO/5iIX2ciS/3a0knPlNveMbN3012lKSnT9gxUrIwA6X6QmPir
	 8w4G4Z3yTxbWQkWkI9RxtYjewtoKqAe1oJShTvJVct8lT9bpyh0Qk/R8iaSMVcBQHS
	 SIUbPh3PhOdQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F576C71157
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175074539357.5253.1440719133136748927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e82c48c3031b1fac1eabb2204ee6af4da50c7fc516ac7d71cc5bf65f661e0cc
Date: Tue, 24 Jun 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750745393
