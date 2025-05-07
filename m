Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44BB91C2324
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746642595; cv=none; b=usbKcc3qpd6bHuTSA3qRVeXF46ForbNWRobh9ANwqHP2WLuN0H0WNbZgBtLLnF0M2CTcbEPtcnP8xYmYSOsw9+MdrnfJXIsHMzekkJ7N3IC+kA3DmwgfAWBJ8qyAA7hOSnC4gioj0RQMQUUecR3ojGn/JQVTWr8yh24NhfW5snA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746642595; c=relaxed/simple;
	bh=Z+AZA9cKVa5ZVasccHfX6sZUVrMN2GaH+CyA/p+tAco=;
	h=To:Subject:From:Message-Id:Date; b=OwC9yKd0AMnvGajxSdldkrvK4NitkgG31FxV/rfjzrQz2r74D2fBlUs7V5dQdNKEYBsoKxgwJ+FvGSRfe+Ur+BooqeJhZrdUQ2F5CxMT4C+xEL8HydbVYhvD8x7IkgkjfwcckI231ovoNjfrwkEwJeKhgtrVqjtnvEDTJJ4dA58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ezsKlwHL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ezsKlwHL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BD5C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746642593;
	bh=Z+AZA9cKVa5ZVasccHfX6sZUVrMN2GaH+CyA/p+tAco=;
	h=To:Subject:From:Date:From;
	b=ezsKlwHLRNP7PlAuaWDrBn7wwGXu/9sJleB7bvkDIggaCbJlm93snA7xY2ae65T+i
	 5svJkqwkeJveBTkYcHQazh4GppRXJPYBymcM0GUZ+rtOz9Ta/YLcupzG52LulZxKYg
	 QOlnvEOYalsHlaHn5yxVtWZdvH3vaqmNrVBYZCbEMRhnusWmE+EU7LWLsu49UeqbGQ
	 BXPDwyWn0XgZnyCM0OozbWZDD+7P08e9s3P/X7JW3W05EasUYovGYCSYFJaVAKwAiz
	 +NmyIVALSPg30IdEBiXN+T2PemJ31no8VP+3ayg/u4wtddspW6Vn1nY2nofMwotxV1
	 ql4if2OEQNoHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E723C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174664259357.19977.8736372662525174761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b474b22e4354f93b567f5a11a9c76f61a68f22e0be732119558da427928e67fb
Date: Wed, 07 May 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746642593
