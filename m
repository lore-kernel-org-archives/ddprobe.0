Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354DB433D9
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735326954; cv=none; b=XLYQ6lXgRZTXYNLjiPwbRpbz6Sx55FBq3J67OmMV35A1Tp0WUjAInFE6/LraR6nHoPaM5JAcumBKQv82B3ZT6Z3aywT0PtxhiSqbo07n8TkAbfkF2tKnaUST9/igYekICVHrr8GjeQkI66oKlk77D7C4tM5bzXmZKiNrodozcl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735326954; c=relaxed/simple;
	bh=bnE0f/ouCs9i46p8h8zG135uZ6dh14BcnInqoFz98vs=;
	h=To:Subject:From:Message-Id:Date; b=JnAobXNdjAD0DZf4UkP6FsrwLjto0yZukwYYsWR0jsEV3ldeVa1yX830Z8BKtZJuaRvfefIncjeOkSq3A5mGyhFOvJAi8cTwJOUMqV/EmZloU9XJFHuXgttsLUSZ/7uMSyOSok6If4qz0FQXgrFZIBZ1DcJVIMyUc08P7oXF0Dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CjC6kgsZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CjC6kgsZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B056DC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735326953;
	bh=bnE0f/ouCs9i46p8h8zG135uZ6dh14BcnInqoFz98vs=;
	h=To:Subject:From:Date:From;
	b=CjC6kgsZsRvu5zE0aLA8+bPB3+TgHigOL3c9JGvE4VzJ/Bj7BHWl7h2AiRSl/PlyI
	 qE3Yf7MuVxGWWxrAw8wdwpX0CH26NHthCaxgULeVz8g4s+pfPsyCsjTdoCPFDRHCCn
	 EsvQtL4iUd00P38m67EqQhLHtioSryPjnNXe6/aCTgYMS2esI4gD8SaaF+/xjtnOrV
	 zpVb2iUmD7h175e4kvFTrUGlX2ZWU4Kb9is54pPyV6XnQAprl2Z+05DOhH0kERjP3E
	 pPM9/lhlQ2emFRBmdR9TxOrbS372Q5b7S7wsxAhaeJMbPc6z09j1s061I0I+Yu3QOF
	 hH+3ic9WD8G1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A59CE7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173532695359.1327.475336103541626089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc47818993c6209113bba3400d61e9d1749389831edf708dbb9b39d9bf48feb3
Date: Fri, 27 Dec 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735326953
