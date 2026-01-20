Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C491A238F
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768874634; cv=none; b=OeVM5DC7qe/1T1kFGiNQ7zoRODMpehE3NGsISjd21VyyfA5zKF/7YLBN0uK0dRsJzmT1be01wLkAN4+am9hpfaMVINQwpXuh2AKq5ZNwQ2G1j8+IErm9MaYPhf6nL0fVZZG1pPoTSs9TjN5nWDwO6RCxaWQbmiiJ81a3M/6UxJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768874634; c=relaxed/simple;
	bh=FzijcrSZP/EDZ2lxHqKdgDKS4OuhfRR0QIviSnrlDrM=;
	h=To:Subject:From:Message-Id:Date; b=Pimpr982sLlpSSTpSC3IX8w+WhpvNzWIfv5WkH+u16gsOuRrSlAQFJ0Y/al4Ua5PeNwCa5jnmPW/9f+7fsGvSxwQ8ZAB9ZnI2FUuC3ivT2hvuCokBetZ6FINnFOs9Dmi74dfVNgHGzG7VR0yjv5tX0K6DE+zuFFvU4yd1X+1kis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n6pLGmx3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n6pLGmx3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D7EC116C6
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768874633;
	bh=FzijcrSZP/EDZ2lxHqKdgDKS4OuhfRR0QIviSnrlDrM=;
	h=To:Subject:From:Date:From;
	b=n6pLGmx35G2OhuOCetiG/lfAs6i9hGbNQYBqp0bjbp4POOE6s/n8k78m2j966F5tA
	 Mj6mRS6b7YGTKl/eKyzIcXIHpmxnoGfR3NktvwQawdJWGsTSBA4UKOv4MUnShzKx+Y
	 DvIOUiJAk01cUwkaXktFd4/7EjfxHsyYIipj6L7ajXqnoTuoCW+wusUER4CZx40GJs
	 I8xZG6BSfCGn/4bqGuOOgm99yG6zuIOok2LZL4RfaomYIo35EkenHNoWdimXPj7Kqo
	 M68FM65+7vyqONutO2yBQhacdWSTgDwOr+GycKl6YDoXHA/prXPi6Ez0fq++9t///x
	 QUn47G4eVG3mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97683D2ECFD
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176887463358.10118.6582318863466172178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09cd1078931461752b21e0619027625f53f904ebfc646fcdf4635a58f8acb4eb
Date: Tue, 20 Jan 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768874633
