Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11FAD2D6E72
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760545194; cv=none; b=j9Wms3havQYfmwf9IFBJDt4fwb+a5Qh1Owi9HHrHH4Ux2yfZEJW1sYQWEScWDak5pvozKPN9Z+3JTfnjHiBbDnyniSUoo0BTaWp1CP5S/k+MDOlGU2XvX8p4uac0sBenjOt7vCAV9s7es+Rxz2yc8pAMFzCsxhEcYRY2ujAqHow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760545194; c=relaxed/simple;
	bh=TJooUHja9q7U9D8eMFffPZz0T3oEwFXzV9AjjU3E/rc=;
	h=To:Subject:From:Message-Id:Date; b=qQHWG9vCeWAHHwjyeHLxIDBisjv5bTZd7+ez2u9q0cfw+Csw+utOjViO052iNF7xBL2r4sLk9j41vJNT/vqFaLWaJ71mwKpSXl8t9XcTryDsYBdvjN03Qe7IY5RQVrUesYxjsHN9Q8ccOltazvHAwmZujNsQDiUHYDpyY+L+AWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AI2/HcBO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AI2/HcBO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FAEC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760545193;
	bh=TJooUHja9q7U9D8eMFffPZz0T3oEwFXzV9AjjU3E/rc=;
	h=To:Subject:From:Date:From;
	b=AI2/HcBONDOeTL5++emWGjHItpvoaHLh1rYQGnZPltKVC81hQEfpKwHChv1pNqLye
	 S58gYElkvkIfY1UA9hSdfOmPniS81gQSGfmA9Ceg0ugnQlBvffT40iADGUYCKmu4mz
	 oSv5K7nYqdZwMULlwI2MDIFLBUz6OhloO+a1scfc+p4OVNrXVogTm31d/xjwcqwBzS
	 iABluWBc5JlcRAtWlEM+obK469NIcCDCfN6glLQP9og/kVrXboTB+4U/NiT5UUsjWi
	 cW1WOAs5x3hrUlYVj+jgZ0TvSjN4qABwcTUs2vwRK0mG4vKsFpNK1Ig+in4cMwopHa
	 +RLB3dgAJTiDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD7ACCD194
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176054519357.11669.15749522585229912338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09097f33d0e6c74f5c4445d705b8d490bf327568498c5c1375386e389b6d38d2
Date: Wed, 15 Oct 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760545193
