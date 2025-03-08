Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454F017333F
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 04:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741407534; cv=none; b=ZvwZSHyUoL1+nG8lcfbxdNYgNhpQ4lb60aSOekzcMtceQptfN8Tc71f4tEE3xOuudFAPwZP6I8VvhLsX9XX8cK6Rgn+uBp/n11LeBsdw/Ca0Zep3xDuIk5ltKP62UdsJsGiVN6NCcyKKfbYzTZPM9kxt0kpuK0s5Vt8TA11J3aI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741407534; c=relaxed/simple;
	bh=kAZJxyXWIkfq0+QSi5jMt7J0GEebiw/E5cxQB8iAxyc=;
	h=To:Subject:From:Message-Id:Date; b=n/iA7BUzM0MhrRURa2UZyE0jJ9lJFEp1/wsW0woorVzDaKIB2GQ9fkCIktQeqppgR4Ce2kjN2kYgmqyf1frOE3Vw0YRW+mtBTieTv+jexxcIeGZdyO/yWUAkLnGgEp2hqgvKFE3a/RX+e/qcIRY+Tq/o6uIAJH7O+Jptffwx9iU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UBhFKqOO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UBhFKqOO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B63C8C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 04:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741407533;
	bh=kAZJxyXWIkfq0+QSi5jMt7J0GEebiw/E5cxQB8iAxyc=;
	h=To:Subject:From:Date:From;
	b=UBhFKqOOEmytFHLoye1KnzmI1V0FbNISe3P0UytldI0k7dKkvd7YxWHe2WK4J7clL
	 i2wpT82wpGo1MGAMvjSt5GNc3UPBNKfzSxHjZTvpEKuVx03ycQjzHtLlPBq3s9eeMn
	 wzZDYv2kv2/Jziz1On/dAWUFAFA4ht838KEdtHaQkeClk0WKEycxPU5gtDM79G+z8T
	 7eFcCN/SxFOawjkOVubuBQt/eXCJJAx9dmgRB2PsuR8umqicgobJhl/c7/a9SmRX/I
	 S4FhSh5mnH0n8yPks3Ps2QUcyGChsyKlVv9840TfxbzVDxbkq3PsljaqHAFfCSvX1c
	 W4PTtTJXpoCfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C1E9C28B25
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 04:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174140753362.1689.434912560668933771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1322c2ed92c1d60411a4ce03e7573e06ddd237079820d50715601e468c23696d
Date: Sat, 08 Mar 2025 04:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741407533
