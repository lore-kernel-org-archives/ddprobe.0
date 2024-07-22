Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3185116D9D7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721678154; cv=none; b=UaEkM/lfyfxQriHHC8hc8600GmsuRa/sdLVAa6W3hOvt1QXL4EAcANN7X7gnIg9yFmmyUKvjoowGL82Hcs0ra4z9q2fo0n2LAja/p14dB5bAqXqbjEsAZ15NaaY4+XHbyJezwaqp/6EpnPz63MfwzBSP+pzM6/KIp3w7ZtfHJjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721678154; c=relaxed/simple;
	bh=AklgWE/nGek7S5wL+b5ToKe/h8pSmHyJk5QMoBm/6+A=;
	h=To:Subject:From:Message-Id:Date; b=F35WqWLWMeAUKk6z7nrENAiDXWdu+bepWvXMEx3EKZ5TDHlNEoK2sXEsHUWutka2N3NpKTsa7AoBpop8qB6wXAOOBgauJpT5+ntqJ7YGdO1+JVLg1ViGNXx9Fuay2lVBWvjpV//bbi2j4vkxscQmn1f3ZMs/bbFCgMLvE21WNXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pGOmYXR/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pGOmYXR/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE19C116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721678153;
	bh=AklgWE/nGek7S5wL+b5ToKe/h8pSmHyJk5QMoBm/6+A=;
	h=To:Subject:From:Date:From;
	b=pGOmYXR/VdVOjKQa+Zrb0yklQGyJQjWjwJoV6PkyFfEzG0qZkoDkUv40KOLSbvoUT
	 TcatvH8fv8gMNDjN8XoBEBDnVb08enXdhg5HCZ27Sc4g/omZy/Fg30XLro4C5ML7Wa
	 MG2B/FgbQTF2HOJhBFuANFzV6qvgK8dSSXN1sTdbai5g32SJmPSPstQa7QXMxZfjy0
	 ET/hi8gXvDyf3aqfR0nEg0N4T5DmKKotnvgcAwND7tNEklAWo3ACTU1cZhPRkkQ8iu
	 6fwND19HWMh5DDsewPafCiWwSsz4FxoDEC/K49y0yTXeahBrdauvyVnKvJHAW5Jcyl
	 FnFoEtLuDM1Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98030C3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172167815359.32015.5466947380581214120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8778a421b32fe2d3975175a73357d86f7e1b0464c698734754f1c3abc7ab4c79
Date: Mon, 22 Jul 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721678153
