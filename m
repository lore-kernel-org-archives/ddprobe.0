Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE603A425B
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791717634; cv=none; b=S8FSL6oSU4wJbQRr9+0x8NNH4RMu9n0wJ3v47haR1LAV58gXeweK37iAf5mzTRP3/oGcKSw6jm2150vSboFvKrsuhCQupzTJvRHpRNQ810GBYfJXV4on4ZCRxOAxVHrnBAE9xIguiKxkkoaNUq8ogKBdNOD03V35Ccfc6bWktc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791717634; c=relaxed/simple;
	bh=X5eqhz78UaaqJc3+3veXkGoxnaeNMqqnksMOrCvCAis=;
	h=To:Subject:From:Message-Id:Date; b=j47jR2rYdCmfMJojxxux49XdYOInKraI0X8STQhzJ3noLO2z/8CWRsw8U43QGmTdF9vYSUunMEMZS1UKQFRXzVdcrFHTXBj8aw7xuy/t+/IxehQqH0v4h1YHznETCKJZ1qVzq1sQtNWi+BEybltbXtbk2B8drWqZ1bwuhQN1X/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFEOhX81; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFEOhX81"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF964C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791717633;
	bh=X5eqhz78UaaqJc3+3veXkGoxnaeNMqqnksMOrCvCAis=;
	h=To:Subject:From:Date:From;
	b=PFEOhX81hQPrKj2//qXmEDeXaP3/Z5F/MFdbGRVXRkXzy6WEEPmOU5ox1VDuMaH8S
	 A8K51l0CR89X89S+0gSv+6tv103fbsnyFhc3LTpj5w25CFYk6fGAZzzKNup47rmZSc
	 Xi9JsE35k3MJOb0ckHk2ijH4Pih+g/H09ZGmCWLGsue3U2FEx5h7w4iY7qZOAZF7LR
	 ZxDqL3OdvPruE4w3u2zkhWPAvWvNGOcHpDABt0r4OEotbojYdf140LHXpWfObz9CoP
	 1eyoXqaRQ2DNiRFomYz9vWBaK0qpguGJXmJZlW3nsUvTTi0foXArd1P5PLDzdlYlPg
	 iM3xUY3q/iVqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B982ACA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179171763373.17521.14747975248165777538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e47938c2ad1528de80e0dedddaa8bc12991317cb44205fd427c1eb8ba8ce85f
Date: Sun, 11 Oct 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791717633
