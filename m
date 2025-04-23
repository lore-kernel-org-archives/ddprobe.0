Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299BB2571B0
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745369394; cv=none; b=Xu25INiZk/QBvyk9g91SALBLnJELv2M1JwnpqM6X2Y+JYFbUocUjieRH+vyrzeK/zFbnwG2xafrbgiyT4n+dSQLnPub3GRq2Z1bIHMVF/kCe0Zrzh8MYUNFgosfub0S6jeOoCWiftOlktzSsy5mw+I6ScR5Thpbe05EedrpEUZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745369394; c=relaxed/simple;
	bh=Yx9bBVg2kFVJisjzwdOFHHvZrGNrFs0gi5JAio2Roo8=;
	h=To:Subject:From:Message-Id:Date; b=Rym4t28feLdTnbs6gXMDhoQLOCEl6TKFEprmmMD2f+9LZYH7UK9pi6HgpmzS7YbhkgHJ7Sk5Yn+kPtdU7ZBAvnd7kJkAyeNDbTFYvV4akI8EWXmwiOR7ixMIPVOaNuLDkqNU/unMrw/MPeea36p+RFRtrtBLI/NC08/pgNpeNjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lTs4vSRw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lTs4vSRw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E394C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745369393;
	bh=Yx9bBVg2kFVJisjzwdOFHHvZrGNrFs0gi5JAio2Roo8=;
	h=To:Subject:From:Date:From;
	b=lTs4vSRwcL0B45eUmUNe2GqRWytGv32S9NeyJ0pGM3FYBeTXckjSW5YzTeU9Cnic1
	 K8pk43Njwo4snEabhWfKfmPtjjRS6DwhlEX/0jy0c8g5xi4ts7c2ZjHzXQiQOjajmA
	 h1nVGUl98oCVSwmd+0Og/1JJXQbWU1fLDAPo2c+2gdIQPqo3H4Uoul5UyZpDsptBnQ
	 su5owgkOfQo1bInUR+Dho91jzcyq8GH9tohlTvqYqFE5ItJPxM776Ln31Am34qfSL/
	 +6LWbnoyHNOvFs0FXCuGXZbvA98ILr/F6JVVDSIDWk7L56X0MMJaVySTQOscFvIk/i
	 GDnGOptRFRYsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECAAC369C2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174536939357.10698.4406600319520729338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 597dc0290a5f80e977347f921e91f52af6c0cd075b7e65633f8b7ddcd4dd8d9a
Date: Wed, 23 Apr 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745369393
