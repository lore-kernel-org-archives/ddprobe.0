Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DABA212FAD
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 05:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775970454; cv=none; b=UNZTk6upfjZhaT+OioGhd7V3rQGmEc6KQDNAmtNcQC4U5vp7aj4meaaMmMmLbJHAHryL+LUQpHpmq2Lo3JGY2pWlkk+MdFRf6F5pLMNJ6ZwtwVPDtn8mQZEOqqRp1jfUOcO0esg0v3pHBNKkgSWJ5SUE9Shye4RkWZFwT7tlbGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775970454; c=relaxed/simple;
	bh=RQ4z0bIfjTbA2asN9SKsHtf+ZRjYctxdPinR2n11JQ8=;
	h=To:Subject:From:Message-Id:Date; b=Bx6StAfDsfuv5KfLgCyq6xVdDigNgviJ21TLy02hQuUGMlsKFOsXYAgE8L6SIJK4fxhI+YRJl4u1TNnw7SJrDTY+PAO6/pit0ezOAoFQpOWwXA4px6CyMfAm1CHr8rVCnUtq8EvK9wllmQEW1/1cbB3imHiuYh/xrVbdbRogjyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k56ssfoS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k56ssfoS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3A2BC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 05:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775970453;
	bh=RQ4z0bIfjTbA2asN9SKsHtf+ZRjYctxdPinR2n11JQ8=;
	h=To:Subject:From:Date:From;
	b=k56ssfoSmjkD/uP9hd/HsjIDoMCVNJtAM7DBhTsDA3SkQExpX29yCPBGH5tqvnD8I
	 eGMKwwAN/Kaj3DZGylZ/mHFbkmSYXK9dbAhBdz7sWjDdqS+DoExjxbNe1IFtNZr5J+
	 Q75uC2F6hizjlfZrkReoWAi+tJUY9pRt9GQhWVsGpw1hAAd3BkcWUwwsn/0nIea4Ep
	 7vkNEHstuu0LD8VMA2YhpLbtx3zJdreVCVyR7zS8WkXuJ41WygNzf9Zu8JomT2nJZk
	 ENz0yr077wmOHoFbVfRrZQkzynmdfEaHApIvrbo2DR4ZCb+UTjTw4QG93lkNZjgn5p
	 SZfGMD7Xsjo7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2F8F3ED6D
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 05:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177597045369.4044.16660821090741876758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 763aad8b5682fab8871f8d0022d7c655a27ad6b95d9441549274996c33e66656
Date: Sun, 12 Apr 2026 05:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775970453
