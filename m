Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 054AD38DFC
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712045897; cv=none; b=p9zQBHOh8P27n/knzp0EA+XtLEVHCGbTtoQIDIoIpLgqR7vhY2qsSMIZp8bUY/kNM4WqaGjWxYXRVU0j4916nqaP+zNjzK8RzPjm8NmPHN6qPY9uSwSjc8v3iEj1X9IeVEh0LXd/AIi3+tg7i79Bm54SP+uDFCiyt8IvoGadupY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712045897; c=relaxed/simple;
	bh=sVW3XOtLZog2grJ1HNpw/AL2CDQfssCTIuygjQg9lMU=;
	h=To:Subject:From:Message-Id:Date; b=C1C3FZ1Sm159Rm7tAZo2heQsJyENa40OMsQpuh+BldoB6ZUfg1iq8u+a+uYzYmfQj3M5UzvvKU0C3yXCmXr8f3APnMABp9w22P3vxV3zlte7whUQ8SjQNclnpv9hX8uI1C6DvP8thFEsXV4/3Sk0TFkt9VITCd2fUDZhqBlkOEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O3rNspo2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O3rNspo2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74D57C433F1
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712045896;
	bh=sVW3XOtLZog2grJ1HNpw/AL2CDQfssCTIuygjQg9lMU=;
	h=To:Subject:From:Date:From;
	b=O3rNspo2pUDWy0/a01/nTvhmwEXMGCz6+cDtvv5nNRwssne9e2gXZysi5HNe46WSz
	 atrkWjDun3l8Y/IHAx187G6MxUQYJDsiymT6BYQnjpaVJG3iIB5yvTIzQFtyy36EN9
	 /LhfSyTIPtePKhDnZSkbaZ57uh5S0K8uESD6YMYoWAEzsGjVZonCqlp5w88HX396b9
	 71JRs5yuuYWkvLEP1cNYUkpy1zIwAu3L7rq2t1Ilss2TY0ZdXbXvwqBxrPOI7+2+xO
	 QCuZfA+TeaqzpNYv1pbgLbwOi6fjAtxoJMiqMmv4i8qQ/A4NdYpfKiRmNGhvLlqKiV
	 woMxXrUU/kkHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EFCFCD1284
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171204589638.15461.6023767503606808478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b82ff6428b08231b24fcbc69e65556227bb1529d4c9d5cd915d7357115c353b
Date: Tue, 02 Apr 2024 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712045896
