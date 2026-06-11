Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5629D2367CF
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 06:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781160394; cv=none; b=Ag0udlYQGvPF5PGSOTv/mGjswvqsXpKEEf9te6nurGdXq16mjgKX5pqApqKyoWCxC6tXEMvsVgkUxHgLVXAcmzcrbaMlRJcF2nWJIvQeAotRHmySmttEvZ5d70IkwAar4hzUHbhZSFjy5tBK+abhLU+2mXU99+QeqHf8wtFQBCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781160394; c=relaxed/simple;
	bh=DKE08oWSu7Ys/0dQS3fJzisVmMuAEtbupgkLycMDSKY=;
	h=To:Subject:From:Message-Id:Date; b=BhESL8vQIeBg1ChsYPCAAlBW5bBgxjYfbLDBASaexkvF0s3/iCzNhBh+ifnGO5J7gnLqM9Uwi+/u6JVLhsFO/2Lq2kFDDzao8RMbXXvVgYdhCJPRY2hJ6EovBHWIhU/rY97s/9XdKebSG9HVeUGmPBi3DZy0rgKPDBDWqWRbKFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J8qsD5t5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J8qsD5t5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E193AC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 06:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781160393;
	bh=DKE08oWSu7Ys/0dQS3fJzisVmMuAEtbupgkLycMDSKY=;
	h=To:Subject:From:Date:From;
	b=J8qsD5t5afJjVtOaHpaXaiE4dxh0I5WRr8YL/izFlOrHunKyWUHMX05L+7TFNSkop
	 sBUpQsY0m0qYT8xKhKfSUVddqSwFwT2rGI7e9l9LXX4P0Mh8Bk62FlbpwbT89fiwya
	 XUvJpT/W5zoUw3ePhdAIawRkWTsUj3bowMbiKzPtVp1pbgCB177kn+froyiqlBbMdr
	 XZNBEqrLUU33lazpl1JlXM+S47rzCn3xuTLpoWoHnzWs/rF/Z173vZMrcyriRODpBx
	 1pFjLmsoyioo3DlN8OxKxU561ypP9lDxlPB1tCd6nD2EYJKyPVJ/U0ENRiBY83XtTA
	 l58D1UiSKcbdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB55CD8CB9
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 06:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178116039373.29824.3976526439756007086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f6107ddc61d7c49a7dbc34fe440beb451c68c8055656fff562cf020b48a0d9c
Date: Thu, 11 Jun 2026 06:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781160393
