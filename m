Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317FB10A1F
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743754794; cv=none; b=nkR2Zybwtykt4baLZxeQmP9vFCXFE3qRMBBPpQTteg651CXVBIvVjvjs24AZ1j9TeEjRx/gfQu08eJ8efYZDGnMACg4E0rKIjshqrNdsQqqBxM8jcTt8y7x4dsqoF04FubXihbfrKNTKPSIpXCoRCWqOIpwkmysp2M2Di7E2jdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743754794; c=relaxed/simple;
	bh=Jy8//z1slPXsQ9OJgHdazDRlmur0dgxo9bWQdaHDGkU=;
	h=To:Subject:From:Message-Id:Date; b=ZeGGYb7gRIc6JeVF6iNaetu1Dk51iGjNJJbTovLcBkYi/OLSWnIp4cYvcXZpN33stKP/reNzpq3KUYcBTDOIq+nnL3D+z5YnkBLQ7udAQfZnlGdkkqJg3StPCj5FYI+dbj645P7SFLa4Wts45oLqoOiha0h93Nfuj6VpsA60AK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kjS7tQ4k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kjS7tQ4k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DCEC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743754793;
	bh=Jy8//z1slPXsQ9OJgHdazDRlmur0dgxo9bWQdaHDGkU=;
	h=To:Subject:From:Date:From;
	b=kjS7tQ4kTZrYzAM4b20wM4BqBIa2LbjfrD8T48M7kKP6+CgF4CV4hVOyaqIxFEmE1
	 JXsLtK8lDt3dn8r0bclpo2gCJ3uZI1IXTHXHvqoSxQyBHqP3hIZu6ZS/bfmkSiD6f5
	 sJQM0iRDx+pUYXwanSkEGSGxxCb4W6hrFtZv7UbwC5jLO4hOY6rsmAL3Mi18IHVPPU
	 qiqfT+UWr5YAb4YJJYlPUg/wIn3yHbZLVUo4iTuGIyybHgyir9tPE5M68NVMaSs8vP
	 vp+xZwQcug97TWuK90Jmnug925lQ3Mq9Q02fErF02e1LX4QTxdl2pGy8ZTs9iR4pGU
	 KzHhEG3dTupHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A6BC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174375479361.27264.11816306726141784636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b04115285e78be0439f0f61ebb11ec969c43bec8e63da8c80bfa85b04d0d4ff
Date: Fri, 04 Apr 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743754793
