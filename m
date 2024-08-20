Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C4B176AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724141154; cv=none; b=VtdmADeAA6nLk9UKLmrDJo5RTETorZisr4yfzj6acH1Nw1jxpSCyeYkTthJJUg0lEz8KL9x9k6Gq4tdOPFOh0RoykM1GqtZgOVtCn6yIH3vxgBE6EmvydmKU7ECHvz++67ufy8jmuIT8gz5JEGWKluQ7ex2nZRU1TAFxX4rrHno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724141154; c=relaxed/simple;
	bh=94zhrGnkZYNPwJEZkpWD9auO5QytOYB5LM0zrBJjiTM=;
	h=To:Subject:From:Message-Id:Date; b=NSR7WNm6WQG9OS++iV5mh4MsqbzSGNK2AZHTAJ37TzGQFja4ak2T4s2uKunNEydR/ae9tW7UbOxVm+Iw3U5hv6Z+gVhEg702oI6qLzHFqlX9hAMRNwcGc4f3Ue5Gu0oojeO0lwMmsrB4xuYkK6HkxXYPAu5+7EuMkr1SQmdIDPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e1Mch9FL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e1Mch9FL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC08C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724141153;
	bh=94zhrGnkZYNPwJEZkpWD9auO5QytOYB5LM0zrBJjiTM=;
	h=To:Subject:From:Date:From;
	b=e1Mch9FLvH8iKkVQjyxbSkTlf+x+h6crcZypGAmeFMGxAfLPH2ECNBeUplrX2N1a8
	 nhCVCN43hLPA9SXCxi6JY0vGriI5VaI+uZEPJeT29HhP0kT43TsOIkKil5Bo7ncQDg
	 nx1HjSr7fzdxRAQCrj2pzdeTmZUXjRAEtmipAw5Gv5Hw/aHKNL4mW64UgVtJUbvW2j
	 ZnMEdtwri4qZwKJCEGSYNEn61Frq7yHGOBeJPsoP8semDXORq5TzaR0MqogT4jx8TN
	 taz+9hv1R8uAkhzyrZg7+cbcjmln8ZSfDC0iHG6b5EZjlaV20rO/vmpuUGwY72A6Ea
	 BFcytLdjyP4Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00B9C5320E
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172414115371.9022.7362699369826836380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7aabd665259f137081858dd1acde720edf5abdf4b3fc16ca0b6efb4408610a0
Date: Tue, 20 Aug 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724141153
