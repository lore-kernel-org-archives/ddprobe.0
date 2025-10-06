Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177B8271447
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759757394; cv=none; b=ugHpTBcFBOkbD7RR1QfajbmlzbkS8rn0U7WBxZEZnOXlMqCqil/69KMAzwf8pWFbbQ2LOA/o+T91M3BetAK2/fg5wf1dLhWXOmNXQ9p877wQo8rENSS9XcZ1pkY/2HCRYy/O8gBsXR67ftfqrhslkq3yqY9aWps/vWLwsySCfAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759757394; c=relaxed/simple;
	bh=z45CJcb0TWkndx03ackt/u61hZ+CuLaRBHDkAP4fWeI=;
	h=To:Subject:From:Message-Id:Date; b=Z40DUdn03MnLL1vpqrr4F84AdPvcHLDtYxpfOFiR6N3Nx2fJ2xzJ0A4Nf6J9sTp65ZOvimIeTGYpo+C4U1WBn7o5bvAuQcWYuC7fO3XuUXiP1B8VEDg3NDcgvlrQ1Sb79zPQMbLCOgPI1sFgX9vFMmhFabQcoLGVopTsXORvC/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BnFWzR6Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BnFWzR6Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F8EC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759757393;
	bh=z45CJcb0TWkndx03ackt/u61hZ+CuLaRBHDkAP4fWeI=;
	h=To:Subject:From:Date:From;
	b=BnFWzR6Q3P8J55tfaxFOU3fp8unDhPWC+K87WeK0xqparbfyzDysOFwxnb9h/cyQ2
	 lYPM6Is69eW4fZt5YrbpfC1126vAP1s75aP+5Aiu+xodKNosueUPAx8V0IdG4eg+CE
	 mQIi+3TaXI1QkhTehg19gH84dlp51X4DfH32joeP8Ki727+Egs8WQvj1/4wD7mKRh/
	 TmzchFTQs9EKfOZu333pdPFoLkoKRUQ//6JMm5hBbgAm3yAPhe7pPX4hTzVkFT7raT
	 3evqgZI33dSv60imkgUhejmDYggcXN31nSKCjuAS0+VcN8aoiW4lII+2p0iF+lvYvJ
	 Tz9iWWZWt8URA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA8BCCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175975739358.32002.8429087557866658117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04dd121cabe91e2101eecacf806f8fcd86fb6d1ab672e0b10dfb8106390e4318
Date: Mon, 06 Oct 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759757393
