Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22356398F91
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 01:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764811374; cv=none; b=pQWAkllDrIpXie1uKQg9RFTybefkd7J9AH6X9DrCeZLsiCLs9CsubBu6q5GqNB6wtSNvVkPkM7q7yYZA9Ybsy2hS6qYJsyiXP6F0Mi4urgCD+VxXIemb4YNy46NKxzhBUqPPH2EwDiBA2okVf4Iho07jaje9XY+kbrdefASjCIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764811374; c=relaxed/simple;
	bh=h2e1x00NIUfG1gfry3bq+eqQb0BJkN8WWyVABwNj2Sc=;
	h=To:Subject:From:Message-Id:Date; b=LirP7yllGAXPhMTTr0nqIJSHEW5REjuXQhSJRI+NVpW7A+Nw57ZGoVhfxSXF29THruV4//+c8ptj+TlvXYB9XWc4DkussyoDUU6Z0elhYs7U70le29fvqiWHZbp3b35oGYgF3hyFW18n84g7yXRGsaGYKu5+4p044vMzMZgOGqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mTK6Pj+i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mTK6Pj+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2E1C4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 01:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764811373;
	bh=h2e1x00NIUfG1gfry3bq+eqQb0BJkN8WWyVABwNj2Sc=;
	h=To:Subject:From:Date:From;
	b=mTK6Pj+iFLggtuqzBf4sHIO2694l9j54g0q8Sjp7ePWGSnn08PtvKULy0ehDpitfB
	 nzBGXQoZDMU8FFPAoYnC+quXweQk1axNwzk2+ZX8e7una7REXonK8W+SdUVnIzFG1F
	 MxXskM0AiQMv0f5o4hXtFpz1Pv3ez/B0W10uURumal05ICX3ZxUjSybs++XvKWslVk
	 W66VdQjcYGGhovoMjdfZH12S8+Rbd118xDBPxVdRQ33nPyMvhxua2FgMNt2jU9oP6/
	 whG+PIJJhg55INyr6oqk/wtpd0I47P068e8uvm4Su3Umup/ko8Zi62IBB+gsY2vup2
	 54u+OvusNJn0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B418D1CDB6
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 01:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176481137360.24196.17310380967595694666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71fdba6ed62bed13cb1070841a91703e8a5053b16b42bd08a879a6e6079a6c31
Date: Thu, 04 Dec 2025 01:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764811373
