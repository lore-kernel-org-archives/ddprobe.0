Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE3E1E1DF0
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 14:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783867714; cv=none; b=rF6Cczxx9Vds6oGg3PCdp0d7BiqVpSM2/5MHptx6UyUEDs20VLB6l1KqmOtk4vQWlR9kxNxOZWi+IoKsc3V7aBX4VqnXWbo1/9WMihFJzSVA6YpCEjnb6uMdqy7xm+z/Jv+RNmRRsXDfhKrUqGYiF9UhjxI4en8RXyNQjgvhk2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783867714; c=relaxed/simple;
	bh=D6OLKrqrrDqBOgvWHYuSjxYAIZ+o5ETE7l+k2mh7Afs=;
	h=To:Subject:From:Message-Id:Date; b=ClC7LobdyoSH505C+8Sq0wOx5iF+VVBPvYm+ai82KYlRvgKhJBX7eguAwreAF33C63FZ4u7YBWq9rI+L6qnjQb1CFdaXv2qVbw75ezfVYlGWRWC4526/A2+LQWV5zFYNAcqEjvccfi3Wtz4ziE8lQYhMxU9aG2nOueOFOxyPnVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VwLel1am; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VwLel1am"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1FCC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 14:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783867713;
	bh=D6OLKrqrrDqBOgvWHYuSjxYAIZ+o5ETE7l+k2mh7Afs=;
	h=To:Subject:From:Date:From;
	b=VwLel1amYXQQF6gXTrUrCmHKkyFkgOjG+QhDfadnV4jIUdFiX0GZWvRvofNTJch+e
	 0lIW4pE0vXOkGjFZg5o5BDERVe7YoUPUIWkTFJsVcNHmXzBeZJlt5Grx+JaWRsEqz8
	 +rcLHC8DhxRjrbYLo9AKL2YOmWmAJ8AGcGesdYAZO6qJKpjUH1+31jA1fNWkDWesJt
	 UW4IECaM0yPmMEhTXet2NgdLc0tCYd7pDkkjzRQiqFvm1N4iPsQ2tfCDAlBgmjQ8UF
	 SFDTyzdgIB+pam8jwN1MyqT//dQZCNTbZCka4hUJ8UZK1/cwyfEtw1NuBmzTO009Z3
	 TBwHKtEZ+2oJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A763BC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 14:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178386771367.23626.2693733880182093318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26f84bd6ea9dcc1acef9d511fc5a1ff6e5862d638fc1fd6b5b3bcede047a04a5
Date: Sun, 12 Jul 2026 14:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783867713
