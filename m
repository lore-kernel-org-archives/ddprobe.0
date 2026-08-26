Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E508C39D6C8
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787774435; cv=none; b=BocggNusHO+4FKLYbEc/rXwEWoCfYD7sJh0yQKFGLj6DxPrgLks+0IaOLqhUs6J9cvLv4AOv5mr0dxIi/dwEa333uKYYRgeOgrE+XYFRMgQcUwtD/XRTxHFjnA7BTkAW9UlMEqItsB6TtrPKh8QzFhzhbgPEDcfNM4SqsIOS4YU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787774435; c=relaxed/simple;
	bh=cjBUJSmB5XbynK6NVIPrEy+u/di60iEjqHzz08aGUn8=;
	h=To:Subject:From:Message-Id:Date; b=SKjJmSHkdD80Qa2XNmCQZz500kyEoTVjEnSRGv/SyvU+o6RSgYgANj7nVFJ3cC51fh0q0PpjurQiUUg4HJjE1np+6DWffEvYBZ1m95MrqeLzDsEJ31UV08gRNx5o9IqhfHcbdTHVerL6e4n7AzoWSDVyl3atuDF5VNWG+iI8IxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upswxsy6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upswxsy6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECF6C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787774433;
	bh=cjBUJSmB5XbynK6NVIPrEy+u/di60iEjqHzz08aGUn8=;
	h=To:Subject:From:Date:From;
	b=upswxsy6XAFnAAdedOGHxRZhsK0J6zDdpLQnQf+LgAiO0woQR+37D2DHj7Cawyinx
	 +fjf9WplGWf6nkWrlHAsTssBQQgVBU2YW1gR+hRweQqnIh14SduUo4TwD3hyCPp+7F
	 06pdISDl7D0mrEuFkMXxT/GDF7CIoOSayBVR9gp+iHQMA6NLg/IdVs6KpGht14bK8m
	 Pk5GZFaOWGrT6PtEeksk9rBjqLjGP5oB3Qp1KJpmy91jd6Wn76zrZzVubdhkRQk5bt
	 9y3axisAUiFOWEU+uD+QnkNzx2cD/QiFxSSeYImKZ9yPKfnWAZycgJ80yxEi0sHS1o
	 aajHK0P9FeVhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA68FC61DBE
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178777443368.4655.2726972682194942156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26abc7930829f3dcd2d119c7d4565e538c1152b93552c215dd20a3620eb600de
Date: Wed, 26 Aug 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787774433
