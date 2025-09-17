Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D92734BA33
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758138594; cv=none; b=VViiXOfLNLlGnHre4gIrSN7LnwlNg81MFAsF+x/CRATSmntPaHvUT8BzMEnGeHwLkMDes/JWXNvPL5iJi2DY2mzTWYyBEIiRVoXMJUHDiA1gEEpCp/YaSqBIcax2sOw5alIJc4ULfOqPbSac+tkKGhefEOBxGrAGgncU/7SCGhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758138594; c=relaxed/simple;
	bh=AJ1/7aaur9gkDVOP41JQ6XuUo6RKqPzVcv7B67XKEeQ=;
	h=To:Subject:From:Message-Id:Date; b=FBbW0OF4wdxFoyWb2/0KxvY+E3gY+kqyMO4qrL5O3RbixDWvZCaVLvbVeaLMjzoGYmwwvMpHNh//ZtSs6l7R/ojm8W9i4dHJz8Op+HfQvwF2KuCY6vtMKO2FOLNoNtwlHAATjesxrE1sCR60e+PVqJeUaCpcHF73sU3ABqRwZG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gE0Y8Rf7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gE0Y8Rf7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB31C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758138593;
	bh=AJ1/7aaur9gkDVOP41JQ6XuUo6RKqPzVcv7B67XKEeQ=;
	h=To:Subject:From:Date:From;
	b=gE0Y8Rf75T+0OU4XAWLq/rjd+1QfpQ5btVX2cWrSlzFsCFDDCjOlywIEgPg/IGBiW
	 /TaQL36OxOnaUzWXold2hwC84T865gdqU1ZKiPCIxRqyCrVoIjzZPgxFuntwpqaNis
	 zZKIph7tKvEryEzPNcHJ+DQjWbHL0AWA9B6hDJ0bIir1yBCtXEmPf8Tkx9edMeA7Be
	 O0Q2VGdHIrWw4Wi/jL8nID9dQgXtdJZhjCmUgNA83ctmZ9G91Gac+8jvKQsIfsIGzq
	 poXHve+Zxfz3ODec1pH2yQh34GfLxIhAjHz79XpeMb23iTDptHAQCeRxKp+32zV0F7
	 GXrWmhfs4M+ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4FBCAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175813859357.18469.6553070476374735890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf92750c34b146d0ea5561db60a82f79bb13e1ebfa688c163b69ce67a1a0596e
Date: Wed, 17 Sep 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758138593
