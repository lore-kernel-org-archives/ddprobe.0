Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A48738DD3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762791594; cv=none; b=fUwwpjezH6gBO3xjy5h+CDxB5Vyupby9VxjuhqQI4RWo0hA8NowtFpmQrSZw4AsAaC3W2gNNkfohx1h5VbsBnChAFjUwbdb40MzKY5p8kclBmMxxaSkozOlF1TBRlVmcuCGYQyjQLC1CNoZAtnSIGFETuWvlJ/gjzk4ul3R43rA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762791594; c=relaxed/simple;
	bh=kfEkk2sq0vhIfe7oihuAzwiInjWPPd1VI1D71MXevfo=;
	h=To:Subject:From:Message-Id:Date; b=AY6BNCpraHH7ru/bUrYsOo1sNx+WZaFwIPfRgKY9SAN4IfgFeLuW83J9XCEzGYAHU6pJBIV3LrUjrH8hbtkDkthC2BDHpuZ7/ecIBpvrX6WvvUUbzM2ZcQ9uXntCEgXHDmn4jMHFVoECz17skqpK+48psuFAUCc7A508HMToMSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZcKdURHQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZcKdURHQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE94C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762791593;
	bh=kfEkk2sq0vhIfe7oihuAzwiInjWPPd1VI1D71MXevfo=;
	h=To:Subject:From:Date:From;
	b=ZcKdURHQd2pYJL9IRc+dtUSQO8sCDZy4jG79MQPSc06KLkYGOTJIHATqyTLJTAtEn
	 cw4zt9fu68RMYLvpvCLiwsDM0eXhgRbBndpH+BwVDYM1+KsNoMNhZE/mNdMbXpNigk
	 3vNrMoMV21gEIER1ObZAe9ZeYwgoPqUBrg3nGqYTrq2PjNPG5HonfX1nlmbm+pbje2
	 5yInSqLVhuq2E0vaFmrhiC3uqIiiyJnocdiROZk1vt95l0moLq9LgJbAyn8kVUIMDg
	 s1S1vzoFW7EBlYbjGfM3mLTsDceAlag08j7lJRVoYSvXH5mcvTm1ImvJBFMp8N94oX
	 KzI3GxINOYVBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E88CCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176279159358.26077.8897299937142057604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52b7c5081d9f906c6ed75e891aac18c9319cb53c2d340193ce922d5d07024b4d
Date: Mon, 10 Nov 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762791593
