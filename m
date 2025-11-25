Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A74F30FF24
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 10:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764067374; cv=none; b=hw9+uZ28M5KKjwilGqSUDDL9on31yexVqenlv25dTviWTvhnFmXC+DEnDb2pbhCZZu5iL3N2WxVQO7ThDt5Slp8aKlsVeaBjepT15s9wCIOdO/MX4rITPmLnZFW86DQImPmx2BL39XgqtI0/Ji2MhTn4bxNqd6c3XmpbOZ1gRJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764067374; c=relaxed/simple;
	bh=0s5xw1D+y7RzHiH3+JpZA7zFtkM9r50idB8wtUFCcNg=;
	h=To:Subject:From:Message-Id:Date; b=JyExT2xMP+uyUuM2Hyje+8vFsUEu0RaF8jNzPxmVLWdL15TQYPbGXrvf7+sjOMEU6WB4RpJ707TuyCBXp2vuyxJCHvJ6WyIjy3TMrcEb/6ZC1k6+nSlYNSYK8fYqsQrp9NbyM/UwuYeuxOn15Uq6duTny1/42SDAJ/Cer5Xfm1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fguM5vGQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fguM5vGQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB2DC116D0
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 10:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764067373;
	bh=0s5xw1D+y7RzHiH3+JpZA7zFtkM9r50idB8wtUFCcNg=;
	h=To:Subject:From:Date:From;
	b=fguM5vGQllwN+mQf7om6suA7LphuOMJitIdeEuo7As5qg3U/zPJsh5LmgLCSRYAVg
	 zRj/O1IeZjjkeX25nT2HYd7urPUO3GmUA5RF4GOWGaepseGKlFdg32+NU8aoH+63cV
	 qbe0ZJpJgcrQoEtKx+1ynKAy9qJQr+BjUFlP6lhGKSMboSW9G3xpI6XgBI+AqHiWZX
	 NkgXA8Mgvibnybv1Su27tziLDWyHqjCHPhQtZUjyoCu1NQ4IvNXJk/IwAcMmSS0MFC
	 +OYaAwfHWVHscoj3ab3UdEacbJJKAVE2asurOoYf3szDXh2Gcdunp5ctlmdH/oguAO
	 0suNKqQKU+oIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97225D0E6C2
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 10:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176406737360.13242.12649157090336988401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cb8b7db52243d617f4b92a8595f9a43a013cd1a4613498fd8bcc6d43b9cd555
Date: Tue, 25 Nov 2025 10:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764067373
