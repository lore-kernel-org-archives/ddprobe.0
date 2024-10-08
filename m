Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB4113AD18
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728365754; cv=none; b=fZl3oRaium9T8GhOd5DJ2qRwlZpGYtP4f9LOtOSPGnY7KZdoIppYUtfG41a9/EviX+8N6vDgM8fQ37RHc7AaEeM2Ji4BxawV8PXfi+sMLmaef9Ecf/m5pZjwJa452cG2zGeT4b9k92JFwU40NbjkkekahnKx8/P0k3vBglRq0e0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728365754; c=relaxed/simple;
	bh=Ia1Oagzu1U5EaYijHIIEBetBu4zyGeJOleRdmnO3b3w=;
	h=To:Subject:From:Message-Id:Date; b=HQ2pCxC+npPHFECl0KlDcO4DNp3Y2A6Mc/lu6VXJuDw0eACg/g8kUpXtzXNIN+0hngxk8xhPJ2nuir526Zh8+DDvZvGkQu9vo8SwP7u4qi90v10oElC6vHmrzm+Mmo+LLQIjruLFneKB+t+iukwYUrjHnxBiUns9TloDvrunxgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckOW/qc6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckOW/qc6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2EC6C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728365753;
	bh=Ia1Oagzu1U5EaYijHIIEBetBu4zyGeJOleRdmnO3b3w=;
	h=To:Subject:From:Date:From;
	b=ckOW/qc6l6JX8Wwu8pI2NDSOUYH2B/F2roiEOf07wpFlXd+aDl4ADv9FFMGAw9tNC
	 nmo3eX5b1SogEt5UaRR17ZedLyGHriIgxPmFYgfh5omnyo69sVYElRRs6xG5gHsFW2
	 meP9xvb6tUqQ25soC5Bt2NETdS+pT+P8wos+s2uGanAAhm6pJdk8b0basiTfqu4pPM
	 5pXYvR0pRj9pPu5josegQLzUJtlX9SFl1zIqX3ggeph+pRNKIetLQTNT9Zx0zS0xEf
	 SBZEU4GVMtuU7iCVXc5gLCxRX26HgJjGNSDld+fBR9w1QLBgLm5hOXpHX9SbyiZts7
	 ucGFtNiRZ5fVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1895CED26B
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172836575362.15831.12452438766926030416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc08c3dae8035a6ccaead2b530308d082121409433bd6a1dd4ce2fe644a1ca24
Date: Tue, 08 Oct 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728365753
