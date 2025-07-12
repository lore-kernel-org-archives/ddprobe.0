Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236EF1E991B
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752344994; cv=none; b=EbS/M9H3MGV7K1gy3a3VOsNxYwSmElA6u4+iEuMrjzkn2vsWw+c8ngcFTeBY8LWGfNqA1oC+xGz1KFMyWrvyGCSggRqwFsLf9bwOGPG7+b5famm5ilAlJLGrhujO6qYs78as72AEkDPMg1vgFl3JSqblnTOqhCFP5sBHcxKm5WI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752344994; c=relaxed/simple;
	bh=p9MZ7qHOwKAIbzPqQRXWV+UcU6LISR+JiU+QZC0tF3g=;
	h=To:Subject:From:Message-Id:Date; b=b5HxpURXLt7dWMfa+AXdT5x+wWydb1TNT6eR4NZvcimmTHiDh3L8PzZfAtBXRNF7sq6HO/pIRVsPXeB+LPGRsWThg20B1YufJKfXBpaUXX2Rp+wKqdJrbOiYLLQj0nMsYm1SUTxtGEU98JW75PV1Hn0lmad2xEaubr8Ac4wAco4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HmQCNnHS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HmQCNnHS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F73AC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752344993;
	bh=p9MZ7qHOwKAIbzPqQRXWV+UcU6LISR+JiU+QZC0tF3g=;
	h=To:Subject:From:Date:From;
	b=HmQCNnHSlyK8JHe3sED9oB/WD6TDmKwp9+GwktqID82Mn91tjCFN97x4+QvFvEO44
	 xMh5ldo5l/WIeOlEpDipDKpni4XAx2tOl4lxVfPgjtGRs475q89AaHAoO7RrBIGrM6
	 A+Xe3XJP8unwYJBmgyeB7E+2+26kkM9WyfJHh7a15SfJ/4k7Llxi6ZMwbBqSf7xUPt
	 QtcaT+PXLTYvlgOw+/LD4fTThYdr4hQWPobpYWgGcFvb3NtbUnZMytsSJHL6JZqTPA
	 kNAXLFZbCsKBWTxGkKkpHIErhVdhLhvVatHqW+bEEiWwYra8/b3/P018AuSH+qFig8
	 AfTV+CPTcmRTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6CCC83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175234499357.20461.12433653943861221764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb2dad27d0bec66e0b1d281b3fe2e7c7d6ff70390e5afebac1b6b386ad8b0381
Date: Sat, 12 Jul 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752344993
