Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335A81CAA97
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744822794; cv=none; b=UlByYG0xm7jskm4uAWaSWwS4gKdjzZ2bched8Yx8uxpZUy6D1RTBWvyvMi/YBTjDdOTNKk9OeCnAEk+n2RzcPemJgenX2IZ66mc7uobuLk9B0uYWzKUbX7vLRhbGGEknMmtsrnMx5BJ8tOSZDuti0cl08NywUjh6Zo6UYxzYJDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744822794; c=relaxed/simple;
	bh=gzH0Atu9YLJu7RFgdtwgEIoeDrnWsOAVBrt4ElDKhI4=;
	h=To:Subject:From:Message-Id:Date; b=aX8YxQhgOOm0fbvHelolReRnjNTM2ObFBPDhJzUIB39nKFAwF2XOBQO15XV+ANd90jaTi9S0K3SjGpM1XxMsIGYreu3xB4RuUNtw7Fsec7jPRT8Jvqyatv17p+Z1AKJ6n5rZ7NGtHIejVfLFfHo7gDWrYFBwVbZLHW7j68a7XCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k0rhEi2A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k0rhEi2A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC696C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744822793;
	bh=gzH0Atu9YLJu7RFgdtwgEIoeDrnWsOAVBrt4ElDKhI4=;
	h=To:Subject:From:Date:From;
	b=k0rhEi2A+yrOKqD5GyMkyS1fsBw+rIQYdcvIJukv/ArWupyXE9fy4vc3sBnN7O6aR
	 1t6/BxEWm3zDspzns2DVUVqwp8KT/RegawZNw1E3MF1tUDBC9wiSWqabDBdzUm98Zv
	 absWzy68X7VhPcM0p/+o7UcmQuNu7kPps/F7MSyACG8Mvwku1JYmcvj1e0QcVd9DaB
	 xAl5TFZh7+0kWS6EiVR6ZXZ2v1aNnDhcooi7deT3dmJXYc9jd0lJtY7hfoIAuUlSyK
	 XshPDBk89PAXzuhMdjCaGGNSq3mwc2lNo7i7igVXGzdOHrWwLbm3mAmKoQCVBHqxnJ
	 bXbVil4uafKag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A642C369BA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174482279362.15881.6671026332842998728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36eab9a671455df6f8f0fa67733b4e573ccf8192c27264669fd3369aa46fa467
Date: Wed, 16 Apr 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744822793
