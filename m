Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC6830E831
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750357794; cv=none; b=cN1BC+HVS6R5x9b2pMXNF0fCOkvgf4tJrfWRfaTHMN+7CMS3yr325R8p1R+GaBgJKrOnvQrw9gLGeNP8dd3rgRzAcoQmQvQ9wwhFogG+6oNb3WLFhCa5rTzXdSQu1dUthygIQLFcicg9ryJcqAA/LCd6X8xMQw0uDuXFX0dtK1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750357794; c=relaxed/simple;
	bh=S5sCsRQTtw8KMjGSGFJWNwyTvrBuHsBHj7gs4AbdARs=;
	h=To:Subject:From:Message-Id:Date; b=tXOEJ8TmS7UtWpnrDp1Hc4Pz5OAEi38YAwb4eC7k8lNXro/5kWKqr2UNBsTGoRCmlGjw+YsH53863vMYSpN0bSYNBvF+1ZXbpKVSUUNGZimWwAYiOejHPnQZuFLldbIbULUtZsEO15hG5QGHB3Xdn+HSgacuVnn42UeHUaMxnW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=itGYND2X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="itGYND2X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C19C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750357793;
	bh=S5sCsRQTtw8KMjGSGFJWNwyTvrBuHsBHj7gs4AbdARs=;
	h=To:Subject:From:Date:From;
	b=itGYND2XEIVj9IxBkcVHVVgGd2suEEZ9C0dbcega6DeuMFTJRBScUm7gPNC+JRyP5
	 C7AdQpbQlFP7B3cQ3MSX4RCUqIAgeQzStq59bGt/ZVQtOfbSK983t6g0AEv8jL7cNy
	 xw3jgIJBiKnT7MSSxI7ldnjZmOWU1HO5pkz4po83Mjzvy0iY/ZiyDWfFA0ElRA1Mb+
	 MxwIjtcTXKNd2dHKRASdMKs3KqFsrAF5AtM1kSwHJvMLUH8R2eD297+TTmoI0/grBL
	 yNk7D9IYixPW9KbZ85I9Cy4dy6qDdh2cQL0LKIkuMh/JDgFFBXB5RHgf0rwmbweHzs
	 ouYwtadl0UWDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9168EC7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175035779357.24793.18162477210724889713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46348889aaab96b6800e38b91d4337c4a13a7ce3f18d57c3f95c03f21c9d35cd
Date: Thu, 19 Jun 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750357793
