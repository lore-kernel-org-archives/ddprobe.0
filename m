Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107DF15746E
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767405834; cv=none; b=V9dGTzCUpdyUmu6NxZn3Pmva1OzdDtS0kb23K6WD9nSN50BilyCKgGiAKnaxNAJdWgKD/xKZ1yU4bkASwAkE2PrZN64f4GsFq2qqmDhR2RFylLZo40BgXV8HFkd7sYfy9tSuL8j6bfSU5OjNdrwHflwT92vAyObEXubHclZKaag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767405834; c=relaxed/simple;
	bh=+Naf7Gf5P7KFNSv5Gu0ZUqWVz2JjS+/AoZsnwOmRDJI=;
	h=To:Subject:From:Message-Id:Date; b=i1ytS3qYsJKSlxmuVBp33jRoil30/58g5gSTu9UzzLDzFi2EJMW42NygHPmcwj+0w2PpNyvZW9dFEE8x1OKWlWyOyydotsxw6r12NWY5nwWpl0PX+DomqRDyt6X4w6uf/Lk46GBdST6KsJveRs1ekU6WJTIqoeAEKW3ajH/05TI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uu6K1Ejt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uu6K1Ejt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6964C116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767405833;
	bh=+Naf7Gf5P7KFNSv5Gu0ZUqWVz2JjS+/AoZsnwOmRDJI=;
	h=To:Subject:From:Date:From;
	b=Uu6K1EjtjgV3fIn7IelEmPAqavmTOiPFRcEP0oH5/49tAkKQ6m00/zxZfhlxOzM6j
	 NjzfWrsoDWL9VUrTVAql6pmKKGRBnZJmmMoU3UoPhwSEVzNecfcPSYT+NYTBeZgrzf
	 gcdUOcjqbacUBCESBCpzN2J76zCEvdS/WzPyK6KXEo0ToIQOskuya4yLZONGC/gpJG
	 a3skY5bSJXjIA6BjFeFTS6cITq3an04lVjGtdlqhKSM28ZBrcsHErSA1KDP6fpXkLe
	 MyNdXTmA2GRl48F0mf/2CDib0ownfvX7bSVUc0ZSTa5fyHtJPPcIi67iA/W0HmIBoB
	 0/rhwm5RaOHOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9423AFC6165
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176740583357.2999.2910823331791696027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85c6b854d3fb690d2006fa38bba45e2903199ffb1fdfab2b9d7f0b373e683084
Date: Sat, 03 Jan 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767405833
