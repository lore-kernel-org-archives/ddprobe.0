Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54CC6277C9E
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 15:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783093114; cv=none; b=AaIHysXnhdNP7kDDwFvQfVdYHsH3PrdVECBJGy7dX9+v5XVCTrMeM0XGZ4HIYb4lNXw1/w0sWKpM+bVIuuF1l1aqhizK3hFgC/CkXT6F3bjtj3AReoivlXO815E/XmNDq4ajGWHmv8wc99kHAkkhiF+1ViyXDJOCEx7sJC+0wPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783093114; c=relaxed/simple;
	bh=iZb6El2ODcweLS2qVVpb/SnhflI181hrZA5yw8F/glU=;
	h=To:Subject:From:Message-Id:Date; b=r4m8olTu0yYRSrHuBy/QwKXHjghWIBLmhSLGOabihiUb222POyJPp817ATGZBRH0cG58F/jtYIWC/ueQVw0Ay6UGIkSHSyvmjx3T6Zov22+yV8fgRuC179Up6UsAG/lNuEoSjtqI9zQZfLjNk3OOq/qT8JD0FuP6rng+nMd3EDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojX6RZTy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojX6RZTy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF68DC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 15:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783093113;
	bh=iZb6El2ODcweLS2qVVpb/SnhflI181hrZA5yw8F/glU=;
	h=To:Subject:From:Date:From;
	b=ojX6RZTySl7mFZGJHkx7ot3mlhIHxligo2ubejgMG4QuJwmP9ZbcJOvaWUdAnqNQc
	 3WYSWW+08DsdiA/GXEoOiS7nqvP1yzSAVfCLB5lcXE0fi4BEuFhiZSssrQVv2zSPq9
	 lkOdYiWbov/QzJiW3CFEiPVQDTKRm/1QJU/vIeb6yz9DlyqLs17tk+Bnm+HmNyJgno
	 fGlVdlOqKW0BlHQSfQkGGazOgkDTlTACi/r/jUINLum7JTdalguQ+195UDLXb+mZz7
	 3VawlrI8xXTwi8LvbjpBBMeVVQkHqhBg7m6nPt6rw2OPRxYWQYov8jpZKoh/ELtIiU
	 2G91xAyJtJtQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A954EC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 15:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178309311368.29420.356282300982001770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 378274503a983aa400c61553aa77983cc641ab89cf16ec6d95ad0dc555327370
Date: Fri, 03 Jul 2026 15:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783093113
