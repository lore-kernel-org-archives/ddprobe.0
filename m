Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B18034DB4A
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779017434; cv=none; b=taaetk0Vv98xmHGlVcrwTKeR949QcLhe2OtAKiX9PeGRvyLn1OE3qEnDssi1axRLfLFXtThZUfi2L2Ko3ReQejjTr3hNqxvtHRSDNGE/8yDLOsbX9Pzu9JMs5m9iwo9FmOo33QOBdv5u7z92Khp+NeY26RBpZIhlZ2orJv6DzRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779017434; c=relaxed/simple;
	bh=SpzFdv8LLoGB4KgYdqBABqJdWWOZi911D7Slu3A5A68=;
	h=To:Subject:From:Message-Id:Date; b=qYSg4vct3X495+qrB/cZXCCd3Nc5Bwt17Is0X9mSiC3TtJhcYRkns1bDNnLwK7sJAYPNY57BjBCL/eHIoz0jGWu2WroOmC5EB82wCeFgN2yQywKz2SXZb9y6eHIExiiO/YLcQdVYBjnBbO9PdLSUZf2rBsmlwvcGJ0YifVDoN5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=McViKUY8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="McViKUY8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3C12C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779017433;
	bh=SpzFdv8LLoGB4KgYdqBABqJdWWOZi911D7Slu3A5A68=;
	h=To:Subject:From:Date:From;
	b=McViKUY8wWUPrOZK5bljIENHbvaUB7CKYQlC1/gm49e8E4rSWwWuEQabFwbd4iYOq
	 kG3Q2gzX9CJzFGdGXRoFyEWft73MYLSb9ReBiOsI+/TbvcVdQ5gP7Bv1jdPgIUU5ns
	 Njv//5hvUKcEuvfySrYuV5GLYYqRjPtvjjMq5NakX/lSeJpiLLeP3UgBluZIHgY5k/
	 iek4TuDBPfHWewTavzNwY1aZK0sjs5b7wUGCbI5NXmmb6n44nJJigIHofQVZyiIR5h
	 f+Zsy8HRFhSHzkuZCsy1DAq6kD/yEcrPatx4/33VW9z5CBS3BgW/jjcRHDvwfnKjYe
	 yGC98t3xQEWFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3BDCD37AC
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177901743369.32306.1512094179160021021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50f6a801639fd60b138ad569286195efece5c212b9be99737f7ec5a4e5fb8b4d
Date: Sun, 17 May 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779017433
