Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5111EABD0
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730837754; cv=none; b=mLyyAN+h95IYoBzezqx99+CPefyIYj4tJuLwsvXHiN+WHJ5SOKAMx7EAL6oQ1nxl3TBtj2Jj59/HYgxRLV+rZeVlw31hD5iojVAizth0TASJ/TatR2GaJrgx5yCFHjX1l0p0dYHW3Ll5xI+0Muc4aDIRwnQFrETIMXaY+qk+LaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730837754; c=relaxed/simple;
	bh=gAx0W1I55QqO8VEfN5ZDYhWP0z9bKdiBf7wpnpRH3Mc=;
	h=To:Subject:From:Message-Id:Date; b=KxrcS0FkWPEpwjwGaEAyAtKKNJ5Qev64DjgXyAEW+xotVa+QVkbk1IUwqEqSbT5y6vzqlBpMlY+H4UvTsUqPmlG+j7Q+uCl5LhlxjyObtr45xW+IEyMX3GBCGFOfckWCGBxRLK+Gn1DXt+rp6KivmV+NRrJ3HjZjbZ2ogZXmSHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qMam6ZOH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qMam6ZOH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2CE7C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730837753;
	bh=gAx0W1I55QqO8VEfN5ZDYhWP0z9bKdiBf7wpnpRH3Mc=;
	h=To:Subject:From:Date:From;
	b=qMam6ZOHQ81AkbqtquUstJJEStYvK0MEEGs9LesfqHqP9360ZKgDRd3Ds2uu34MO3
	 sv8JdRwd1IZnJygD7XodFDxNpS2DsIYaslnq0u1VHewbxt7uDOK6jltDgHNTkqWgjM
	 Ns5Miuwo/h79mFXyQ4NDplLCQuwC8/qLeTMXGG/EbXhyuZHRuO0vWygfehDnWT9saF
	 iiy84/61ZR5hrZ+T9xLfG+SEu1uZkJiGiFQbwfPzunsIvidiF03KO/dP0sG4jUG+UL
	 GQ0SFirHXG0AeC9F27tpX6glGD+PA7Ea1nxqKoQXF16K5pAa0kKPXeyQVafF44lDoj
	 IcPweDrVhF8mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9818D36137
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173083775364.3943.7979875634699586391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a64c7d3c67218c7dfb3739eec140a2bc50491be67255253397aa20891c3b7dac
Date: Tue, 05 Nov 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730837753
