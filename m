Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2981805E
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743932394; cv=none; b=tTjmd37zDoUE9X0VKoLoeAdXG9cmeYtdqZB+brAAMJJaArDDMm3L7ZcSlj9nMdkR8fsSCwOkTssS9AyzVWHjB/DuYLB5nCWxTbVhB4DysAYp7fMXYVLsBTK16dZ4xLJHZRjxwO1xs4aMdC2QWh57mH3oCofLCQ+sN3OoAzVpgaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743932394; c=relaxed/simple;
	bh=CB38FD5/HsOk+2idnPIxMR5cYfpwo0SG645wPt6r/SQ=;
	h=To:Subject:From:Message-Id:Date; b=J3buQGBQSsQeA7LkGaBLjXxNGcnRNXOV9NyhcvBe3ylt24AVuqkreIII1VSsRx/zaJgGGy7e8ZFIWNItVh9Mda8NaGEKdKuq4zRFgbxAQFtNEBhK2Q4q0Jc5tJf6DTAVDEQjlkOcpUxWVUxLBf1T5rvvwC3qbsB+eOW6gIaycGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rGpY76ST; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rGpY76ST"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BF0C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743932393;
	bh=CB38FD5/HsOk+2idnPIxMR5cYfpwo0SG645wPt6r/SQ=;
	h=To:Subject:From:Date:From;
	b=rGpY76ST7r/5295f+IMHo64w+x0XO4mmaEwuZn5IBVuCdTEsOQkOI5ZcY6TPjl/Bo
	 bMQ7jGjjQt+6RQsY+IhRsDMbSOn1aE1bEeZXCjhIjub27OFblFC9qhsR4+B5lHD31k
	 s3wi13P3dXEZpXw8laz/Rrur9XqMRVJiNxUXiNzV0M1A3rB2yn3i05OrlTIzCsoOdF
	 Fj3g0UXL/jExHnqbQ5Yv0bHZWd8lBkN5NlO3gtPxjvZ+npcbhPQ0/o19y8qVn3vGpa
	 w3qJHrH2mlMapqjiT2CFEX+PuZjCxGcMulxha++mCqwtVrZmFp5NTn5zkYdKCfknv6
	 XIfD9tidwG2UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A10C3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174393239358.7207.12065986232252768621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7edc3adbdb8ca61f1211184ba30083eb20c9ec0f0ed38b648c2aef84e937fd5
Date: Sun, 06 Apr 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743932393
