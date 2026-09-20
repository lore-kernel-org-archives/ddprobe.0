Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC0703B2AA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 12:30:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789907438; cv=none; b=Rjb1o81gWOf8Zt20izR/W/2p329Ahg2u8FJo4WmnQr4WMNBE5i54cQV/SbBMii7u7EmcHf9ME89L3XldBvAVUPKcJDjBnwMQ3HvFlRcCtx5En6aSG9ypky6xkSBOwWc/VvmiDpw68Xkc7MRp62UeQMkZIu2rJ3cyrGigm4ollto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789907438; c=relaxed/simple;
	bh=jTeu5agZdvAgpJWSzK/5ZF4edyXbKWp7l1cUbTIoKQY=;
	h=To:Subject:From:Message-Id:Date; b=gZVTKdWK8UbR6kYOPgvufh1eh0eOlHr7g/iAUQkIc2AdqY98bavFWqOt5YcCOWgCMGxlQZ9IgwDnJW+rRFDZX3buEguKZtvulLsW/iqAUGW554iXJxDsnZ70qnN/63PdVa5vPgLeecTPmvXQX1VngmRT8pVfvjpCma6epQzh0wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B2qzcwH7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B2qzcwH7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD41FC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789907433;
	bh=jTeu5agZdvAgpJWSzK/5ZF4edyXbKWp7l1cUbTIoKQY=;
	h=To:Subject:From:Date:From;
	b=B2qzcwH7+gtPdgetrtrcNWFdeyXMSigiQgLN7zoNLBB164B1Edvl9eiHSnaDJ/Oa2
	 Aci+kb3GUdDuQEtzxPFvhJqDkBwUS1o9GNBzZfNPybTtF9lMd8OODfwddi5igmaue2
	 4kuKK9F8JlzFefKlM0cL5A38eYyXVi1vZ8OwcC5R2yx901ba39FYV4BKlVUflIiJI6
	 1rRaxUjYXMpEE7nWBzckii6zpktRdOtWMJH7RPQLrRG6VGnaMdjmoElId4IUVIOOqd
	 PypP+8jRoFzUQ90Y0e9h0ocQGDu9e+g7iGiWm4/+BmjJvalKkSxjTj9QzPzlSnrFSj
	 3OpkCCVLwfLKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F95C982E1
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178990743368.18950.1866584482973417493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a20e947c31f797e819f5bcbf2ed8a7a6310035bbbb3eb2f3bdcfd61ced4f6183
Date: Sun, 20 Sep 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789907433
