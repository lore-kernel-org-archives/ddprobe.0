Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E83313B95F6
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774603494; cv=none; b=Tbf0/TOI+tvKnzShZbIpZPbwIGaf08asLmAwDP+ANNj2cwnWncBTZOoXV5HW8Ko0p7e+neiEj9YkOHHQqRzJOvm830DBwDIoAlMpYXBgKXBDZ2d/TPG5ffFo8fQz5PK7yxpWnyHJAlotB+ydwxMF524mUObl+JJ12TKJWVoJ3WM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774603494; c=relaxed/simple;
	bh=Rcmpu2DPT83Sodf9XkxS7J5Z9R1zIs6PNw0Pub5dZnc=;
	h=To:Subject:From:Message-Id:Date; b=cRsZZ6qJWKUXT/R/IR1brPed7onNwNSEB7blnEWksSUp+YnbTfY2MmAChxkbUgnsnGXOGVNv/5DhatzM376RVVPQqgQ/SGE6D7DZaWKKgNK58KxaXHN8+wVqTf3vq10JTMAb2uzxnGV/oAg+78iPge8MsL11ldfaXRWEvTR9M1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oeugcGzz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oeugcGzz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30C6C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774603493;
	bh=Rcmpu2DPT83Sodf9XkxS7J5Z9R1zIs6PNw0Pub5dZnc=;
	h=To:Subject:From:Date:From;
	b=oeugcGzzkiewWLwzcF9HUfBBnzzIb6yEbRusU06DSM0d5KX68Ncpu8Bj8c9w/G69V
	 +G5rBOpG7pG2JlMvd4/X0IIFajdGReBShqESBhAugZ15vj3D7n0swPIa9qVfdhLW/B
	 wHyqO4wH1EnKGxEblicpZf4vtvlZCpxwWpamIwqFYCRFDczoXG3Ze+nbjvvz1rzCKi
	 40MYxfEQpz2nfXyvdbhpgaE+f4mqsZslq0ZKakdBeBWKmwJtanJ+6WEuzXgKuvIufl
	 YwEqwKpncmRnDCysgHs/CL4CPXvBR53cSl6RbtC7+FFiY+uWkI8/YmpjUEE8nhyTHr
	 IUxbT1oQXc4LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9378E10BA45F
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177460349359.13172.17890771350817657753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c03c888fd23e89d5f03f80c802f65e674290d52fcbc58a439c67d271f22fcced
Date: Fri, 27 Mar 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774603493
