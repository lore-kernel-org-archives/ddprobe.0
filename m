Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82BE81CAA8
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 11:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713613223; cv=none; b=fow6pKFaIbeMANHPnD5AHbXIpDsSJxz9j4G83NoK4PxOyrGGRVO6BYSnmYTyiNJhKYSCzZi4o1gy1CY7TlPsEb3nyu+1mr7bEBS2By/Z6OAotHIqjxespBV/iX2hGdoAe9BY4D0V0bxv/Cmwt5VpPKfQ0XLJs+WE1RwiwcyCC3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713613223; c=relaxed/simple;
	bh=LfVKZHEKMe33TCxIbHyL5NQf8pvJb34H6SxcQZ6z2dg=;
	h=To:Subject:From:Message-Id:Date; b=NBe+mp7zBrSoKuawzNT0teEtYK5xZUxEj97Tqacxq9je8BUT9iMC81qvnrqN9xtNWNEiXBOdB/6aY6zSlfMSrf5TqZ8XGDb7OU8rBAcBo4QsAmMYsP7m0MazM1MlaEASjWTvorrQIJz611IxBSz3D314xHRRrpiMjOF0IG4rp2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h8vGPQCx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h8vGPQCx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC6BAC072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 11:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713613223;
	bh=LfVKZHEKMe33TCxIbHyL5NQf8pvJb34H6SxcQZ6z2dg=;
	h=To:Subject:From:Date:From;
	b=h8vGPQCxI5Fqm7dhPxEb4nka+37I//U7jXxcu5Gop2dCdwEIXA4FwJE3+EfA435UB
	 MwZeOF16UmPoLuPa78uHzHYwvNh5Z5CwGkjkx9As6kshg8mVb3c80D5T1dtRJWSWz3
	 pA8Cym0msKqbaskiCScpaVnvemhkhpuzJJZon2zhvZvUg+QvzJplhgqih5mZKc0/uC
	 uGcEK/tTPEaRsm9u0FK34U2HEhX1+SbO5gVd0P/xfj7ZZqZrkfsJw5EpTDHFdAK+LD
	 Miga9dAIbAyXHPA9OWpHrNp7hdoi3PvwDGDlqlem2bCcrtDa3a42GJOx3c3yKwYXjf
	 6wFjI2uSjgmZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1035C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 11:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171361322282.3437.15020325405031610273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d90764dd48d60a2e24509fe6bb26c30d1ba761d038b40dbbe37c78b27b0ea7a4
Date: Sat, 20 Apr 2024 11:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713613222
