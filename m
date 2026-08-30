Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 559233A1E67
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788082834; cv=none; b=T6ED9BE0H+ta0v2IvaJbKdF47QluGT495kILkqj/jLW7n3mafh/PywE5WyC2BWE5pnTDc6GDxOke2ZLVGR7ovQNVUPEwoIqDj1Lme7CfE5qMhUSVjhovUwjcLk+Zog2+N1m1tvoRP+Jv6s//hTX+6AkbiGbxWOwK4Q17THZl8SQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788082834; c=relaxed/simple;
	bh=KzzJ/SZ+XStiDT9NfAk42vfZaltgwXN5EK8lG32DM2k=;
	h=To:Subject:From:Message-Id:Date; b=FDC4MQzSYCmzrGg9OdyoOIZtSQ7AR/etUUaZhzit8/hZPCBgSeUVM7mDKPCz6ytNCDMOm7xhNX0TyHS0/s3Sv0kGJ+SEHGMNCQlSlIOw4UuP3oZkYPef448KOMqAcArsGbweMQ4beoxq/nb2VAYLEZOY+gVY4Aa0Qke7rKE1B1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hAvBD+Ry; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hAvBD+Ry"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC755C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788082833;
	bh=KzzJ/SZ+XStiDT9NfAk42vfZaltgwXN5EK8lG32DM2k=;
	h=To:Subject:From:Date:From;
	b=hAvBD+RyTkhmKpv26na1/Vz49CafRNLjOggq/FwJ4o+yS8m+gidDiljp/rEyUKQiS
	 8J2BGW21VW174BF+Oj1H6+lb0zdoi+yIsxqaBvNB7q89BeLPoiD6Pe4dzKoQIEDP5I
	 eEkzL4zgjuM1YrhEgsoVbE95sFc67Fi9+dl4XgqSUvGQAehLTfAHEYGSf5FzPv/RtQ
	 ytC4gNOnLnHK3QJ7irfbQHM/FYAyiDd0CujgFawbjSrwIQGa2xMpAdNRx8uGf2UxIk
	 suTck+XJHharT39riz7To+e6OFJip9pdSJmThRaoLiAkNBwKybBn+3hHIwePpc53Dp
	 kMjHwemomUxeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E3FC61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178808283368.8389.17575425984244743457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b56808d94c5b9e789b307b50bc7561164963c95a4734a7c242c0611938583715
Date: Sun, 30 Aug 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788082833
