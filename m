Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DB7ACA6B
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 16:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718470103; cv=none; b=PFwsaP42sopAgCIAmSws+Os01FdKewfBb3gedVYwb70NRcldYf//z6I2RIbIXPFT03fWYlkUC/3M+8oyjIiIey48rcMgXYLCHkR2t68yNEwl40SRBK6qJRr5E/gcFIVT2XbJyzTyZIbWpP8uHyraBvLA2uIyALSRT9ta7+hEUaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718470103; c=relaxed/simple;
	bh=kuh4TaYYmCn51uFVkxbBEVt76dP6NruMu6mHd91GZw4=;
	h=To:Subject:From:Message-Id:Date; b=hwXA1J3budE+f6Lo39rVIqXehtoccOF8o7eLSeYJ1brq2Y5GJ6GZqPp8anHujyvPW1AneCZBE4uG6MePuczAbBWhKrW6CJeHcIctg+MdRdrjMmJVaUXKPIBSiYawzPzKZnNPLj+BZxF84Jt3DHUeW0wbPDwG2gdJFyipUR0sSQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zo1QiT9X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zo1QiT9X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5F28C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 16:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718470102;
	bh=kuh4TaYYmCn51uFVkxbBEVt76dP6NruMu6mHd91GZw4=;
	h=To:Subject:From:Date:From;
	b=Zo1QiT9Xn0/x93SA3xnKSMvvMXufNoINi9xpsIOZoXhKgMEiuYoBa9K6gL9S+7/tX
	 RQEAiWo4b32cFYnyN1ZUUrrTyDBkS0KSm79seCUfjBkjxnpoADUHwq2ahwOvBs9YY2
	 V4KwziH+sOi00EstTS+7jFY/WxkPMrD17Q2A5QgILVL0jfuG7sybKF2Ozv5he0dWdz
	 zgYb2lieyd7bLICUfEzSpFaG3UW3FmuK7DZ2hLYF9Z3gislnCEp2Zx+LodRIXLGlZB
	 3Zbb1diH9M/59cNh4a7X5brxzaWnGL5lvXan2h+U4qV6dyWDqz1K3yB0B7WUhlyBZF
	 lrqyT0uBFBNWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9A88C27C7B
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 16:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171847010281.26549.10489887790057624379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 572c319f6a10192843b338b58dbce795be274bbb8442e41a205a2caac0a399c8
Date: Sat, 15 Jun 2024 16:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718470102
