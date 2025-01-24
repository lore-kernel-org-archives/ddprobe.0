Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543891D5AC3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737704754; cv=none; b=cILTP1wz3a49P36Z2v09Dft/GbK2ObBcTekB/0mNoHa1ekyfPBLHbz2LQAJNTV7u7DMj84deixtU7WBt/xYPlJiaA+PPNmjjCkdG4op04L09Pu1fsKGEb8cefQ3XeQkCyvd+I92Z89AwkXaw2rl/pMdYCZ5U+s6sb1bKPYQHc7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737704754; c=relaxed/simple;
	bh=M20w3AgVc1ZUvQnK9tS2BmGm2F33nOLSod0LoloCITc=;
	h=To:Subject:From:Message-Id:Date; b=iPmHte9UGDUnY5CD7NuSdds/VSQh3kJxa3B+4RO+/ACC6YE2liGlZgm2ZjatEJ1mzh01YntfeNiKNxDi/5vx9sMVgcujvyted9V7tIYHrG6Ir7xwKAtgmV/wdcYQyt9tCBCN+ONjQB/Fcyl2GS6BNFyZtuaSpFTPGQqBkHquq0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JI/m7Dxe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JI/m7Dxe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B063CC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737704753;
	bh=M20w3AgVc1ZUvQnK9tS2BmGm2F33nOLSod0LoloCITc=;
	h=To:Subject:From:Date:From;
	b=JI/m7Dxek9F5Ui6SCwlWlyK04ytvO9oJp97CwrubMPWA8AvZVD9o1BZVIizc7rG3W
	 ACJH7gH/hfEmZwOqjt/7/2hqetfu24GKGWRaso4VJoFdAqIWgM/rrB9g158T7LFWRS
	 wp4C+a6BzR+f3z28knDA/dORmpB6o7NIGwjDAtx61o9i5Et0yCti4dNsjq1h/nDMzk
	 oCdPmPbit6gNh+SHKYHtLG/GSBQKOCubKmMLHBxp7TWddd15xA40V+kX5Yt7MtCUDw
	 EPo+n4VXsPm4NmWYBclvj1Jwm9GLcd3GzPO93F0tp1KhJXlfn7kegBrwgeRhHpjPpl
	 5seZ5HWCrBCAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C97C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173770475361.23458.5002101647320309974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77b097a46449e8e2b40b86970803a67b300bc269ef4f3f62a6a261adc19cd5a5
Date: Fri, 24 Jan 2025 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737704753
