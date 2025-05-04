Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F29AC2FD
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746391794; cv=none; b=SeQJq8EudmLFQ1fKV397eMCe8nCXJGnFb6t7XFIu3xIbTsLLs0PU+u08sCQr6Rz7CD7vPiUToK98MyJZ7U3Q66YHud489ilmjod6dmdCBjFRKEJre857E0Kq3HyKUlVLHVW6bnliKkGQannnqIdd+pzZrMlL1Gk06rADXsMkY1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746391794; c=relaxed/simple;
	bh=b9MG0Ofn5Cnnr60CYslzGDPc0f6oTBIb6u7qs1fXnDs=;
	h=To:Subject:From:Message-Id:Date; b=dkF8z31xNHrpOFn5bYPcBXwU7XBqTV6XZ5w1FT8NWcg2P+GYQwX32CQ13FHbzQILmwpcdAclqD/+ZqLWOsYlMx+Z+kUYNUt2qGFYk/wzsDMSIzT2xyBfGGjX8mtwKyubscE1sOSzEVZQEk42exn6CXEZKP+6J+VGOX3DS4Acovo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=akrVH8qL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="akrVH8qL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06D1C4CEE9
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746391793;
	bh=b9MG0Ofn5Cnnr60CYslzGDPc0f6oTBIb6u7qs1fXnDs=;
	h=To:Subject:From:Date:From;
	b=akrVH8qLLsY5esgK4rJxIv6bk+8YgRbDOhf0awz+Xrk+j/hQLjv6nkh5VnhI5cJzi
	 456UwUvcQd/nqiMn2v5BuPo4zXcIG2df9T/YhD6Q4TTTPpVW/2NzN9Xs6Okx4PaPuf
	 pgvPHehy3R1iu8mVs2Js1oGQvP15wtsU6AKchYv0oaVb9c9cspEhjkxH8k4vZLbKTv
	 Z3p+HQ9xSuQWTjJXzibz1v2Kj4Gpn4pmxV+9PrDVQ+pGQ3SXLZXQCMRsdmQ2PCBBXb
	 P660fk3YGQCsN4k5I4LozBHt73sqdWRu5VeznaNfvEy/ecSnBdHSVQ7NKoI4AEG/tJ
	 LQr+Ww+JVrUxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E609C3ABB7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174639179357.24271.6760616592399604497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94223162a876f37b9a82b601e69a47b2fcb6ef1dfc0a893d848424823f57eb6d
Date: Sun, 04 May 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746391793
