Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0A678594B
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712662097; cv=none; b=lmnTEI2C055VTJpc0CQROV5vgGYwBehmqizHpJnDrnvMu01og/GCDVlJVI2UjdjV1YsH5gaXRpCQziJJbgjiDxhL+rnRXpWkzGPry9YqR7JFDWOWBvCvst+C6ETSnSy3y874vhP+DEZhQhzEJDWDuI23zuFND2s8/LS8usgopvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712662097; c=relaxed/simple;
	bh=gfNO7pq5VY6vbgfqEiwab45S+HBcwtitpiNvDt2xpD4=;
	h=To:Subject:From:Message-Id:Date; b=kkuaMKy7QTtdTKhxBtNha0rM0t/SBqKGOXHAoTo8AJN7bItgV9rsQwBobE90gJkhrfT+SqtTSi4MqoZYJ00ikHY156AleXDhQn2OlKWWUaB1lKlthm+aTVMysDczYVCSJ3U9+jm6yIdO1j9Z58oCCdBBzgNXRzdjfqY7cFfNL/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jCMlGI4a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCMlGI4a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93D67C433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712662096;
	bh=gfNO7pq5VY6vbgfqEiwab45S+HBcwtitpiNvDt2xpD4=;
	h=To:Subject:From:Date:From;
	b=jCMlGI4agJ3lUlPsGngQWvJKuU6q4VkGtxVLvk4vfsx5kuT9yKQx3lgeq1yI/nxoC
	 ZTWZutn6Ljo1UAC6bj8d9gQPtY1SCfNWkW/B1oGdenPN+oKTsQjaESN/0DbkTiWGlD
	 x31Qr37It4Lzfp7dZ2Z5eEQJkVSylRyQH8Ni0rkIfgdnDgvSPhv04ZqR3UZlad4qos
	 xEIdy4aJhtaQE3GycFY94arYf4ibYyYcnA0wZ5zZDJ0f/DehQa6LNV2rVmLE0Xo8lj
	 qxLt/gcvy82sp6a6Muh+0vdYuZreHWab6O3teY9kGrX8xseKWXJ4woFYjPRXd+BpBs
	 /iP4o+UaRzJqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79E52C67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171266209645.23575.592848593927642700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a48aeeeb264f9b347df1e482f8bb2226c9fd68db17dcfec018bf218321709f3
Date: Tue, 09 Apr 2024 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712662096
