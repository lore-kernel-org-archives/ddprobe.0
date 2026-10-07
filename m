Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9B437FF43
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791407434; cv=none; b=mykZ3JyyAkf9yrWiyu2rjm/gW0ud5qQ1kU+XstokeIAQ5x9/3T2hxM/xt3Q7hr6pJMkocWDiPpehljOfJVd51/BuwujBDufYHReXahAPPelI9ZCmANYoaYFCK8lCWKKaYbRngqT1vlICLj0Ru2vQwK9YjqM0SRs3UE+7jgggiBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791407434; c=relaxed/simple;
	bh=9rfF5NAwfBHt2UhoxmEGGp1yViQpnpGyC/urNBH9V4E=;
	h=To:Subject:From:Message-Id:Date; b=uo//dI32+B6Hvt3MHbfjAkGOsoOUWVoGUR2Uu1m/JPFgIwnsEB/qzj/pSscw30fXn1g71lwK0YfTvgzkKyJo9a78ovtbvc7q71FYU8vLzJT1M5BAbEhOR2IW+N4e4llw/ZYqWDhQDyQ2cQje6BoCxWAq93YJU9TDtptbxJbO67s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rhLMvyl5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rhLMvyl5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1610C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791407433;
	bh=9rfF5NAwfBHt2UhoxmEGGp1yViQpnpGyC/urNBH9V4E=;
	h=To:Subject:From:Date:From;
	b=rhLMvyl5WG9GWeNWtKkbG5eQYEzYTRU9WOLhHCJn+lEPrnYJeNCNPX6E/GF+oNhaV
	 pvIPmVU2mMpcnxS4zJgkQ4pL3zzkotbDEHPpkDeGbKwPeu0Sr98hAm3AjR968Giy3M
	 oAr4FiiOc+XrHLxninQl5PrcMlgwaPJWnEo1Bcwdz1KCNYKc6T+GNKK6kLFvwd3m8/
	 xVkd82MpjujBH4JQBavYTGLuI7YT8nwIZ8DJT/bAf0byChJn3LStpX3waampWFdZAq
	 Q84jxW1um5EoMMJdhJK3wBL9oqy0c79SKH7bhlpQ8nHU9cUTxp9gOsPxg/TS159Vy7
	 ZG+oFuwpmHKJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC965CA6004
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179140743369.8865.14399229897015841648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae99a6e6d46da61afbf28da8de2e092e9df144fab43ec4c1d059442fde4bf276
Date: Wed, 07 Oct 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791407433
