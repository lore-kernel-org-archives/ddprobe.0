Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDC41519B8
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748854794; cv=none; b=UQXhYOmlwN1P66lWRHwigrvr3odViF8zbMpHrmo/KbG4rcsteexS7sve8RpjgsJuIJrf1T23SNwSNiyCWlFpDKKiIh3crSg7PCDZgS1VLybEP8tbolIK7/Wc/4XZsZllK5UI8//jqTc7fLwdNq7y1StHvEA2FZl3NfKUj239H3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748854794; c=relaxed/simple;
	bh=WyDyOPndKrSZ9XsXBBkjtjyAf2j/28fSt/lVvB1Sggk=;
	h=To:Subject:From:Message-Id:Date; b=WjIGFTxYeRV7NVSVjTDv6PEBAXFmDnJ0w6I3hrseJjTc2/4wmn0604tiUXO61wa+9gkOXMEf1Cq7YMXa8ScwI0c8v5q94M8VsuiFgGrbI7MrRnNzJqfnZfT+z3t/sif2BkBiHSTX1Q7E5zGnbxPGudoceRR8YNKGqXRYmOyQF1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tAGSb9e/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tAGSb9e/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5514C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748854793;
	bh=WyDyOPndKrSZ9XsXBBkjtjyAf2j/28fSt/lVvB1Sggk=;
	h=To:Subject:From:Date:From;
	b=tAGSb9e/w3nHi8rYv+YxEtBlzsmggz5dIZ+kTJlBWzHqkBF7yTYkotl5tans91G9C
	 mNAGH7545yp0SDIXEGIHnD/Qv7s8eg41LB2rL3Y2By+prMqWQcaSGCrMz6o8P8Z6T6
	 c1pVPiyOUtdDBAtGvhRFrAmRACqCNHtckGgjLNPnW6DiXnx6VbfiKG8MgWCHPefvcv
	 e58SXHF6osjYDSr7kv4LCDIVbMuAPNbrQj3FSaW13NoVgHDah1caWQ4kRhluPqnsUq
	 D/L+vuv1kNZtDR1cxPOTm5fWOEK0EDA0ljl9FSrXcB0NY+589cI29OA0ZtAGN9uvPD
	 4TtaukfrP2NQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92012C5B549
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174885479359.5660.14174534770201974791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a840770c766db3aad05458d7ed37ed6ba6a622181de079719afb82e734e6e12b
Date: Mon, 02 Jun 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748854793
