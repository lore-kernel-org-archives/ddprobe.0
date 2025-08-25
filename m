Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F5D189919
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756124394; cv=none; b=bi2QoyhUDmS9JXmWGySh3TRIUFLBVD5MslgBQuVE7v1YntV5nnCTc6ro2h9j2vyxJ+UtN5TW3l6WQyDnKRV5u3oSjyJkHGqZgFN4pBVG4mdOt2/n7uxXbMl1vcQqeee4X+YZfwC6V8SGetv2ZaWhU9LhIAZCznKhvDJrFMmU+bM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756124394; c=relaxed/simple;
	bh=22Eh4/nf0uZ84KbiulML4ik5a4vZqyswWf0O3YBgPj8=;
	h=To:Subject:From:Message-Id:Date; b=pGrZJTEHjd4nPoj5IMYZpT9ltPsoUF0m/GF3PRhe2VEmP04HEBuUvapQSVAVaDSYaUh/K3mZiksCJtvTtmsX/S3lCNDh+TafDJLG1L3jOsArF7LZXEaiGrQXMfPll6nQ3t4Mx8uPYTjVfZ1kBuS6M7Bo1aJxVKo2L1RJx7k3xew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ioHzzN5l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ioHzzN5l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E3AC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756124393;
	bh=22Eh4/nf0uZ84KbiulML4ik5a4vZqyswWf0O3YBgPj8=;
	h=To:Subject:From:Date:From;
	b=ioHzzN5lMnChBNGIBfRjve6+BUJTBgOoC783AspMdiuW3/HH35Mx/lfLKEucCn2uX
	 RNP314nJR2zUiMYSlt9JLU/xnR6tsWExrHY4D5I9/seYR4HgpEjzgRLxGN7SzySAW+
	 rcRHav+hXRAiAbgGLoyILKyMclMP7VkkCXcbEHYja/xkfoHrFeC6weM5OpF6DykKl9
	 2s1F+NsFRpUdqJWvqDt70UGzH204fmMRUOAww/xEWSaXcjsaqiy89kT127cQcDYkUV
	 AH5F9Qcz9x9J7pq2sTfmU5qAuS66WrPWy6OqqfzlGA5ROnQfV8EMV/DXETyofesqRN
	 HSffi3OTCM4nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A9ACA0EFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175612439358.6894.16427993778903315846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b92356d2b34f3deaeb2a7c0c96313b7f1a898bd1f7814e728da3ec14e7710bb
Date: Mon, 25 Aug 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756124393
