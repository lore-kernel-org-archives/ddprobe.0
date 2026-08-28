Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A12EE54B
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787906434; cv=none; b=TjxAdARo8tcNsVPA0fN99wk1eeaphNuFxdNnHuk9PXYLr4QMUntv2PFrj9PkqvfIeGx5nlcg0ibqw7/EvGo6aLPPDfTVH2N124qg2cfARVVCum07UCbq89zObUR0XAp5Ab9E66GfxkUSfacp+3vj+LtEo91jADK6ker73xURa4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787906434; c=relaxed/simple;
	bh=zCKwUY9TCvw3XHqd6j2dJxhusN6Sp0s1OHOlKJjuHWw=;
	h=To:Subject:From:Message-Id:Date; b=Gbg2dkCFZbYbvqYYkHLGFuO0ZqcHjoK40cIIRCWCZgEZnw7PE2fvt0U/2nPQPkVugQGb+jcnVQO8Rb+JfZV7lMsDJfszOng7plDQAu/e6fAE5K9Kangc9NGwI+nWtfKe5IeBJ7kKJm4WzGwQk9DTpw4qC5OR5Rf9RmoKZABeExw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KOAQ96el; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KOAQ96el"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14D0C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787906433;
	bh=zCKwUY9TCvw3XHqd6j2dJxhusN6Sp0s1OHOlKJjuHWw=;
	h=To:Subject:From:Date:From;
	b=KOAQ96elOwAp81wBVTVHQ9iY+AK1Tt6Z6cb4CRbgbgOGQBFqFY09gN8kE8zypwYtp
	 FSwFhNkZ76cXrgc+9P2iFOLGIB3YfznpCExb5tMLSLeeVYDdt+97vkIrYIjrGyGNDP
	 Jp8Fchqy93R21/BRXZbUqrLeMTMFQU7wtGuNbepwEspqRCCmI+oVj3dkGSdbs1ZY4e
	 oCzktCPKNw21QHOy9zj7CC8eTTURGoCCqHA5r1WPsjz4im2uRcQEWxc1oa3MsH6IZh
	 WtI9xIEiU/LTaRx9NrLeXZW8mvV3Yg1q/5aoorKOpEpgnpD8Y2BDy81BnZa8tEtOOH
	 sZuAUvfaF02wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5CAC61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178790643369.5343.7912654805653062854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f96ec62a6c04dea58c7ec80c9e4858c57904e110f35a5a3edbc3f62957dd40ab
Date: Fri, 28 Aug 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787906433
