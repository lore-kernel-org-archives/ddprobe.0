Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249C42AF1B
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749526794; cv=none; b=h7ib/f5sw8yY99G/uPDYnMh//JL0d7FyW7FB13+gyvYZijs+6krvP2cEwbc5Oo6qObSEoTYA/58GlB+9zAWQznq5yo7N03PvBEoTuV+rhoNQ+FJppNkyDYkamkkk09giTDh/n8l+T65xgCvuiEMt5B545Q2oscLGVGxCUKv/cIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749526794; c=relaxed/simple;
	bh=aE4jXM5TqtwjyEr/TeFnNFeC42f5vzYNKn7VULJ/Paw=;
	h=To:Subject:From:Message-Id:Date; b=FIy3ZbLgo2BHWhI3dyB/+z9epFHjpmBQPF8oC3xmr0GXqhWTljiCsdOT78E3HnbsTNOZicbAZpOkX9teNmxVcOuZbJ2LY/xj6NL7i690Bm1z+8MVQfAYqQHB4sRSkin1MLTgs89KQD1Xw/0OMbxkrCYEyvRw7L922o10bqq82iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=InF8MHJO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="InF8MHJO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13D1C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749526793;
	bh=aE4jXM5TqtwjyEr/TeFnNFeC42f5vzYNKn7VULJ/Paw=;
	h=To:Subject:From:Date:From;
	b=InF8MHJOMcmW1aD/ZlEEJhgmAyEuTHYtG9AE6b/XaJmmW78UnyV6KlgO/OtOKr5Z6
	 +04NIe4U+oV5YuxXguhBbwtphDeW9+zSVeYoF6EzQJeoYBfyc6B2Zd0R1GQN9rFZIM
	 Sz3QdsAt4YaY/cQXyoodgnOeHbbKSp3iI9JmNsqXA/bYnD55ytaecTTgfJqdLdawWM
	 hOZdMMNweeEDwveWHD8Ma7uW1HJ6Y4qtC1GjvZ+ij9b3aokwAgL54nuyhqXYxccvYz
	 hS4gUeK3BESBg1uCAvAWdWELqBiZUxgQCS1Be+d1LMvmdzlTY4bYsoietGxKbYRL6Z
	 VyBYhgwzObexg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3E5C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174952679357.7666.16950291696603038852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41899b102e852c70e9504e51bc98a0d9dabb286038900fbaf538ab678ff00df8
Date: Tue, 10 Jun 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749526793
