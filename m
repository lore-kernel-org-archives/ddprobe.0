Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189D819F111
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759612194; cv=none; b=Tri9ZkW2iiQhZRa3tNJcLCTcrOGMhWUs/fDshPZcVOr3sN64kP1czh6Z4em5Q9UIT0Kn6jG2LnxYog4qsJKTtVYUbT+5SFucm4kNTbjvmC6GMHplob66zSUn3Dy53a3+5f0qS6YBlcjtNSzQ2BXvQVBcA5DrGQny+G7LOaT6LNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759612194; c=relaxed/simple;
	bh=plqHMRH1jQK85yM8Ch+2EHuTGzeBgau0UDNsl+5ZWdY=;
	h=To:Subject:From:Message-Id:Date; b=TcN36/G7SFSzmrgPNVFGWA6dqoQD6i7rB8qwzysDJi5ETGNsrmhSU54usaLaJkZLceKHZGa5R+WJJOWW2tVLrbTdho4afWlHLS10VGYypxfrP4lylNElNkM39ESfVFEwORysrTqCFrhW9/ji6pdvScQF3TBfvMjnNYDDbhS73Tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gjie8UsV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gjie8UsV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17B6C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759612193;
	bh=plqHMRH1jQK85yM8Ch+2EHuTGzeBgau0UDNsl+5ZWdY=;
	h=To:Subject:From:Date:From;
	b=Gjie8UsVD81PVxYdUrmolPUr3fz/arSk3beos7+0Kxq8GFSleKxRM/yWeZOjL2QOq
	 9IA0/gq3T0pSTisGoH+bAS6ZliMhASwlIPz4ybR2UvSs+oB4/M+UlhOqY29t/GOx8f
	 YUq95cGPILHIkIN2wVuSChBrdXqlZylI+UXJ2nASkBQV39CDcuOlTVUmteXCGla/6O
	 q2k4LAXkAWPmJocP6/HEQOFfjNe8hMo5J9L3DG+ksmrtOWJxxHFrEJzDdi+/wkSaRZ
	 CP/BEIXmwZibSoKssR+2G1GErrkD7kjSPtgNl+82+b18eInCZ7S6GW+VCTQALh4YXv
	 zAcpEpLLhgC/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9228ECAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175961219357.13746.238464794794157194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c455321a3e05957b7450b5daa7dafe600b3014d8cc61f60c84720001f7b82bbf
Date: Sat, 04 Oct 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759612193
