Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F222F24A060
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744897794; cv=none; b=c8ore2KyvFN4oc5zXhuZXAKmDqVP6mO8iDcMdqmCVvZ5YU8goVLK6/IC4UVviEUqyd8xgKxbtpJYEN+5RtmpNx2my0yv+OBJNeN+uxv6hTQbWK6WKdeRIEh5Lenl3tFz1iIKmMrK/AXkJ+SW7kS3bMvpsoumlz+wRHF02SvJt+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744897794; c=relaxed/simple;
	bh=IizEq4eHVVBuMaHwXrydsBs67jJKdxqAp9bsMH/G7h0=;
	h=To:Subject:From:Message-Id:Date; b=BQ0UvXnJcP15dwUCfrEfrN/ESAZLLm2COo82Mxy6spEciab/R4YbOH2GbAsruofeS+stmesayrTpGeR3fBeJX/qZ0lvKDNzzCAXynDH89sf1oUP3Fs58LSQp4SCZ3VDHlSyF3EemwlK8HqniRKHLQiS8TQPDevghD33qUELW5gM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WBAi5Jc1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WBAi5Jc1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE2AAC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744897793;
	bh=IizEq4eHVVBuMaHwXrydsBs67jJKdxqAp9bsMH/G7h0=;
	h=To:Subject:From:Date:From;
	b=WBAi5Jc1L5H2/sqLb+2gY81A8TxIBOnzG4tki8qQYO7twUvpl/OffVT5WKp2vrnZA
	 UbzAg4lov5dj7vpgp4aP64VNIZfDv/7z6bIocH586hgzGlkdI17vLjsftwJHlQdjwO
	 x1xEffDTMrcp9LbdD8+GntG3l/QG3mRyOOneXoibwNQu2BGqlokjbaebipvY61MgW3
	 iqQYvABhmkwOIjZM73gs8kEW1E+v6AFHEXMJQ1plmtgtb+VCUP0jwOwEmiRc6jbPb+
	 9SrdD6BLtJxHCP+6iCo1R2HEb1vrQpkb89uWYqlviLmt4Q41nHrW70QNqd7BxjcVnq
	 Vb92QvziIvYMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D4A6C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174489779363.19416.14417325077315211840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b0518e3906349f6c76012416b2fdd79536515c7d360f08f09946760ce3affeb
Date: Thu, 17 Apr 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744897793
