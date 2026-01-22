Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C729221721
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769068434; cv=none; b=JGbtnVvrhr5Cg6U7dFxMLIGe+enn1Tl+PDtMTKNADzLsTn0q776JA/cuqtDpxPQE+m1YPcQ2YRy9biUP+qfpL87Xj9zQj28F7XZPdsOuKonGgDFZxSW6/7yVLCNym3Ga3uct5oAZbd/bckcVafwXycwIBrnYCmI1X2UaQZYsJ5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769068434; c=relaxed/simple;
	bh=YV+pcO1xw3dVdqEFHYS6C2GOheQRyxMfkzZDGQ3tb1k=;
	h=To:Subject:From:Message-Id:Date; b=FU2wniZhFb7Otj3sbbM5yvIPkmoP9A0/creMA35Yg8qOPDPCQ/ZF8qPT0AIBYyaoNB8Gb4sNAkUy5fCjhKu/NAzacBlHXrFyEu4mOJHqIbdEzsSQW9SLDC2xJMEpGXYdIWFBWgnOoC9H+rpI3v/iuWC2ZHGkrw6d0kPl0YBWR8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=as3lJ1FX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="as3lJ1FX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A4DC116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769068433;
	bh=YV+pcO1xw3dVdqEFHYS6C2GOheQRyxMfkzZDGQ3tb1k=;
	h=To:Subject:From:Date:From;
	b=as3lJ1FXlbqkxW56tXavViIKqXt9DiT42fsHT7Y3EBzST4hDi9yu1iktsBibwRPQv
	 lscuNceh5cXEHnVWhQ6/zEibI5l3HoYzhvWB3LlG/7ZNvssCwMxNByFK/3fF8IrSPp
	 p6N3+RGOekAllQC34sI37lRbyQfAbbKwouiWeoN1wv5RYLktm8QLaRvwQIXzJLTg+F
	 C64IWlqohyGisr0t4Ted/AFARef59VYKa4qFo4YTjvQ48Ckk8GElA38BAHL27qt3Jz
	 rfn79/sCz3ZbP2hqfqkzaUbovBKU3zdtDePdvstl+iWu5Mrp0LEruXPyim9ZVIecPl
	 FuOAuPkMMRCXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E85C44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176906843360.32551.9449566081451361880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee87ad3dddaa3a2235b6cd3c8c00f44ceb89e5101fe0fb78bc7a61ca8b37c7d7
Date: Thu, 22 Jan 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769068433
