Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F57E273D76
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 14:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779115834; cv=none; b=dUNUayxn5PPT5+wYzt3MRgveVVI5/fpOudV3c7vCpqNPuAi3CtSToSFeeqH+nfk3jF+YJtI4GW5sA/mxltL0uDIfh2nDaKFd1RYQR0FxvxY9Uu8IEE7rPjdMsUaxn05FuF1OsVyK+P9sT0rrf6RdOlLEadm/CJ+vzcjzv76mLjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779115834; c=relaxed/simple;
	bh=Z4pB8Dd1LFcATJyhVdX43u1mtXN+UwQtLWS+nfSr9o0=;
	h=To:Subject:From:Message-Id:Date; b=AWaP/N6NSNMnS+jBLCKA1qOGyG/etBLXBLO3k40rp+wNLOgBz+rDMCO3VVR5hFSw6MoECHmM11g6SNbsmjtxo4xAbtoL9Ah6LsC/FzH7+fmD6LPRfLhHlX+9kUkULm8sTfZl5eV+r1tfoZ4AYczL6vrYFOJS4wPJF5RMU5TKlb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lvr7s/pF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lvr7s/pF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA8D2C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779115833;
	bh=Z4pB8Dd1LFcATJyhVdX43u1mtXN+UwQtLWS+nfSr9o0=;
	h=To:Subject:From:Date:From;
	b=Lvr7s/pFgWNMGxYL2769bmxR+WBvNhQPuoRKBnNXgMiOG4W0zRoV8dHH/K3/5t3kF
	 xyrJAP8os+2YsIEqJLe0cJzpN7gSn507EyeFVB8NjQiqR9X7/JfeErx+zXw0SkiEnh
	 EzYPbx5hERQNfUKTWmKpTQ8DHwsWfpSHY/9bgsJx7AtUxOkobUfrNuFJU2DUQxa2YA
	 6gZuoHE0CzseHT+vNzSbM7ZNBv7VXDZZDTQn+iE7P+WDNIJgTRuw/yeFAzR/dOQdhs
	 2Hxz3rRo3SSi8koGJ4LEiVQ14QOXDyUBeerAEJ7dxpWtntLEYPi1eeu+oUCjTkxtuJ
	 3wNZHtDQG2INg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB813CD4F49
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177911583369.9055.5614392902172416381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 947bbd9d468bc18af657ffbbfc2fb701ab0d2c851e757f83ccdc8151708a2250
Date: Mon, 18 May 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779115833
