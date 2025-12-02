Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC222BE020
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 13:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764682974; cv=none; b=XSrrpYOsI/D7yjpZO8ifkd98Kwa3It3WhUxR5k5zrJCaIQLsoQ0wpzqz7ppjWfCHW3VoSafLzDeua8GxtwjDVx28XVO410y6zL+T+eKi5mifCBivfE/KeeNfV37SrSpAXlQpyw+SNe9ZOf3Wo8g9hWPppIYGN0muRRRRWZygCe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764682974; c=relaxed/simple;
	bh=fsxm4Dpoi+cyb8NS0dbiwK+MZov0N553Ma/svTMVr44=;
	h=To:Subject:From:Message-Id:Date; b=nDWPaDMpFvIYzHKkS3nDAlXlP5Y0cAcm79E2Ne+BRJI4QsEyk34g0ovx0zv3Fs6vJTgDqhC4ewWMr+iYuuXDuKnM6PuUQtVXNHBs69s6A5OvGJmnhFNmq5z0ZH2V79BRa21GPqJGG+tWkk2CZuRiWNothUXbNffL1yBH7dLy3RY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s15MVLCG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s15MVLCG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AADC116D0
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 13:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764682973;
	bh=fsxm4Dpoi+cyb8NS0dbiwK+MZov0N553Ma/svTMVr44=;
	h=To:Subject:From:Date:From;
	b=s15MVLCGABW5cCwP/K1+5W1tmgc4vX6AHckVYLoFwXHE5y+wYh0+KvfFHGWrso499
	 A+cBtH8fwl/iydWVzocVj11qwL3KpZcv6B+dJWCYRWCIIB0XhkKrQclKuuSDlNsUaB
	 YZnxFwHcHQGvUgJCMy3P5Prj0MTmjVN53qdrf9094EOX/CR5hBkPIu7lue0bXEhZtB
	 P0P0WbenM7iPdXZb7wlK5SwJU6aDUUsdNG7UVzDsIPCTFfUyR41dmcQPeuzATm+wW/
	 /k+FWC5yV6TUEaPDN2yAVQTdbkLhfhIz551puejBaHgj4SVhpVXMmPT/l3KnvXgZd1
	 MeHL2EBFHTBXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A5CD11700
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 13:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176468297359.10188.15913282453355079442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc482190b2507af9b0b1d2ec1e4605ec4aa7c1e55a6f637cef2c234940a80e87
Date: Tue, 02 Dec 2025 13:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764682973
