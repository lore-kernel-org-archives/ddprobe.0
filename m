Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3946D25949A
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735164954; cv=none; b=jaLrKInpsrsgDGfPz+HFi5ZstAGZoWmsGeOEEwxtnpkK3jrSZJZY1F+d7UBuFgfwvOY/g8PBDMoRbQw9EqW3yE69ela7Y3v8Oovoc31I+lqIxdLrxuZ52qPKOVb4yOAEWBdXhlqm9Y67nT+2+inC3p2sMDNJbQle/m6Nf3IRuqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735164954; c=relaxed/simple;
	bh=SBASpIyiM3FjzV9NV9yBoeO4gts39iHd7jjLgJf0IVI=;
	h=To:Subject:From:Message-Id:Date; b=lwsVKSvaa5s/tpa0N7uvOoH+xc5nlUc1konOuO0SliaagfIvTvcUo+tyY6ufBQcXgBVKFh9tuq+aXUuc1nV2IHP6PHyauWBNZghQcRoN5HvFAwoSW4+2x74iegE7r9VGDDPn3KGnUAiFTl0cONBavdzikTrXEvMO+wi9mhKtx2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fHtVUiKi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fHtVUiKi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDD71C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735164953;
	bh=SBASpIyiM3FjzV9NV9yBoeO4gts39iHd7jjLgJf0IVI=;
	h=To:Subject:From:Date:From;
	b=fHtVUiKi+VZQzHblyDYIZycNSkKIOMf9SP0gtFR4Hs3n01Qg3D2QzlAMkSWoazW+w
	 01xdzfYC80EN7mR83rRyplAMRr+ED9bbshO3+yyz+dJtt31tQ+uJ6K306VwUb8qDHD
	 YH0FHMcxbccDldkNqmDCgXx0PxMjSXHk4ja7EFjgh+VLUDsJIBbw4Ker9viP7BcTYo
	 58SA7xjX8gFVm7jQj3+E2iucZJKmb+jqrb8eaIzUwlcd6WczKKORThdrjSGNM+WWAG
	 +hFJr4MmI+QgPUs/2I6Ea5mjaL6hEXzlQfhXx2lasiL3Q29auq4dQYkL2X+nI7y/gn
	 1x5QYW/tCfKfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A55C3E7718B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173516495364.29660.16930895922968664055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06ef9033e413c6a59a92e3e9f4026c939a55361b10da8599667623fdc14ce4d0
Date: Wed, 25 Dec 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735164953
