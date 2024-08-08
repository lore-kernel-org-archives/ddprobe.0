Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23CB0187854
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723118154; cv=none; b=pClgDhBFdIRrrInAHaeoxVpvO3cOBWyO7O9WFz/Slxqqkae4pWaMXv+RZLiTgcpeCbQ4cLBgtpzBgXJkCIbPaGCkzR7SOosvLnvExkLYXqAhEv1WLXPhht37LFsDnJ57f/G8eRG1TFSZldZ4ROg9N8wTcrn5jjUyNZ4Jt2UPzok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723118154; c=relaxed/simple;
	bh=ReaEif3232KV2wfubuRTZi5qk0FW+otF/xz2J+MFI2s=;
	h=To:Subject:From:Message-Id:Date; b=sKUctJIjdPnFbblqF6PHcM9c0qEvW3ZW1CmBNf1EWS5nTNlhAZePO4faXOlhICGelCYPLrP3S27wbOHAZ4GMzX/k7phvk1S7/jCA59kgS9XBeRaDFsMjyNKy9oZDYIYQT7I4ZpRbcvL2YGN6KH0zXcGgfoeBS9qM5UpwyiZo+A4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LiXNeYeZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LiXNeYeZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E351C32782
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723118153;
	bh=ReaEif3232KV2wfubuRTZi5qk0FW+otF/xz2J+MFI2s=;
	h=To:Subject:From:Date:From;
	b=LiXNeYeZjMbGqea8427aweUo1IK8SQBynTSaR2rQhxyKmPufcTa8gEGWXA4w8qyE/
	 /e1S3UxxgyIEhDJMHgJU28cBZxnl8z0nTVPwUDGIyGA2QiSByDFS5qBl7dOERSNR3C
	 OpWO/NCZTEjj+itWCYoKq52vxcEeirTWIGsGYW4qFIn326MxPsILIQ2NU8Rb5RgXOe
	 AuEKIhLRjWfGe029imsBTT3vtkwczYpIjJkUXJnQQIKdDKR3SwEwlDlXXgAg9cD097
	 KkxdMtaMbbwG/JBlO/ww4X1Gsf+gyVbbmudwfnptEmNKCtVGlAXNlz8SJPEWQKyf95
	 EtLcYEbCg6NKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FED8C3DA4A
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172311815358.29164.3096126732667584901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc53d932170b76b2d7815a9b6ba971c67f2775f43623cf7d62d1cfdca0a5b504
Date: Thu, 08 Aug 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723118153
