Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04B131CAA79
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774561494; cv=none; b=mli2FAPDqBZ2IszwvNLAM2RtXUbOP6npTmUZvQbNW35ANEX8jHPBJ4fyfT4M3R1I/Y5dRY70Gr8jU8LPBQb1bWa3MyGDad7bpcvYg/55htaH/KQ8Z0Q3NTPvJIuJBmK2LKCtqS5o6AWPFiIxr9I70lW9yRY7IKwTUTiJQJRInxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774561494; c=relaxed/simple;
	bh=KVbsEa6B4AFvKd9T+/3GllnF1ncTUf7SUCFQQf85Zqc=;
	h=To:Subject:From:Message-Id:Date; b=XSh+pTwQTTwhYl+119JRrzGL6iuDXAVR3sUpnZI5epAY+LRQ0rxQzPkEwwIasbKPfswbWRtRlPfcHvX7kHEGZDrpBDyJ0a8H+c57CCznibQmpkZ1FaH58pPi/4vyV3LpL1VyH5RHOKqUK/omNBoZU1RMrWtTOR1zVmexqMgS4zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bs3lGqNd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bs3lGqNd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DF5C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774561493;
	bh=KVbsEa6B4AFvKd9T+/3GllnF1ncTUf7SUCFQQf85Zqc=;
	h=To:Subject:From:Date:From;
	b=Bs3lGqNdj/P7UDN9WBs56Pi/g0f3Sf2efjrTil+p9r+jZrUWdmjtqo4eFVyV89RoH
	 vqMU/ZxIMqVqDBZ4oYQxPsDtuzaA3osc8cBwipFgSXwmAPFwtwhOYEE1XbepfqKcno
	 jIGAc3JqOt6ERYjL6FLWYcVIYl7uIU5MSyiDXXOMRR58dG3IqDzyOjeXooswB44L20
	 64nfn/K2tLB+BTDdH9bl/soaThqajJz9zbdL6Il3FNTRsHX0Thbfh5T69OYwe9if0Y
	 fgSdnTG+5YXJ5m+sK26q68jy5euXZ/tlJImdZkiFkMkvevX3dyfKNg3WzrmvgpBnay
	 BOledkQdI1d5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9442810AB82A
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177456149359.16259.8225564872804655975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bca351b9d2efbe5122801cfae0468d80dc3faf57ded156de818d7191f7a2b1e7
Date: Thu, 26 Mar 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774561493
