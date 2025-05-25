Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C7442048
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748162394; cv=none; b=Gdl8f3Y1lc7lAWwtWmZAdM1/Crk+PAQND9F5avaA7Dt8y5hIj5lVQyNadNQ0lsL8lcXr1bzHKKAVgAJ20HdggB63Vg02zHqNiKfjl1LD3Smcww34CXrkomYk8bcx8affpY1PDKBwNEf7wWlEFNF9fgAmZxqCbffECSmNgLlvFIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748162394; c=relaxed/simple;
	bh=DI81zVpDwsZiYO7XrkaripPGU3Hn8F+b9p1m236riZY=;
	h=To:Subject:From:Message-Id:Date; b=MhD7WXAfKdyis2xjS0zS6bWinKw5g38zU0Y7TLHhXAt4Ou3ex3PIYgRThi1EmW7uJ4HUhtB4R7vyuI3VPqYGDAR4efNmG1cXUiamT744c2E1/MbYk4OD+ztVLjCRM6CGjG28MzqKIQyCvcGiTLsWL0kpc3cfrEGk+Ag4h2wzjM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qavZv2zf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qavZv2zf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A440EC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748162393;
	bh=DI81zVpDwsZiYO7XrkaripPGU3Hn8F+b9p1m236riZY=;
	h=To:Subject:From:Date:From;
	b=qavZv2zfTdVD9cZaLIMnPzwiAM/vglALtXzQ3oaaKqEOlXUT4N44mPloJ+qMCR/c1
	 bS5j5PYk2spDZY85v7NzY1fG4TY30XbzOmlLFndeHABn7AZU7GMlIE0zUlL/XO1moE
	 F5u6lbnHVw55wtylNinJWWjz+OI5VPPSoPZuuqIMu1Wg79pUSjU0leBGSgwq6fciQs
	 mQ2myiy5NbjD4hb6A5Nm/dgTXOHmbEiApcu8d3F6mgUu5C7Zh+nNVxyFBLVAkK3JqV
	 YfUrvLytIpoeJcBERH7hd6ORsk32w5/VdJSiwaOQBGm6pX+Ca6KSpIK/QIO74ihISh
	 YWt9HfSeJVDAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC29C54ED0
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174816239358.18635.9165376609385941427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 879b89357a19f4a921d26d31dd989451025e0a87449fadc92ad090126886be23
Date: Sun, 25 May 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748162393
