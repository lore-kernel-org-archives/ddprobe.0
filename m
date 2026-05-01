Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B68B2580CF
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 23:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777679854; cv=none; b=giI/KDjLgJLa9yX7BsfiAfsbeF4A1eB7xAzCfYpOM/SGCj66GM9EmKGOYpulF8wQlW4y8jUtxN5L+JhgpQMn3YAxx39pMupKHzZXs5OWak5K/7HtzbIW3tX/qQDYgJH+aPPYkNbwiab2BK08dK3mJGzFzmnN7CD0h+rpQ0YgURM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777679854; c=relaxed/simple;
	bh=N3TIoE9vyN3cI9L4SbK/cJCxkEheXvue4fuHxaQzxQg=;
	h=To:Subject:From:Message-Id:Date; b=fV1hlBsmDOxhj4tKLoiBwfpewUoWQWSwwPInhXCEUUW7ZH03ydwjev5V+6Ebsg/SnNEiFTKEIj2yrTcggy6PHKmqGemKJZNDkKt1CK/laSu5PrzHxFOr8Q34rAB/neE8d/CxzxmUETjwO8ZOm6lDcIAq8Ijb2lOLquxrEJDamaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tedRNRvY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tedRNRvY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C010FC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 23:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777679853;
	bh=N3TIoE9vyN3cI9L4SbK/cJCxkEheXvue4fuHxaQzxQg=;
	h=To:Subject:From:Date:From;
	b=tedRNRvYV9u6lwAx4KQcASON8/vg8HvOx3QddkVi7U9psUc/Igm0HeVtoFAQefgy3
	 PUxCxQ3l6Udqrz7KeOhrVifyM0pK3si9WhzlY9GArq2ZgfFrOWsONgbjwwjZsTHlj4
	 juEth2rp1tE5aQ48JARrvceua9J9hEE5KAFaYlLFHibxQ6bCGJmpcfyoGoBOUUHzdt
	 enn6Fa5HkvGDZ/WkucRvIbFH4M09dv3HvxbmyJvatV1PcUbIdqR2/HxnIkpMkZKB7A
	 i2s+QdhnFEoRqvEdok2n8xk08RubcYLpUu+dJfvVHQkLaBeN2j8mPFSviOUeIcE1d9
	 8VT8R2JVjt1lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB28CCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 23:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177767985368.4432.11340924316234141060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0f4b5790636f7add68d95a949e16745252e5ded68c0e9b02c3e0c365c1e34df
Date: Fri, 01 May 2026 23:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777679853
