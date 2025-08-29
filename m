Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2214113B2A4
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756442994; cv=none; b=cdFPUGA/0aiJ+Dk9xuRcjHp2A6SRjZPvXCKnIc5oWZFh1IMRfT3yYqXfIVgPbGpdzJ4PSXp/Cdspc0EUxRhKcUA065bSHi5rpHntmTXIfDtKi8y4IPRLbJ55Cl2kxS+izvrwBwGGg/+UcN4IcmDpWO9YDKd1bxxkA9SxNLKVBMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756442994; c=relaxed/simple;
	bh=UsAfj4j+D/X+71gr+e0IbwRIO+EkFx5GDu3A0Fl6OfU=;
	h=To:Subject:From:Message-Id:Date; b=SgmUkvu3fb/T/PHjDYD5qFgV2u50Va3mtwqwiXT7m7r8iW037LnSNMQgI32rPmW7nH5oJIjzkRqcHCqGkepe9GPSSNJiF/s15H0credU/kvxtS9LRKbJOphzeDwVdn4hOzYqolDSGzU7KgvJ+7PTOFPznOss9BHrDS9+01ud8+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aU3A3Pd0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aU3A3Pd0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A402AC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756442993;
	bh=UsAfj4j+D/X+71gr+e0IbwRIO+EkFx5GDu3A0Fl6OfU=;
	h=To:Subject:From:Date:From;
	b=aU3A3Pd0ZBC6aDIzwyJ+qIqu+kyfvmqIEq/A/ylsdNfQgPZG58wpf3AWPUg45tGh+
	 T3oNxNgPvBcoFFdMRu4m36N6wOMgXdDelDSThxg/b81A+YlrlxAjKgb0J4hFooC57M
	 4kwlX+i2DDRYyR0YeVHCkQEBHDqVBn+E7W/7q3HuYbLXjRGsF93aTaegXMHxcvJUhj
	 TMXHjys7pfQJe+6d+rnScfS5Zg7kLRTYZZWnI7xrz4QF79kg53oPQjSe41tTkgPnzR
	 SlPF1cbiLEwMFgPuvBkWzCXNhJkl9Fg4fZf6bK8FqExNacPa5vBnoDWF8cPibF9brx
	 Asl3ohD4eJT+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A67C8303F
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175644299357.30225.6173371903195065643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc153bc84f9b34e136dcf8c4917c510062660dbe57904ee773198d9919e8df5c
Date: Fri, 29 Aug 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756442993
