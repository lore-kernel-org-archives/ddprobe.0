Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB5A2FFFA6
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770506634; cv=none; b=UHGaN1s8rODlNzbY+nsQFjPnC04K/SBb0ARXUnHU4sMMbQ5xB6fhEi9tkgCE4LF6cK0vekDycUgs2vcV7eVjwVqZs/dO60fync2eyIUU0i6FXaxAAVP/b3wE/WZFC0iboVnXemXa1hZYD4BoTHIW/XGokt9Hd9RUYXCKjl5MUtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770506634; c=relaxed/simple;
	bh=fXmNi13Yz19F48Hf4HtTFwcMZXFZvvsJNNcnriM196w=;
	h=To:Subject:From:Message-Id:Date; b=gaXlzBus73KQmtjeDFRorldy/vj4ny2PzzgRLibVpakQH64tuy5LNwM7bDczXfLIenioX5W1dUytHnZaz7oriFb1WO05sHz+dcq4DCULy0wq9F50MVdkS+j2/CFQ4CzIXni6Bw4/gMf6h49e4rgMnWS728xiJ0BZ/cie5VOIciE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O7TgmJiu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O7TgmJiu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE501C19421
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770506633;
	bh=fXmNi13Yz19F48Hf4HtTFwcMZXFZvvsJNNcnriM196w=;
	h=To:Subject:From:Date:From;
	b=O7TgmJiudUcnzC8sQoeeWUTchLwwEcQyOLDd/ain+wVgHGzzhIj31AY3gaY++kwnc
	 Vc/UlYlWAHa5hjhLrThYTNAnl/k0JrylynLrwIbRqVpsQph48poW+rM1+EFmGkamfu
	 xi1/MZHortAjIvY+tRRR9eApBw3l/tLBaYLs9VR8OEWtDpNTVXBSsHeoGRMwnsKZg4
	 uMMjDvZBAi4EMRP7op8SkdomOtQGvZ/lpVr0fo0vusq9yJKsgbYmEHF/PHIUBJfzVH
	 S1rxGJkXjDcAYkvPfTJPqDYnftw42BttjrwcmOK9mLapA+GD7NWgsbBuMQxaKq7+N6
	 Oa376dNVYH6eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98806EE0AF1
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177050663361.15946.4564753102390000362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 184769307521b9667a925bbdccf90e6aae56a8c38d07af7b1ee1ac3916362ef5
Date: Sat, 07 Feb 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770506633
