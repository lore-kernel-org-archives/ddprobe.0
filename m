Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 631AF139E
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 06:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720936823; cv=none; b=QFeed8vU4cbO4NA/24W9VDqDPYTlmFzattzdLPLj+EOdnjBEBDN533xHwQetmukDG6RM4Zvdi1zDD6jTscJVW0i7esF5MN2xo89wtWErc4oHgDqxttBHWk1494jmrpBI8VtnnENIgVAh7hOgIiirOcP2WkYGSRGJyhPVGwweeeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720936823; c=relaxed/simple;
	bh=V7GKf+63TBlLgHqrWXEjm60115TGsc1kEjuhY8ilpjc=;
	h=To:Subject:From:Message-Id:Date; b=GfIwuwUt6ySX8mc4Hzz0W/VJ7Ye2+rtkcc6YTc3yn6mwVdbXnjoZ1xHEi6YBhlIUKhcO5spX6Qmk+9Bz41MPHNI2azcPAi+tuJAW3ya4Q/om9xHdjo9DnQAMuBkaQgVGufLFGa/n4MwVk5DKD0Y8X9pEFaEX+kSO59fYmt6Bj6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WLwP+UPb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WLwP+UPb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCFF6C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 06:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720936822;
	bh=V7GKf+63TBlLgHqrWXEjm60115TGsc1kEjuhY8ilpjc=;
	h=To:Subject:From:Date:From;
	b=WLwP+UPb6KtIU0pOnT2uiMpNilcOb9ls40UCqtjbeuG8obqt2j7Sci6hXaJkceqMC
	 52lYLng7031eY3cZgTfwC9xq5A4Zm5shgUFj+jGkkRehENCwDV306qq+aI4/qRMHpU
	 l7T1Ks2f89n6TknALRWmQ8nLfRyMahxc08W3bI8L2R3N/Difx4UidLms5mgEOEl5Wo
	 /zb9VVRA6Eo5r9ipyBzrZl1HVTlPBvytDaspLTus44hAsf9EoqJqH00CzJiVsEI3Jp
	 Nzy4Pfs2JWpxpjDK/DIC9BrGnqmEDBpZBIMYt/zMBKdak777SIhetkEHyYSTh7GGhs
	 gPIwKtButiDrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9E0AC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 06:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172093682278.29702.8756369036071460747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba5d3fdfa26fa77f53990a7ea7584bca58da05901c7e200dab3909b5eed6ea09
Date: Sun, 14 Jul 2024 06:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720936822
