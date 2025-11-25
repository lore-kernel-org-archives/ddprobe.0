Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1132BD590
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 20:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764102174; cv=none; b=AAiaDuT+ejqCKH4HWhYUPFfZsuDdDEJK/dhm7eUOZ9YW/zAue1VoZ86D9VnqHg+Mep009x1IsUN7DaCZWZw28gnAXb+0pjXzqo+4M0CuSLSxQjWOj7dA3c+bCqA5eEXdY0NcJpYUyu6xZEF73jnn/s+Vgon4NdC4nUQ2qR0S9k4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764102174; c=relaxed/simple;
	bh=ZSCz8NbOs9vnp+THQ+aCbpdOhaIfxA70butRzRb4410=;
	h=To:Subject:From:Message-Id:Date; b=DrZ3jR1zscAo+oSqdyY81yJJ1vjTHTHhKb1UGZOuDdoUSI1bHAzpVXpqCuahGdKgThpTrceCCQh0/DRo+LA2kmpPJJBA0t+rk1Z5kZ1MPQJFYX1dihMJWZU1io43hB9c0/E9Vz6SyZGyi3eJzXxyPuGmSUrvpr1n1v4AIzeGWAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OLgM4d7c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OLgM4d7c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A765BC116B1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 20:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764102173;
	bh=ZSCz8NbOs9vnp+THQ+aCbpdOhaIfxA70butRzRb4410=;
	h=To:Subject:From:Date:From;
	b=OLgM4d7cvAsN/yzEyyd8xI9AXt9mDV/MkUdGwfF1zyhJkKO5VeMixQCjl/jRmBjdF
	 xhZPAKMUgqyLkEumiR92QtLEsH8Sq9GUFUsZDfqqVnQIm6bSkH36pdervdyscjqWpU
	 08bgzzf+/7UXBdJXP+wFXxzJ/lvUUg6FY8dsHErLMGTgJJaRvQVAjMB9tzxFUT/oXF
	 +ZuhD4V7FhO5CfgpoM9tx0v75ntcTMv7W4Im43bzNwOutgqALdqsr3ZGC/JpHemidt
	 X40NzGtK2DGKpjk1IdaQUDJ8UNa7YvgQJkwgedVZLpo+fr73tEH875br6c9YPApQVm
	 fHEScy1zQ9KFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B80D0EE1C
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 20:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176410217359.17063.1371940503394096928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4d29b3b66c47bb6929580de51592d6ce9b6a1d60fb24e865fb638ee3d5cf8e3
Date: Tue, 25 Nov 2025 20:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764102173
