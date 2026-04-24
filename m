Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31EFE211A28
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 04:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777003654; cv=none; b=RF2Vp54PP2GtyOnzlxP6DAa7QWa42ufimGuLXly3lgMxNZjrNMO9x+wNdWiKjGfT7TFv1nX1x3qsr6hgM/mSnK/tZRdwk21bzdpueN4zw7MYU+5btrCO9z8sduOPI1hdvVdDwSZSv4yEGlfQFaxHSR0Xkuv1h+EQeYaFCFTwvPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777003654; c=relaxed/simple;
	bh=ztoilud7tTRnOYpupvgFTgbbJepkuKDseRVrkrm5ncI=;
	h=To:Subject:From:Message-Id:Date; b=ZprZdlv1mzXB/SHKS1lTjpVJCRkKGOfLZ/i8qPLFBbGbOsogXf46LcXxRP+nuNS/6aPsk3iiiTzjhqugfuxbD9ukJwqIF8Rc6XKBltw357owU/XqjAsCUzWYYL2GhErxUcvHXaG1WgdA5uwQIVlXwefEdzjfSe9jQhDuKMsBhRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nzykrcmi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nzykrcmi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAAABC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 04:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777003653;
	bh=ztoilud7tTRnOYpupvgFTgbbJepkuKDseRVrkrm5ncI=;
	h=To:Subject:From:Date:From;
	b=NzykrcmiLlu0x2Gr6oiJSG4KZSRWXTok9aYm90ipqN0jxcE2b4DfP0//Dm+/NzIER
	 VmrT9maLFrGTHY9kSYqkZszcYa5c2jkNA47FeS5aAALQ9E8E8fz49AuCo9P2mHlA5y
	 yhLv9A+lfqkAZTSmOuVblLYwnaGVxsfVQqnJM/K3t88YJtz4vBuP2+XpykJUwIYKLs
	 Nhw1nftEex1rJfuk1aWlVPQWP/uwPl6NeARESO8jTL7mOeJJ0SuNtU9ByboqGvc9OI
	 cmwZGJom6JvEWKdCyQ0lQWbY5H+Zw/VijTj3ZwZp7nBeVZDogeGh7ilsbR77FzeFGN
	 ojJ4n+AT45ToA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB0CFAD41C
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 04:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177700365368.12461.13936795636597366076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6534e8f05599ffde1423ed5d6b5f1be73b9f65dae91d8e203491da25c37d1e2
Date: Fri, 24 Apr 2026 04:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777003653
