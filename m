Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7742B17799F
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 20:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744576794; cv=none; b=AwG11zNe530N06d7p2Zm0+0qwuKPk28685D8C0UScoHcovdSgZ7T8UsYnXByPhHTxYVuVnzdrihlgEenFSCvQclgQlRCboQO3C9Bsx6ao1q+f+N64GIk5zEMrCiysz0rK/Hvw4EQiYnwI2kJQ1yBYR4m7SaBZY1Xgux6CqDWVbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744576794; c=relaxed/simple;
	bh=LkIzIuMrOCZ1+e2+CmEGWfmrg7n6btZ35mpxVguXuRs=;
	h=To:Subject:From:Message-Id:Date; b=tJ4mRvOTRTVOxnEKk8yX6S7yMmMU34llwxbGtbwcXWzsuOQ/YA6PjAb1ZnFDryiOZL/8fUzNp4MDRdpS4utexocvcWStOpJamJ6U6XYa0ZmER0Tn/YQRpxdt+1LmcxgwGjmOHDxJjRCjohE1cMF0chn4PKpsRK4aXKkIqMPfRn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z40FISAY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z40FISAY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE531C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744576793;
	bh=LkIzIuMrOCZ1+e2+CmEGWfmrg7n6btZ35mpxVguXuRs=;
	h=To:Subject:From:Date:From;
	b=Z40FISAY9+PqFP0qM/CZF9eRzwP7cHAiVisihH4OCI50BHuUqaCVlPMIwUL0ntQXN
	 0ar3WifDfQsWysAHecdhYIpmC5YleTalxY8CsZ+TSRM+qdIlO2/Q565cqjlAG3GCBZ
	 rvEF1y9IWPSIZLlebBNNjg11Lftv2PFM4lXUvrZxPD7OUQ3t3a59khsrddusFJxrWw
	 FUAIZYcRTUrTr8HgssG3kIpGDlQWGjj6TTbzx8X/LKBn8HQ6VCPVhPizFxZeBm2ClM
	 9rXBG/u6aK2otJoGs0K1vQ/FDTHrhPwnqtjKsevRF3QNcTizdPk8s+W+6ZmfNT1V+G
	 xBiUh+m1B9bBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17DEC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174457679370.30261.16536268888968001933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eeadd1ad563a48ae96dd3d55eb438d1a16b053f01c3ea7b8fa0d4ef13ab4c40
Date: Sun, 13 Apr 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744576793
