Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460122C21FF
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 20:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783801114; cv=none; b=X2w6cmesD6WoHaEEbS6hsGVHabG4JYzUN+YOqmRrr4p0G46tbhhU3y8QNE3/VKCmeBnexHCcFimoAS1Y7v+cIGu10O+/tnOWN7f+8ED6+1irVT0l8qVIE7nJwKR9tc08o6uegsHO14mRz/hJEmF2DgIFFcPATqX7VIVl78ycQ8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783801114; c=relaxed/simple;
	bh=rlrhnWUJJzeZvHgA1iKB+jguAV75CVgc8PZjL+EWOEU=;
	h=To:Subject:From:Message-Id:Date; b=VEAw+mZXEsQy0cMFg2WPBUUDF1YJ8RKbyZ3U31xxN8dRZneMjfZHMfn8aL5WTllQLLM6tPpDAAbHAMGNf4B3x7ay9yw/nvscXm2GmOlHMxJdWrGYxA69lfm7xsDYAIWGXXaard1shTZFPQIclt2pxJzI0Ye/HRB4gjKUSpW4rX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H4YTVnOs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H4YTVnOs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35F5C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 20:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783801113;
	bh=rlrhnWUJJzeZvHgA1iKB+jguAV75CVgc8PZjL+EWOEU=;
	h=To:Subject:From:Date:From;
	b=H4YTVnOsV08sYBuaGmPYvWlIgLHB0Ar91jeXNbdlw7Mobg8NstDC87taxmffT0PLh
	 w2LtM0aTys4u9JW2HZ0shF+eUnJvX3QTF/jwkv8a6dTYdzLcRIzcetK4QpTGk3mbcs
	 yxLIaRf41gOFzXArE0rlJDWJ4jL7OpN/DJIZBzKUfphwe6EeBIlSyzVTwNwiXgpg9V
	 FJQPO/ErXdtUt85vDhhdD2bOhy9CLOen7ZrPlVwAwb6k3IaBxmh+pOC5urDEPE6lRy
	 miB9HjSOmE8WGBJNm7wtKWjPk8lv/voF9tTPBwxA610Jsffpp7VEbbAgSSnaDy37LD
	 82Wlsu0xrlJzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00CBC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 20:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178380111368.27303.14457035551829488086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fd16146d0f405534c11576183dffbd3e014a4b0fccb591d93cb760b0bd45318
Date: Sat, 11 Jul 2026 20:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783801113
