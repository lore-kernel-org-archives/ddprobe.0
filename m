Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E791D63D9
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734393354; cv=none; b=pqaEvLRiZ9Aq49ToKjWaT+phM96PFhuCpEIujP4ye2RQ9HDA/D8FRxto2LddTehkvFKq0nQC0AL4WVO8DNItRt+tbbIxovQHdbt1aOG4RYvF2R0CzLjiY8a6pph5q9bk1opaS2riAq5aZefIeZkzDcyNsC0ITbT4ooBs09P+cO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734393354; c=relaxed/simple;
	bh=6uazNdC41E14dtJRKjp6NXzKkRJp6BokGCtxiESCwGE=;
	h=To:Subject:From:Message-Id:Date; b=Fbgy6/lIhn7lDppXdFF+NXBHpc/SLujY8Pv2GiecXxZ0n5ARuTLo5wsgYLdtp9TBwQv//XZCrXQIljXkBB655UIaPv7W1/UaKCOYyxNQyGD8DZ5IPZ1/DA00zqnIUyDoTV0bF85Ie0SDUGEPpqUHOOUACEohwn7KkiYnHN5rlLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OfbkBkNI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OfbkBkNI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEE5C4CED0
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734393353;
	bh=6uazNdC41E14dtJRKjp6NXzKkRJp6BokGCtxiESCwGE=;
	h=To:Subject:From:Date:From;
	b=OfbkBkNIbwIacKwXDWd8u5TDa4jMqWVUjNwVAvDG+XptaxUXqIG2mBPM3E4jbADAl
	 aJVerxxkjZuIGA9RxcJpk6fqlrjuQoccWhs5vM6Y4VfCUus2bMZIfRClYD3BYIq7ED
	 wyz926fKOTjteRo+AKoyBwGqAhvcp/IPwUoZXbFSAIkxYrXbFw0x8A1U//Fxv+zmwt
	 Z1V2yyt11i1wOvvPNQEJK8uYkrs2t/023sMusNbpe4WITXGLdgSBh4K6zLqdGn4B9F
	 TfUqgSzOrzqGk/9QzQKNcf3chlUm10A4Gcx/muieQoG3u5RDEepG3OodVuAadXfC6F
	 OIjfqX9RwwggQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A095DE77183
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173439335364.15289.10469545999973437570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de9ef6324315d8ffa16f219df0a6000e6fd8047a441b48225a871d21b637d82f
Date: Mon, 16 Dec 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734393353
