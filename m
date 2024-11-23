Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDF427466
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732389954; cv=none; b=uIqRGGN8BTRNEkpSj+PauStxfkbHrTzZsX92oJ79jBvfj1emFbsVsu3ZkptkBDOMrbKfwNYqSKeh4f3A6ZRxo0zk9/fq7WZou3CYxDwgXk7riuW1xGgCFQ6xe7dSn4yXTsTHH9ulv+5rpckt4CMHAV5D7efEjCTP13BPQ0vt9ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732389954; c=relaxed/simple;
	bh=VurfFs7V4ih8oZBiNo8T7k3bZR2E2xJh7HstO3hMwqw=;
	h=To:Subject:From:Message-Id:Date; b=ZrJnjowx17P2wB9EfVMkpHO37/x+6qjXcx5irDjPrfDMsZWSVVGlJx8sDCcdNNJWW8JbS38HaADy3k7Z58yB/MJ2lllqzTO6ujB2ilewAG4YDyOeSKuTa01W6OlTHflflA6/sXxryuWNQtv/I1cpSpLuV7hugYKfM/fYP54QIY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9bedJc3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9bedJc3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB26C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732389953;
	bh=VurfFs7V4ih8oZBiNo8T7k3bZR2E2xJh7HstO3hMwqw=;
	h=To:Subject:From:Date:From;
	b=E9bedJc3AGIErG3ASL0RK2p035ZVVP58ySoOCUa3YSs6w3GQ+/xiR5lT0PhEsdGRt
	 O3XhGJ2cEBKcHu9itGY9LoSzAyZo8UQzoVG84FoXO2ySMUQuuhvW04jXDXGrxcEJCJ
	 C/AymI4O56mKW5Drj/gWqyy76+6xS+NvqTDXwy29HLUcOPsH3yEAQt4ZXy+1KORjEW
	 Dz+RRTeKwOocY083ye0knzQhbWDKG48v4faeh3Yrcwb4o4uCd5/csB93o+GeBtelyV
	 no10ZOiyPBmihvxFsWFBUAvoTz5HoykSj9UmJMlW2atoIJA2zDwdRaYzzimao/p26E
	 U0jlUD3wztqmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9909CD75E5D
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173238995359.22232.8569074264117391097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebfcc4a67c417680662d0049a22b114254ae1e214e93c79bbd8e401faaf750cd
Date: Sat, 23 Nov 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732389953
