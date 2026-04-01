Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D846E3E63B8
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 11:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775044533; cv=none; b=GGm02h7ZmBjxtVF4Ko02rZCulPXXXLXIzpUzJgvo+lFqcZpv3Qp2Pz81ka+YI7P9TGV+X8RyfInnZiOlpJ35rMDBqgqso5Txh4sGpOfWw5LHVxh2eMxNedxp5Rleauv+Ay8Dj9l2nxESoquxgzFCqHoiEypTCc+dzvTPiXgG3pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775044533; c=relaxed/simple;
	bh=r5gMHeGpe11zRL0FY6/bhN0D2IUhZ4Y0LwTDqHd//Rs=;
	h=To:Subject:From:Message-Id:Date; b=HglB/mdTan4AygYQCaTdB/IzXrgba5wAdYN2C4uDMTOylufkj2UoJwyLnNH91FDAm9nVk5VRO1lt+5MHCKYydFOoAGPyzWDfouKK1T6GKVLYKVC6dK+nK+upi07bpDL9Id5U9dMS0LB/407/yR+HqdVRC6Yyr6NlFadCUBZjwwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wy5xX5gc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wy5xX5gc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB24CC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 11:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775044533;
	bh=r5gMHeGpe11zRL0FY6/bhN0D2IUhZ4Y0LwTDqHd//Rs=;
	h=To:Subject:From:Date:From;
	b=Wy5xX5gco2HJmesWLGGKB/XGNpp8tQlIdM+wnodA1ocIZ4tHcUgo6lCfFiuxSk/2G
	 eLAm0C9Dl5wyv1qhmbjd+g8lWqCMSOIG2FSdwG+ZH9MoLdqr3O+xts6Guk3eBNqW11
	 HT8gBb5b7io8I8anGY70fpxBbP0gb7bHgQ6WBA9fxodv5sd0IUQQSLCplbZCjGRlKj
	 Y0233jtsWw6gCYyG6c/PveCb/2tJaN8FxABr8vXZDvMMOtLgzz5I4hconJOrxQ2m3n
	 VEd/cTFz5of8wn2oVYFxPlNpO7PaNtZGgECcqC8eX2+Me58loQ+oibmEpV0JgxZ/3a
	 uPEjzB+OgIq+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D8DD35162
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 11:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177504453368.30357.16478618183894147597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1d8e2e4b730e8df3a3e73998fa3866e3b2a72b37c0f903732b2aced48c7b361
Date: Wed, 01 Apr 2026 11:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775044533
