Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1873179DA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 04:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765255974; cv=none; b=GF8WDvPPQr10VSIn5WgAACfF8BdPzxjw2LD25cdIyFarRkQvSxdeX7IMQTjoflNZqZfrSuH0AbJraBqO0ojj/sEfoyjinMVgiMliUA1xxnnl20tYMItWyZkC8gBesifs5bLtaUIPBi45xYBKqCYQknUUEuu+6qnHYmt9mg3fKxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765255974; c=relaxed/simple;
	bh=GuPVlXQsjMdiWL5f9ruYmFlWADSV6SroNOhFd8YYhdA=;
	h=To:Subject:From:Message-Id:Date; b=B3OnTrxrxwB0uMpYYqkM4DLF/Wr9jX5TNZd7G2r26NVigf0BSE3KzEvBLndP0iPASx91A5b899b16P4gZ84tglSlXJw+1+MBI7IoghUxjlGVBGZ0pChL2ovgFJnWzfnq8G8jnKG7rDomkyAwgyJ+vibH/K7UNIWBW0cV1JmDaMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hHOefeMn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hHOefeMn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1DCC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 04:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765255973;
	bh=GuPVlXQsjMdiWL5f9ruYmFlWADSV6SroNOhFd8YYhdA=;
	h=To:Subject:From:Date:From;
	b=hHOefeMn3RSge+lam0rNZrHE34ascFMzL6mqDbpLnH7Kbo3kOqw+SINP8JF7UzZMk
	 J3HHEulCeeLJk7eWJIitXpCgE5yWIrAYjljydhIb+QZAB7DfxsRh0YbvaLjyThpMdn
	 tZVn8A4DBTCQcz7yRrEl4Mg4a3jy12Q3qRBmIYc+IUttoILAiP5DnobQSrhF3IhEfB
	 SzV8/TkvZrqQF4hnFtA6Q6XXvf7NJf5zi0gTO1Y1Lv46YyiML3kJL24fHXeIrkjJvo
	 kpLql9u3zmpSMsljMCI5iEJCmVEThk3BRMHgDNXJvCeADFEe70DnNZPEp53gxvF/Za
	 eUcPm5Yn6jEjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F876D3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 04:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176525597358.23609.5862074233409735198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea6c1d75e108e2cb5d564b14f146e10534080aac11d953ee9c4142f3a69bdd9f
Date: Tue, 09 Dec 2025 04:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765255973
