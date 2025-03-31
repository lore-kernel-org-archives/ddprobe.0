Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4040C3C47B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743457194; cv=none; b=ow9R9LZ2LoT4UG2khugrmXrt5KK05nPmdwoP/h0CoETC+QHHEt8O7n6oFNswoWpBaLLglg6UqWGYS/hjtjpwUdFx7WpFx34LgQDmiPT1NTp5jYRjk9m1qATONF71FbpzvrKwS7YxvQBOVUfjbPQI+EB4J0+8GmFBujT+CV6n/Ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743457194; c=relaxed/simple;
	bh=3a41G7EtjNo1twjspMhyEY+P9tcS7ecLU4nYCK9JrnA=;
	h=To:Subject:From:Message-Id:Date; b=CUJBH12w+iet4K2mTFWcUyG9SUT3lVMgrRhHrOQWELMIIIS06SJF9w9NQsvoAnHFZ4H07EScY4ebR6z06FLlTucWHyrTX/hN/BeWzlj3GvAzKSMvsXsnvFh9dTtzhTgzYScZ3TfftChDnqkN83/FeGTSeKaaJ/ZWFF1Gbv252Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPJVX/qj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPJVX/qj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3AB3C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743457193;
	bh=3a41G7EtjNo1twjspMhyEY+P9tcS7ecLU4nYCK9JrnA=;
	h=To:Subject:From:Date:From;
	b=VPJVX/qjnE5DI4Vgq0TrYlB4UAUGKaVMbeIo3r96Setpny/amb69yW1JcpzbqKVF1
	 ZqnMdhAfihI7EMpokXa5gIhMZjXDos/sGGe86fvSRlbVArmB0Qr3v67sXQpMyjBOfN
	 I819/y7ERluImI1ZUyL2oQKLJlUV97voFyIwR36EvxHILyR2YdKTwJch7Yb4aP1pG+
	 AFeFRZ3JkD1RYqhkzHhLpATlmBboQA5aZBu7LJKROOa20keU8dE0oPCuNQ6X/R/T+N
	 RL2MTHaSFSPY0wefshJxmy/LQn9r6x9dsehIyiI6/ZGKrgKoEymln/7BqzMhoZbiDS
	 cRGTpW01woISg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A140CC36014
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174345719365.5814.13294341657353448506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cea8db92f25de80876437c3dddca4085fb3f4a40175b659ae340d5153dbf29d5
Date: Mon, 31 Mar 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743457193
