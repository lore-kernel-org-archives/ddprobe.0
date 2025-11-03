Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A632BD580
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762208394; cv=none; b=aTdjrrE/RM1JvOodbzWDGtIU0pxGw8py/sNdO/Uq3C+mOHYcgjIK16A6axCJ434uiNIiM2TcX/3Zi4/Ez9Bejf7O+wcMqeHo1tQ5GZHFHoY9oaBPtlOK4zZ5QPlrMnUqGOD6mo98Ji74+5kJWz8JYEl4ODnJQcxg/EyH3OSNq9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762208394; c=relaxed/simple;
	bh=uWLOrKNR/SElRxucD3MYWg5O8GTbrN9Qf9aQyipQFBc=;
	h=To:Subject:From:Message-Id:Date; b=DBVwOxAi4SDwTQ11Cm/cLhjQ7qBl5YMT7aiZITNWMxbMeVhY172duYoRxkXX4TzjqRG62yyls8Z8bHBdndtZoadSHPeM4+aLlg3PMBwZZRRYou33Zlo4SmplOxkhj4wJH9lEB18OAo/ALZcYjygTeDdxeI7/shPRQLsPa+VPqrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kA0yacWA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kA0yacWA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDA73C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762208393;
	bh=uWLOrKNR/SElRxucD3MYWg5O8GTbrN9Qf9aQyipQFBc=;
	h=To:Subject:From:Date:From;
	b=kA0yacWAf9jY/gUHDrvHxGZG/LtF6JBeDWJtFrUveGEembVf7uwl3H7iX43SdqblR
	 Yco5OsHS73xzxttqHTLZLxmSTg0q9YGDAQaPGoE7MwxNOqRkezjP7UyTs4Ap4NDfKj
	 QKThH5fpA0xagavqyipIRAUSTuiAwMyOA+HnMcjOWwgy2YJ2/PfwVIjqWuhQ27FRLc
	 9Fr4ClHgG/RPTJCfaF1ljss3ogvk3Ww2LtY2o+eEI+dx9UuLnmy0grrexW7oOLAJvO
	 84MeT//3Dfxggz0upb3vX+Hu0CHHCx1+GeXnLM0q4P+BxuFgA9FooNRjSq+iMFc7Ks
	 82xgEnh+NoMkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97ECCCFA03
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176220839368.10724.223669720948418566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11d45b6a0fad551a941bd1ed4094f5731843af2300d009eb37aec1d495445690
Date: Mon, 03 Nov 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762208393
