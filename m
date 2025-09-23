Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E58318129
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758614994; cv=none; b=orwqU2aQqVLBiZkSNsY+L5byEBeR262F8NAYwSIeHbgd+wd4F3TyEScSnJS4X9FIsYwIvx8vOqkIuCiId8Nf8TvF9IlUmJPyNBRkQd60Olfwib2nz+xZJGxQrA9cGbJOX2ePEtsufzyE0n2ULPemKOOHe8QXUzLLzQhVlzkZIBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758614994; c=relaxed/simple;
	bh=IslNss+Bw7vHnKeeqGUYBGYitwrJ90TJFQn5ZozWnfU=;
	h=To:Subject:From:Message-Id:Date; b=N0+BeBkax8ulskf/uctHm73gbvLZ5OsZf/cFq4i+h9720vKBaaKWIEkTUNrsr8xhYAS2ZF/kVXl5693RhZyKF0Qg4J8TeZHRYdtqQwQ6HemzLUf3FLl7kbx7z+fknHzDg8kf/Kr9ZIZifsQlxN+7mbMC05a38Dc4pmAAIy3ZF4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBMqH9Iq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBMqH9Iq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CD9C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758614993;
	bh=IslNss+Bw7vHnKeeqGUYBGYitwrJ90TJFQn5ZozWnfU=;
	h=To:Subject:From:Date:From;
	b=dBMqH9IqiMYlmSKI1gpfbFLxP5W+37BJUGoH+7TSiAYxAAPMpLo/y3gKdEs6OEJ67
	 GNimyPd0+p8t5ZjJeF8SexGlDycKu5iYBdi+S4vtf8y0xe9E/hmjQbaO08r7FmwfVl
	 PUzzGCf1u1huww0QIy6qS1NJ1kznVFYBTYMXZPACbSrOVP6qrBattkCrP5pHni8lxr
	 CYMcRYOKWD/U/BUtUbNxxAmiZnaG53dYaHjsORTWP86pztPD/UovflD6NtwsB9Bsky
	 u6OGMknybDCUNPFt0dCauVriXPJRNPG1JYwFYgHvRpsCPDcVO0f8+9w40lp2Zg2UHG
	 ycWCT0MwJeOoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FB7CAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175861499358.24875.7171393480933874829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83732c6b7908581f8e7fde120c3af899ec0402b518848aa04e86d00d2919fbb8
Date: Tue, 23 Sep 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758614993
