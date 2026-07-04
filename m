Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F3318AE3
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 23:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783208314; cv=none; b=A3i70VxUnrZXu2yJXXVTb/nvSq8ydzpK4H2UQO6CNIqUY0lasdxoQnNHD6zcMSEMXO4fZPbGSF8Us7zq3N6iyGD8ZruhYbxAT0I5k+Fz3Yire4sh0TL+DvTE1yBXoWjNDS0+Y7zlpXPhoNYa7RjjqTz4eHvqoLcpgjqHaEbs3Pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783208314; c=relaxed/simple;
	bh=dRveoK/UtLuE/bZCs36YD/mE7f1XMzSuGU755wRntjI=;
	h=To:Subject:From:Message-Id:Date; b=gwupiJzmYsp1oVAw/GBGqxBaRTB5lCxl/5vzrGwwlu6hgYpWnhcIFDdGKyZHqFL3ToRfFHd6m/ewuR86L9rAI006bfIUhwU2dG0s3aAayvV5/ylsFAKKfjWUiO43se9aKwFdukNnW+pwtyvylPcA6mx4YSzToUquYJMEsKySUiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pNgqf7J8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pNgqf7J8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10CEC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 23:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783208313;
	bh=dRveoK/UtLuE/bZCs36YD/mE7f1XMzSuGU755wRntjI=;
	h=To:Subject:From:Date:From;
	b=pNgqf7J81Ca4xbzpXgeNnbfRsS98OoU4BdNu/RNptcwSt5giIMeGA2fcbZjMww9H5
	 szRlUOBiYRa2XE0lqNA0s9dfQGkiW6cO6btXs5sBDj+t9K2sLhK1DhAJgBQG9PlugZ
	 8oe9iOrcKo564IksFFADYjnC0D/MQw+JMmkipurNWtY0aP0qN495Hj9NxDuUKXFRLU
	 gDfmexRWJq64aqB93bTlW+PBx8i8wrc7UnW/0YQkA689GahFBuqtBzKfk9ko1HTgcf
	 luZmpgkNYf81FEYEqf138r6+MDz0an3jHD/XDNbjV8zRNklohqDfwVjZoRd1OmoFOA
	 iC7kEQvUlPZ4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4ABC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 23:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178320831368.4745.8561213633688776282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfe5a2486f7ded258fe78e505244acbf24e3dcf763826d3d421b3206ade6e24c
Date: Sat, 04 Jul 2026 23:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783208313
