Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F01E14A60F
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 22:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784415514; cv=none; b=kFvUycpFmX++1tVpTpzEgo0sO+lbfDwZ8t9+drIVIN+X/1dPjImIQmucJy5Vd/j+cl2fg+xlk98O87Nc/A2sv+H36yhxlyd3tHCTtFYfu83oD+FnEd2arghperTR3XKVY1u1JBPLoDDDwAHDRuOyXpMwMGlM05dHLqptGVgbSY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784415514; c=relaxed/simple;
	bh=kWGbyxiqVh3VVwuPicAqXrok52eZq8nMM6DDcNS/FhY=;
	h=To:Subject:From:Message-Id:Date; b=uWaqBaE4I95IlHyTP7U5ZB//iWQsYKlTNA9T/Fd4NKmRAxPzDtMXe7wz5bwRaNISdUpNufe0cQrGwo/sMPItY+YWaig7oCHVAsyxFJuz69i/0F06Lc2tEfp6av+naLSGjHI9vCslXKg3jb3rp7oSU9yxEaDWKaTyCoKx2eSKrEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggoiPR5s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggoiPR5s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A3CC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 22:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784415513;
	bh=kWGbyxiqVh3VVwuPicAqXrok52eZq8nMM6DDcNS/FhY=;
	h=To:Subject:From:Date:From;
	b=ggoiPR5sqnVG7vIXnqoYFC3UAqQl6RO82FFXc2Fnry87jXYS1w8/Td8j6+cHP6/aH
	 vzzamue6l9O3auac6zLMomQnF61tbsqciu0EkOLEQeRgaeLvSq1+GYgNcl9WQpub2X
	 1VAGw4dvgVpqkHrCqS5fnPeqzFD9KclXZ39dlc5n1kJsX8rQPT4hFJLyYtqU55/LG7
	 VvX68bEwGyyBThh1GD5gqtMhYP2eAWiGoJlIDJ33qS/2NA2ACyNuqhUHHQzHuPPA0V
	 2Goy+jZjwTTNzX8dLoClhMeu1zqk6dR/n6eEIsHu4Y0kQ97JoTXeABY5ASeum7aPrX
	 V1cK81Q6EajGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC091C44521
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 22:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178441551368.26566.850006791371799236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c419bc6edf20d501be4f95e83077805a666b38512605f9344ecef554cf915d82
Date: Sat, 18 Jul 2026 22:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784415513
