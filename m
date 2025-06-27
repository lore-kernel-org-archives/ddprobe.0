Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446A922B8C2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751056794; cv=none; b=CkemjuHyouqd2HSNs96PpYLjRh+XErO2PC3F51Z9nF0FYtcwQOM4usmc3i+gIqvizbrPmDdagRI5YbJ4HXbL0wbhaBfAOfTc4M4ufh5masxrlUTQxjcr9QN973pagwIcj/nN/2vzeR2ToDqJZnUA3z5PP8hN40VXdU/z8ByJcNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751056794; c=relaxed/simple;
	bh=L2iUCPq7X04lM7EC1obKuHCfMnm85udgoGXVpPCFrHE=;
	h=To:Subject:From:Message-Id:Date; b=I/6iXHdnmtfUqgGOC4uAta6W7b2q9pYM06/ojWVDs7BzW2HBbfMjnOsSYV35SHeqT2bKu0DLFzzs9MaLWjKfclg7dBst1vRxX/wQ+mn9iZSGWSrNd+P0WyzauWWd8QibWiRhgRpk2MfPGkFT2jOeOsjvJ4WfVuAcAzGWj3pu5xA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YlWyEb7z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YlWyEb7z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17CCC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751056793;
	bh=L2iUCPq7X04lM7EC1obKuHCfMnm85udgoGXVpPCFrHE=;
	h=To:Subject:From:Date:From;
	b=YlWyEb7zRVC90evN/B6EN2HJSV2CNMePUZRL7ypsTCoU6rSbUqPK5OWHW2JZVJ4Il
	 S+elm0a1JbAv25kHmTaq1DB+0/4TETGY6cwYA4xdabfQzJBdbF2J0EbrkOA+I6BaQp
	 Abv66NQl8EA55euHD8ErsVN3ssDdYV1jZNU+c24UqOxgcQh3g9wjIDsvaRtd0GPAlC
	 0v79dQA0qgdfbM7UflhlbbjkezSr9a/LICdJlhDiTDVpdC3XtTrewkrHGqU5Yl1MqO
	 7udFdMsmiPSB+YCSPD6TDoHvJk6UWuSMN2TbPDHEMlYcva/osvMxAXE/psETyA63e+
	 eUgyt7Psp9bFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CFDC77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175105679358.25538.6675702114781889747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ca697d7216eed9ed6e8c9d79356f87150e1f151d38ca94527ab6f9c81da21fe
Date: Fri, 27 Jun 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751056793
