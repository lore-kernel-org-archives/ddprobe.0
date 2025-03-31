Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FA720297B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743424794; cv=none; b=ZsVeNrm4A5f5XzYrVw+euaUolJBfBweECr9nlKEcY4OBx241El0OMD91RLXmkdiVhBh5jncgGrWoey1YDTZGq4sMUcpcKZQ0QFMHKkR4STr1hG31afvdkSPcg9w9EBOxXcVAG5q4BNi+8dxOIwvSgXoQ6SH/abvJnd2KoN8niF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743424794; c=relaxed/simple;
	bh=ad6t2E53E9+ipxf78/NMNbOR9f0pQCKG0HZNre3IxDg=;
	h=To:Subject:From:Message-Id:Date; b=G/S7L6pMWlXvvre9VNIt8zYmHuhsDzgr5BcjQWdnhdf573VjMc1JlRT5UObV5U2aUGAGGSBbx0TPZ8YwaCIAMS/Dn6QgnZGwIURmhdL/pIeC2iy1FFcBO0WWwx1kQH1GAzplFhLGzSiql/Oxs0oU9HFNWqdU4YHXOnIDiv/rZm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XbxkzeLF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XbxkzeLF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E4AC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743424793;
	bh=ad6t2E53E9+ipxf78/NMNbOR9f0pQCKG0HZNre3IxDg=;
	h=To:Subject:From:Date:From;
	b=XbxkzeLFCnitXjSAuxdkpU+jwdlJDQ0gOEzokq3qSXkiqonZmwsUcqhqZyjSuR+wO
	 LhtL1D8EYVS2KEd5rI8Ki57d9f1vVxultsW6503g073aI04nt5AFVxbOXxk4u5znXg
	 BvS7d5fB1H+wux32txi+LbJqMAUaLl7LtFlzmbQy000fsCaB12yT5zHAABzQQY8rM7
	 pfxuZMxxzu2DBzu2RxKZsJG4hq5NkXEvYcib10wVhvrl9YwZ6POlqhJTzXAEn8cu0a
	 uRWXoHgTI2n/EdS6mDc5VLzVd4BF6ZytDqr1sZr7ArBQIf6M70amtmZmiY28euy3T+
	 2rVmg5MQ0dzow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3766C3600B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174342479365.20316.4281759795726912201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4152d6f0114553e3a8da23b7333aa8596f83317da5bdb3c4a72427271f1a4207
Date: Mon, 31 Mar 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743424793
