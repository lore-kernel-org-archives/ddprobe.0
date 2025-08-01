Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E0F2EB10
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754050194; cv=none; b=OJVnudjMKecla89VQezbTS/yt9IsVAbYW47xIMANDvgtshn+MpHn0UKBaMqAzFTqHhn6USND2HUEOe4/UJBv772gJ3leIiwycw3SG7nLDT6xx29ZgLMcDMrLxNB3VuwR/38w9ebrXtL3EJA7aM80admS46huyn3DpabARxkUUE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754050194; c=relaxed/simple;
	bh=TTbSeLmgVtbtnoCfCxIShCNBYm6lCGzoQjv8/BG2Ba0=;
	h=To:Subject:From:Message-Id:Date; b=cQQosQM7LAAox8HDj9wq7IoyS5cEY4OjKbZyZ4ge8M7W5dkZphq3ltggx13sUGxlic1S3M/IkqY8oHOGLgV67UC7Glk+DxxHUZSuYxP4pI6W0GON6kVA29QdulCkNPi+tqtWm1gPrmPZsWchydID+Hygy2p8hC13AZ1FOsNnv90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HtN1irkg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HtN1irkg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5668C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754050193;
	bh=TTbSeLmgVtbtnoCfCxIShCNBYm6lCGzoQjv8/BG2Ba0=;
	h=To:Subject:From:Date:From;
	b=HtN1irkg1CD2e18xMXJVd4YokabmhHCHcBA1J5p2ncxD8fzQYVrY7sXUXad1YYt9E
	 GMeq7TkHVdb2BMlfDcD0O7YxDvYI7JRjs9PP+dgWOg+9PszeQtK1ZlyMtXBQvLFjjF
	 QssT9vCmptFZr18bMszo/RDU6GboET54VwVcGHwB8fwnBbwsHhL64O3QZ/nDbSeZFZ
	 gIWBAN+UQJOy3xuofFc0MR96dYg/uYdzCYJGiKysPhxY2CtI8iQ35KsX2CB9itEX9W
	 ALolFWoDHbYW175kClT4zZHpExiT7RW1xjszkMpOndEV/SPCQ0c/NrmC1aMj+/WQgs
	 Kchk/VgXfGeHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94034C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175405019357.13430.3787137630278591498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69639f5b08f5f0f986fdf1c2ac8d90fcdf66b9865ec7397f9b68daecb498e1f0
Date: Fri, 01 Aug 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754050193
