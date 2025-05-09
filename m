Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F5C2741C3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746787195; cv=none; b=FmJtMqGhFl/0HbhuC8Jok7W6h9sEnqc/gK/3kp5eqYoWesCCbSjUCs8Ank+xboArLBakJGcBaDqGG5mFkSVvGjxKvjj8oRi50F0quEplXbV8jLKzxzAPfXwlKXWqXjQuVYCU+u0YHOtGC2vzZ57jp4eFZg2IAD31m+yL5DKqNQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746787195; c=relaxed/simple;
	bh=+w15/0CnjyAJiCMoHULd2uPPCpJi+XFhG+NNeq4pE6Y=;
	h=To:Subject:From:Message-Id:Date; b=UxQ8TFtTK0gIe6v05m3nKz7KX4X3KWoCASg75EdQbtMOh1p7fhxKDgFTMdKa8Iz+OQ9Sk7K8bJGeL23sP+FgTl9dAzEUeURwuqiFEzjcnW9LlnL6ySLkKtAiEhmmDSTuufDZRxSkh02HcKs1big/PysaVCOtuGwjCi9TElMDNHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=npYwCg6+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="npYwCg6+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0032C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746787193;
	bh=+w15/0CnjyAJiCMoHULd2uPPCpJi+XFhG+NNeq4pE6Y=;
	h=To:Subject:From:Date:From;
	b=npYwCg6+aix4ZvTuGIofXK2aF23imB6Fhbq6bSAD2hvY5MK/YkRs7CxXRfXdt8YkK
	 Y/ssSvOrTbzMtFA3xye6qhzKtZTOZkHARY8rUfECSwMjqmuvcKynb/rxhu/D+VcGQB
	 R5wAGow4vdmEhXrUumGjU1BHoqUb1wdB6fHzPby6h+ByTO1KBDgBHbJ7qmFl1NQwr0
	 tKpBS2bJ7fqQ1Id4l1/uQ6OCXHfRMeLrPVPzZbsnQr+v1elf/KB+hAkLZ8up795sd6
	 8GM2tuEFyxAgpg7BpxMIg28CZ3j0kxWn2HFkubbuKmepH8Z4Qr7UCo/XCwxg9vTyH/
	 rZwmFL1PfWJ3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAA4C3ABC3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174678719357.30280.13354674783073353312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 996998e2e22b3baa2bb4431e0e8a762457a47c6744aed7214527f69e1041674d
Date: Fri, 09 May 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746787193
