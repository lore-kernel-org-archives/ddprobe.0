Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4773A3B14CF
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 14:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780754674; cv=none; b=MbAhTidSJ5hVAKJ3KDKCBmdyKsYWNmD9gAY65OuFJcrkUkQNPxbLyT2lWNEmowDNTal7e5dOPpjKYkh2g8Y5UtWMkJlSuCp5PEN6VVriO2Rgt6sF+hRd6CfQzLP9wzTtQsez33Y9mvgI0nzO8QF22pg5ZX6frP9F8N2FUg6kGr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780754674; c=relaxed/simple;
	bh=a981qYMOuGNvJJOg2Jy8MzWMVkFpGv3+eOiidlede58=;
	h=To:Subject:From:Message-Id:Date; b=ZXtXwPa1rW2Imfa9W8OwCZGJ0VLsiljl9j2SrIXHcpyXxOLEmQvgV/ULxggvlIlkwXLmTM0iKW/QTr1zhbMMl8bsxKr+3uhS7VnkwhR/1qkN3v8gD6UYcdm6ig64Iguujm6WpoteLCFRUSX5udjwtn/wMgs19705ERNjXzT1k2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lbswq3GZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lbswq3GZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C325FC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 14:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780754673;
	bh=a981qYMOuGNvJJOg2Jy8MzWMVkFpGv3+eOiidlede58=;
	h=To:Subject:From:Date:From;
	b=Lbswq3GZZNgyNXhlZzUg+qYg/viLrl5XkLzz+fZL215wIpFM3n985RqQkwyEh6OeH
	 9cEwrIwMQCW2xv0RevFva84x/6In/JoKPFTnTKHCJdBRqyqoSm3seSgs2M82Tql3nb
	 0nRngUCTuf5SvmNzn+e89ER886UF1+6gVYfkgZ7+e3Gjcxt6SX7z2g63ZPlU0oItYe
	 OmsKOiQtd2AACLSgg21DsK/R7pc27ieE48/dB0insB4kwe7esOXfaArwDHFoqa+jWF
	 HCRezFtKvRN4nh/ZKJc9GGmt7q7zJ+2ho5Zjpg7rQc56DPppJXDRr0l+CMNUSmqOnU
	 uWBwcOAk3jGEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA177CD8C8E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 14:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178075467368.14720.10106380377430424788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bfc255357cf498bec71be7e49c0cbf10deacd54e20a3def0cafc16db86e620b
Date: Sat, 06 Jun 2026 14:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780754673
