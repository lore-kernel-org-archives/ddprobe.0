Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBA002206A7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773762894; cv=none; b=sJgPXrYK6h4IA/DOrxZq2Je2eNPUCRTaHPn29lXbPpitp4reSTpdm5Ce3XFpHuj75ntxqjTMeunkk51sIxS5zANu6soCstEsWLwjDXoYy9Wtd5Nxtvl5sm5LAvriHHN2MVwRdwX/u5MeS4uFGrF2szcWDo4lHj/SDc2JmnXSFu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773762894; c=relaxed/simple;
	bh=VOagczewKqNg8z3r30CcPwarfNhj1G43x9zHaw+KfgQ=;
	h=To:Subject:From:Message-Id:Date; b=SEtIsix6CN2Mltaj2hEh03q/5iBjBQHxhlNFSlavp7CUX33HAQ63DgC0VA9ZRy6pEqo7fg3+/TBjvwVLhI6N0Fe47mZQX61Gn0Ntz6sxW5h0qAIOHyE75a4VVCS9VBnaFiJRxwcq/oCDqima3kPpFaaYpWUCDBgryXaxdQMLBn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OAdjHbZm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OAdjHbZm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1272C2BC86
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773762893;
	bh=VOagczewKqNg8z3r30CcPwarfNhj1G43x9zHaw+KfgQ=;
	h=To:Subject:From:Date:From;
	b=OAdjHbZm7PH4XKd+gThcqgoCUmCTrYC0cqc9CJ4xs1zsFK9vUmWajMgLLzZio2KWi
	 RT4R/O7O+wMdJuSlCiy0MOLlXEzS1HhQ1RHPm7uGqd2hrGTUigOTyBLYyF2lGNTCxV
	 rVrvZjOxciHefKM0g3sqS/XYLgfRf4ZQRoTbjvLbj2GUvYUWQ85m94WPGK+zcw409g
	 Pf+fB0ba0CY2TvsH0G3ktqbumUNrAIA7am2uIomFG0RmZClazwit/2NJawD4UeU6lT
	 AEVsQJsGiJ2M9nqQ68YjAlWC2QtgknyKZn0i+9VZgOs7k1KgWhMkX4cuJpnvHrJ5US
	 DKz3RJ9c+sMRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED29FED9E4
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177376289357.12251.15348673290809010345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afce75f49d453a855b174dc4543dfa411dcbff3090e09f4218fac73f19dcec6e
Date: Tue, 17 Mar 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773762893
