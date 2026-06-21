Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53BED4964F
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 05:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782021394; cv=none; b=ox6PfozYGROVH8ri3LYUYscxsxSsSvGUBK9O/dNnE7JooV+Ix9V9rjhwZLRxyyP+NcGop3qS/PiPik69NixhPSGWjOZ8Co4dka0jw7K5Oofx6L7+QhgUJQvgkP+XxP2yiomvlww8cqnHWxR19M4mUoOniP7aG+YGI+VWDY75w4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782021394; c=relaxed/simple;
	bh=OhR9CMiMwzUsj9GeaoxI+Kt4iL8mMxuhjNJo+35m4tc=;
	h=To:Subject:From:Message-Id:Date; b=nn0d83H/YwiJH9OuPh79lp6DFAsyz3rxvKXxbKEJzBctrGIqShQ1FfXnIfLPXKtyOnR0Jt2aIhrDDnEKb/9MKbNf3uGw+4+CZMkZvn51GBsvwDBUXBWFxkwv1yXE7amXOPhCGiJgh135y5t7HH2vqD0MHOIAKLMTgysHGVHnecQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMOifNd4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMOifNd4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD70AC2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 05:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782021393;
	bh=OhR9CMiMwzUsj9GeaoxI+Kt4iL8mMxuhjNJo+35m4tc=;
	h=To:Subject:From:Date:From;
	b=XMOifNd491HeXwcqw8B+2/QFlbJsLsV2LArbZn5wO/om9uFeEQ7WY8l5I+ZlqZSMW
	 qbbkaCIgMtdpitJruRvlfdI5iamkBZL3jHasCOCQ9+Ry7U2iHoe7ao+ZOczysrdYW2
	 TfhlTaeHep+5B7Fu63GY3JHKKnz/vwoeooWryu3LArf2Ydni40gLDnHkWxxnk1s4nZ
	 RRGUBiQUVG7fS2Mox7BHLBpMPguEpSHCQDTzMk2gL6gxgdpzzt2n/M0X2ntXBXmMYy
	 bzn+F/X2xcOjsTH5b9absqNOsFcqp7hhV5UVLH8BgSnQXxh44aEca268d7hS/+S5ra
	 0/Q+HkYPGgkwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C10ECCDB466
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 05:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178202139373.5514.5307585445460839814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58a4c9e913d8fa8b74eaaeb36a594a86decb6f78b28cfb3d7bae7297a6b03d1b
Date: Sun, 21 Jun 2026 05:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782021393
