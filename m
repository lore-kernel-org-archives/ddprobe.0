Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480E414BF92
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 01:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781139994; cv=none; b=YbFubLGWNr5aw5CQyrH/22W1nmQbEo0kxHtljocNYxHxS403cgr4czlyfcNqXqDUBPNxFKtzSKHR4ZgVJMynYHk7LrdInr5E8iMS+BwpjueSvHkfeVNSuuHHEPiGJSVOGS0Ps7KGI7Ry7u6Ffc5SNO17rQVZva7mHISLiIfgYKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781139994; c=relaxed/simple;
	bh=f34vDEtL+XLp6zBmE9PhFRgEJrd2OoGkg3SYxS74D/4=;
	h=To:Subject:From:Message-Id:Date; b=bYVNTrotoXELryAAQ9X6OwXivOd9tIQzK6iwf1PGh9AU+NoOHUyo+hRGzv19V1DIJEl/yYqlSg2LirBsZmWITAfHMJJDLPMgAT3bTu3ikKm9rT8QgjqyBWRvPndf5HkII26wAbNUfAxb8xqkrUeF4aPhGdGQNkeSpM9wJgihGHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OEBrcSce; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OEBrcSce"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5239C19425
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 01:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781139993;
	bh=f34vDEtL+XLp6zBmE9PhFRgEJrd2OoGkg3SYxS74D/4=;
	h=To:Subject:From:Date:From;
	b=OEBrcSceIXnyGW3uynB43sXcqzdLqe22lr1Xh6nsxamNzJvaYeaYsN5rHwdETItgy
	 Yz93pVNoF2feolkewbZVb1qSFop2wOau7OJMVjUZVaL2ojuaEati0X0Z1EMcYzeqn9
	 pvtfM6Xy6BDzLqHOuhoiw9Czll7A2He2fzpshXDz/+6f6ReIH8kfrATVbbrWnTPo/j
	 JEgWV3ks53P0OeixE0r2ta/828UYNHcDKoAhSzKrmwG0UAX/l25UtX0W/3Vkdv5+TS
	 dhGGMAmZJCn4frMBsIXtvi47drl/gtZF/TVEp6YsgmJtrKtRAAf7vBZRUwg4vywKau
	 vSnGCWr4T+ofw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F04CD98C5
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 01:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178113999372.26449.8012633212550950783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70fb42902fcc07b053516bfef9d95ab0a53c9fc800ac780be9b15485df2c3b10
Date: Thu, 11 Jun 2026 01:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781139993
