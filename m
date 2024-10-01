Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD612374F6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727754353; cv=none; b=LNGL7dr4DFqEuRfbzMEK3ei6KETbRbvtjClkgUE7u3MMh+ISBA9+qG8Kml1J77amz1n5j1j4G2VDSTfvH1BYDF/AqiVoNmdXU88Wq3f7KWWB0W4RYRbXO6ca+sCRlW8VaLny2y/344kMqURXhYD6Rdoz3dF5hQWVcfz/Whf5Wjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727754353; c=relaxed/simple;
	bh=1nZJOclGYV4mjoveFwMijrW02GhzTPjc+YoyVYQbPZ8=;
	h=To:Subject:From:Message-Id:Date; b=e3/gWFrW2SlyRPD0gbqz6VU9rINkXO75SnpraIevDKjOMiUu/CVyny1hLwsjYvXxx4ruGxKSIGTyOc9kk0XfrzeaYmP0rd3fw05reYcahACC4M8NY9tMGY+CeV9myDnoRMqJ6ZRqDKF6bTvM16RVjxgtg36FYVruhdMlm9ZSyiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGygdqSF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGygdqSF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B28F0C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727754353;
	bh=1nZJOclGYV4mjoveFwMijrW02GhzTPjc+YoyVYQbPZ8=;
	h=To:Subject:From:Date:From;
	b=NGygdqSFJp6dGYDHVKDoenlesdGODpPeXXezuw1TDzu3NYff9DTd2amQx4KZ8a9Jq
	 i0WJBeB3ELEaHCYjotEMR6KT2zn75nHHxmj0SUjU1P53eibTLwXuCR5P1whUpSt3bT
	 +k5boAB2OPF+AZZgZ3vLMykZGDmr/9jZp+ptkcs/F4KV9v+i4chozUEqHFc6AVlPEU
	 3VRCEHOQlS0csxH90M2EJWmt+qm7HOBT4dKDIHVVt4OQfjUuSVQWdS/9LBYXguCSDU
	 1okDWZd0rLdf5blPxx2qDI94bxIrw2pcD+V5TY8OPKEagx+1PeYqVBEvVBrAF+0EcF
	 GPigFb3zyAOyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C061CEB2E3
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172775435362.29586.10514577170478431342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e603c991a7865e8d1e69e268272a5e75c6ae357b96bbbe2b8afa62585829a907
Date: Tue, 01 Oct 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727754353
