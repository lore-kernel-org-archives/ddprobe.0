Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07C0C319873
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767897834; cv=none; b=O9WUAJSvbM3POUW7uzf/NbxhKcd3aG/EHZCZWx0YNF9OgISAFmfj9GGgO+Wo8H8K2OanptPERi8pdsigS9O3rWbBFDPQR0aw0gEp2T8fDeaG5Xh884wNLGez1Irn8ZciLgg08MK/0Zg0rZkhU3oe45fKHPE8YFcVJ4iJGUuADQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767897834; c=relaxed/simple;
	bh=HIeGysFR8h03j2QkRiSsPiuPiD/53hFg4HbwyWXAK4k=;
	h=To:Subject:From:Message-Id:Date; b=DVfDY60leKkkYq11Wnt2gHf0Nnh7xCop0FVHCqIVKC2lRfv/4HXKoZ6EY6I2AAk6zv4nSA4fjS7XSY6V3+eOWcLwVupojsqzxi8RCbqre6qIfpVinGNUj3PcdN2t6owcH3WDvJf371rPHURuF9N1gw0lEC15BEvH05Ak+c5j99o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tr4w56W9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tr4w56W9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34FAC116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767897833;
	bh=HIeGysFR8h03j2QkRiSsPiuPiD/53hFg4HbwyWXAK4k=;
	h=To:Subject:From:Date:From;
	b=Tr4w56W9yOeVaORZugDyx128jLmU3l5vK5SkhS+vzfBP2EQJvnCeYcjYHPX633Llc
	 rEhOVhzszT2/bvkJVUcZewZBZ+cmsXc/NGkOoOwUUJm/NE9xZSUvrVDDssr+jt5Jiz
	 6riwFH9tckdIiIYa6G1OYlC97ySYk50pGQVrE1jtTE30BKYIYLinemj++PlLQCBsOG
	 9JVCjJxE5OamWT/T47iQ5GfvgU1yW34DeHEWOtxBcGSKMDqRkhytrl1o5Q7qEThY3R
	 MSTnlS79ieffngLFxS/v0zbFLDxLmNcKXkT0SqcTb+EUBsMEYIz8vDOMOyw1kvVaMR
	 4hsnLEGmq9Nfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94233D1D478
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176789783357.23764.16466864724246508147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c84198e809aefc64b09d067e81bc7c177498ec84ded755c69d78432085a68b9e
Date: Thu, 08 Jan 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767897833
