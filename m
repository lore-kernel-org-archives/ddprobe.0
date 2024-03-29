Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 022A513FD77
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711753697; cv=none; b=psOncdLTogbZbJ7zbuSlVaen1ixwKbnnV4KoPIaUEZr9vw9G7Xatpcb9DTpg3aDZ/nrbeS8CN600oXp0CZWZ7PG9Q6vFKd5HTl5yJC8bv6OtW+H5FHFGONZRGQgXTlMq3omhxiDkO/30tHTm5pys3NBXTShzkYWbjG+kpUbT0vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711753697; c=relaxed/simple;
	bh=n1JXSkiNzCOUB2Vgdw0q2KwjxYeB35yA0pJAm77jYag=;
	h=To:Subject:From:Message-Id:Date; b=KX6N5e4stU1bL+LOQht3kc5imA7HR1HvYKxzyAL1KDm3c62CRmd5SNI3EudAuO6sHhxJg1YwU2kZnfFEbAQuA0oX2d0VaoNxMcskIHbPTMvCJGnXBKFQbLcXmNn9B0tkUBPKRI13PaXOpxcbc8kztDR9eFzLMhkC9hZdY9zlxtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VjeqW+Ba; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VjeqW+Ba"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85180C433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711753696;
	bh=n1JXSkiNzCOUB2Vgdw0q2KwjxYeB35yA0pJAm77jYag=;
	h=To:Subject:From:Date:From;
	b=VjeqW+BaB6/FIYHhIQEfI6bRWg/LgKMaxqWvfjVDDztz4ct7fL0gFMXJlxfvGb4LB
	 x/dtiO8ra+5/aaC2wp7g6TfKRegarCGdecIbybz+FAG+CJWKuTvo0Plky6RIawf/al
	 P1DiW7TexF52mqB4ErbIYTudwJeyCOpQ1SnapFjI3fnFm3Gl4EVRLDohXT1o1kk/1g
	 0pIPEURnLYKjREnskwoK9qfDQRdff9qieqGJvvsUaQhZtj9nz+879bBJ5CdYa8mwZs
	 D+iV4p75aLSXcf9CzwPRmojH+BZjEdxrcH+87teyfMDzWu6U8R+xQ/Q+LhpSU6UnAI
	 rS4iwEJ6c/Sew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71509C6FD1F
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171175369645.24290.904694281067302753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 849fa195b4c7c55d128fad81f9eb814a60dca863e98483aaa165b3c7d3104f42
Date: Fri, 29 Mar 2024 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711753696
