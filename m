Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A47C350A33
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774716294; cv=none; b=h+XDPB6zz32HGDH5zY7FH/QmnTfYfVybwSZoZZJaXUuICildFyKexVkINmDP49in/icPAwxYFCLwZOvE9EHIKCwGDUN0tzstEHH4n2oSEC9RPQ9wXYxezSupuc22FUXGxfV4RY9BIfBuQOg+0DS7CB/1hsx8vgH0g0TMIrSf8VU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774716294; c=relaxed/simple;
	bh=29z8xHOnVVU/4pjRnsABKzkqRtDBRBtw12t0QZ4TjoY=;
	h=To:Subject:From:Message-Id:Date; b=VsJv9Wqn/2sUwKPY+cPf/bZ8/hzb9ABx8SF+YJO7bDBZtgNsOI8mG5UFAPD+gAz4DBMNZV7EkkVLdxqCXE0P8ICh/tvwX12w8wXhDs4AK4+i1GGGzgnPyNW2jBYh99YFheCpoGV/cO8kRJ5TJ8+7LV+cFf5P5Age2GypC0MrZ/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TUkiM6Z5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TUkiM6Z5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71B7C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774716293;
	bh=29z8xHOnVVU/4pjRnsABKzkqRtDBRBtw12t0QZ4TjoY=;
	h=To:Subject:From:Date:From;
	b=TUkiM6Z5XzOaYCL7e1vmP8N4sRmK4rdLyg4pArcWVmv/J6RnnX77iQhmafl0y/A/g
	 OWFliW/gSG13S+9G1m/yuUY1RPmlks1Q5uhyO/rQLB9RiCiSucUmd197GhF7L7nqbO
	 O2orAz6jWB6KbTKi5NwWORylwLJT4KZ65eg/f/Q3LHdeQoJf0gDu3MUu0BDR2zwRtI
	 4B3KYnriEEP3jU5nruXpfDIzFQIIX/6ICfVogIZal5slXCvKgR7L5tiMagXta0J1dC
	 ON2Qc5B07jO3F8HjTR1rZv3GcueTWVqomVMU3fwko0IPVyfb4nu37lU5btA2KQbwhZ
	 VTIcoswBLg5BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9430310F3DE9
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177471629358.910.1789332000822902014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeeaa64857e2fb1bd4d500eec1c70a4a8c1fed9f1b923400cdc63aef6767082d
Date: Sat, 28 Mar 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774716293
