Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB0918EAB
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727646954; cv=none; b=J9igpF8pbeh0cEpWyfZfMpBwEMwrGP2sBMbdl4YjR54ZXPuC3vNkcyBa+MW1VV2kpWIthPi9nUcw+OkOZRiuxDxy9FuOls4mrXPKDlNgIejEtMnesH14NJvDjf1EdC/ycYhajBaZ5IFN5tyYti4PU97Q4WAxLvoodk6xcs1v00g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727646954; c=relaxed/simple;
	bh=/4BBv+ccb0uxapgxif+uZKadXLOvPFIoNg1uGGqjBCA=;
	h=To:Subject:From:Message-Id:Date; b=iQkhSIakXtwBZWot048x2MxVYskIkoeLLa7StjabIOMQ+jMFSjPaPr4VI2GY4CLdWjcfbRfhcqcG31Sc//L5kyRU/ZHdOs5a19/o31aPv5nJ/aw6h7dguyKNETX+Fv5jxYv378voLmyq+zOkZzueYi060NbYxZ8vp7pVqg4K8Ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jEMOZh91; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jEMOZh91"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7580C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727646953;
	bh=/4BBv+ccb0uxapgxif+uZKadXLOvPFIoNg1uGGqjBCA=;
	h=To:Subject:From:Date:From;
	b=jEMOZh910H92QPVXs/LrtrUTsVRdpqgDivFR7E4cbkyP5XZm61O346Y8WotUzev26
	 kwWFGDnYB7b/xI68OocgKd/kfLlv0TEuZAvvZbn4sTjhpQ0z7LDktFjiIcwUzLgdjm
	 flmlU03Ah7+dYoP4A6ILX2oJbRG9K9+2zaVJIdSEgG4sqjoNvoFPxczR9UtGp9Tov2
	 tPIPWX6vHtlPOfAiBVZxOBx6Wsk0CoQAr60Kx48jzReqng1h3SPK7oqydjifoA7eka
	 MBzcNnDL4NmQdujTG8wKJJFlVD+mAWMI5yDrXk2Zb/35o53gV++XHLlclMGhLl9Mce
	 DVfwiV3nQCq6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96091CF6497
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172764695360.10923.5359806572731955553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e61325114ad236aef12ee35439d0491bf82169af3379da91ab6069f9ee9d9638
Date: Sun, 29 Sep 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727646953
