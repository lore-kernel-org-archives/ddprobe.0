Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2395D2C11CB
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762285794; cv=none; b=QR8r+LMZWQvWDiLtGg10DApS6PVCsEFCPoRzO6Pia79VF8NeqGKBljSNLAywvJ/gCmJHlCq+CKQGEQq4ZI6eLhG1OkXuc7pbW0a/n/T0CGR5pOd+LtR9c2IvHra5oORdDU7xqbfx9TShdVOB7nROoV/xc+MY7xrpWV4kb/rnneE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762285794; c=relaxed/simple;
	bh=gvi4EIoKwZZskx+85ragQ0DUai/1b901ukGv0oh27MA=;
	h=To:Subject:From:Message-Id:Date; b=mpdV5T2nGjqNDN02HegFCWRZLJwGlhu8roSg6dDsgLE5xPG6D1dVkxnzUV2fvDCwh4wTIu1neksgJyKlgFbchQBDRj97royKaFVg/CeGQtg5JFMPaWWUe7lh+CNIrWYVv5uZtVmyj0OAkzZjqkxxEVHeVngdC56brN5xht5tKCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=anLkE2wu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="anLkE2wu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14F3C116B1
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762285793;
	bh=gvi4EIoKwZZskx+85ragQ0DUai/1b901ukGv0oh27MA=;
	h=To:Subject:From:Date:From;
	b=anLkE2wuZfJh8uFQ2EDwf7hNXHKmhY4G0sE24ZqAjNZz4XPm+bcIFZpg1peT+x+n0
	 jCVllt6XrUfm3v2Pzx06OjFDiGJbTb2WcOCUlspZCbkC+O6p8LxzaXmRxj2pSidvRw
	 SbD20zgEoIhRj3w/FrfECWUVe+rJBd20SXeNdesOIeO2Twkvnsg+XlYFMtTGfHBgaV
	 eLJJbOM398JoWttMoYA+kFcPt9w1G088QMWu5LwHVC6TmPiQBFxUeZExO8B/V2WO12
	 h2x8g9OB8Ft0MmtD/3gjI88bjG4k32Ur1JoBGMJBp9x8QclinSJHcvHLRyEFSHwAbr
	 rAQ9ZIDJRuEOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94440CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176228579359.26568.17728204708220613904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a08624b974a0814ea54fb17e5dc8d4ecc7c55a9ba804a7262611641630ed2292
Date: Tue, 04 Nov 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762285793
