Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA65B646
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729352754; cv=none; b=FakJnE4dK0zb5/PAT9F7R9w0+GXxsqpU0g9IN+svmDpXhHrVnD4LK0zE0CqzzkJbva4WaW8p4jHeUImxgUrMGD6aHE+58bc5Y1B6NorIfMvTNXL6LGHTdneIEAk4ls38mFzboUFm8l2XoXemY2jmHMgHae+BxCJFngfbfEvkksc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729352754; c=relaxed/simple;
	bh=qjMP++R5aWoelM6laO71fb3hlyzHUarLrjG05vh1WZo=;
	h=To:Subject:From:Message-Id:Date; b=DRiYn1/m4d29bYUmS4yZPWP1gYbTyset3ltMcbL/ZOdkfgZZJzSHVw1oCci+AXmJFfMNBoZC3MmYwDv3v760NZKidJdZUw3Qh4zLkdEJd0lB9kgLgBrnppjREW9VI5eKexQunYnhddYfMskjnHIsZaxcl6J5Tx+l+Fy9eIirweI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ThyUvK1n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ThyUvK1n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71BEC4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729352753;
	bh=qjMP++R5aWoelM6laO71fb3hlyzHUarLrjG05vh1WZo=;
	h=To:Subject:From:Date:From;
	b=ThyUvK1ncW/7XLcgB19oYIO5EbNsCWEDeXAUDqkWbBoqP4ocMS+F2TJlRpTjyJBBb
	 rtsr58FeozF667TiyBgOJNbJXPe+tZWcky+w95dJhKeE5TI06Bc8Y+jlg4Jqu6o687
	 A7kIlUBTI1Ng64wlwJbqxJS0d497LWjl9QvZkpd7TffykBo2nevza2IVfiEnE0iCVi
	 8asKYNVLNDwogIXzvFjbMHc7MtU01r9ULZSPH3OzUYtY5KI9pfNNpaLYLX7IMiNymJ
	 4RVwxNzg0kE0JxYt7fxdvGrl0vOtymCf3hnhOQhfZ58hfJrvSebgaDSn/rTzpuwoCa
	 X/nO7fxyBM/Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91771D3C919
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172935275358.7461.898490444775639170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e596085d3f764e63eeffb07729a0337b20b55f92aad0a54a2a8b2aeb8ec58ccc
Date: Sat, 19 Oct 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729352753
