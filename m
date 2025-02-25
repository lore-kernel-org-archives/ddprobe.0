Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E12326A1AA
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 13:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740490735; cv=none; b=baAYYNwDz4Rdjg/s0tz5rjKRdNJQUAdPOAKLZjleMr4IQrgk/3MQNCPzl/KRQpOrclJVDhftw4B/gCX1wdr9kPRj55x0Oi3Fk4E/JwTVKafq006psMZSe4psUPA4PavcNuZmEmzFd3IU/qBnk0QI25JmHCCwbL1oQTZI+y6K788=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740490735; c=relaxed/simple;
	bh=6vMFwaE6fGk4jLomyLYMw+UsoGbXcrYS9Fuli8xUEYk=;
	h=To:Subject:From:Message-Id:Date; b=fi5cNwMyGn+cwdi/2nA/iHkAVgig5jxb1vR8VsphHI8j7+sdk+8ILnDPDaQWv/31HQtzXG/oeLNyD5fpAkQnG5m/rGUHI0Ws6ji5GFHZwjIGDfwE27yF/cJHz5FcQmi2OrXL5oUDqb95Jz6TN6oKiy8miCVOGyL9J8R2jJXhfuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LllR5UFh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LllR5UFh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77C9C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 13:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740490733;
	bh=6vMFwaE6fGk4jLomyLYMw+UsoGbXcrYS9Fuli8xUEYk=;
	h=To:Subject:From:Date:From;
	b=LllR5UFhdM0NNCcVQ8u+CYnvZN5wFgovw7SS8vhmw5RS47QeoL/VnUzH+mnzouuEq
	 9ge6tawJL7H8Cx+X0C7Q6FGNV3E3iESRuPGRaw/SNkPSZnSmuWc6fYTzK5y2POm+vy
	 zRop/PdJz/D7f1XeCAk6saHKkh0RT7j6YQwvpU0/sc88ugfAIYZN6sV7GDLWR3UW0L
	 EnlEBDldJcR9ev+RUbnD25biUkULZ/+9UqOYvv9WT5Kd+HOkmkHGiNuilovszKYblg
	 4JZrd64TaCM7QVSVoIv4U48QgTbHq1hn+DCwyrq8u3LoILnkz5M0IbyO42/gFDh53g
	 iH03kbKxF3MHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96673C021B2
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 13:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174049073360.14404.16989988974581615173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e862ce32b0cd446961293b61b433750a1aa0d3d412d1f9e1cea5bd746970f0e5
Date: Tue, 25 Feb 2025 13:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740490733
