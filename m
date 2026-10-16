Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E435349C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792175434; cv=none; b=LxBsa1jKzo7h0H2lrsm3ueVH99+w4XvfM7wgFL5tID/frN3SNVsGFUYYmAiDPJxK6a+FAnyD1kXPvYalckPugVj8PxbkMlzmEUpWdWYZiseCHJnqU28lnbQMJAKNddZGWy00CB06eq00ZfOjJRx/Tt3fNchWh9l/89AJ2Nu8Z58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792175434; c=relaxed/simple;
	bh=3KWwGxP+N2ACKNXVFayFjqCMNzw9NXDIvpCLOyINwzE=;
	h=To:Subject:From:Message-Id:Date; b=Q0QIuBqJ0yoVadCryiTQ/NgkisfPAx0c+earwok2xFhnq9GkTVLizd37xS3YXs7LrV6HEr/lSRs05hOfNpetb8hxpjbn9FeYlhXXEmb22yR1fxUwIYLzIcbUIHbbDudM4cBGmxL0UZSAc33qQhxfeA1D25NIDBRNAIPt3CzJqcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dwPQrdd6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dwPQrdd6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2741C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792175433;
	bh=3KWwGxP+N2ACKNXVFayFjqCMNzw9NXDIvpCLOyINwzE=;
	h=To:Subject:From:Date:From;
	b=dwPQrdd6vXLklJIUoUhKcSvYuUXkokg00bZSpiGKPOSaEco0eKWKX9kdn2lBrhHRz
	 w7Sp3gtJmTuXgH80ujN6crbXvn1iMfGQLkiNSXUS/KuS0pAB1UcbUg57aMQpSLHE1k
	 +rVC6RSfpms74+OQwUc5oWUmyq/TqIO3P2dSweVwNcSCjEaXckMINpVs9FTb/db7+m
	 rjve9IPDz20rnNwIAoMNlK7d/hDteJm9zLW5KQpZU3NwBg09Kd5GhNF96rDfoPV7kZ
	 gPzncFW+azR7cLdATsEBuENtUXiHVea+upnUm6lDyffIWnOQYzLUQoz3sUxMTVQtpZ
	 yb+o8N5QCZ9qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFAFCCF2C2
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179217543371.24270.18330351956073521020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f5bede18a5ffd03ae1fe8c8d392a16b080bb55f8164d9735e0c5a3324ac822e
Date: Fri, 16 Oct 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792175433
