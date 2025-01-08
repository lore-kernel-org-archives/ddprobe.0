Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2467620012A
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736369154; cv=none; b=CtAaYkgytxs+EszdMHz8v8kXzW3rQHN/EBg77vnMgF7XpZmOr+Sl4dJv/5c9o2NKa7al5KgMLiN0zFrBEgIS61GjSq8o60MjByHsTYJVaFM05Mp8Qk6isb5oubBW+HcJ9AIi+RlWXBwVwj+vwHSoNtbA6cBLlrNkzca0AfB6nEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736369154; c=relaxed/simple;
	bh=xyRA3kged3BIy+mWduQ20kjtkOpoovUMVZTzGzqvds4=;
	h=To:Subject:From:Message-Id:Date; b=TjtP/1wZqEvQlZBTruwBm6s8QBgXfTiuM8aUV0c7MpwCeqLNgp3xsAkyo5k0oSENWnGSHtGrY3w2yDcjARdX8yU95lcaxOhJRvHlZyi2AYW8fpSJOcyAvb6Defys+pzsG8AHe/s0uye3+Yi06cxZuMEKsOqg96hsSCMPInO27sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uEGTsJy9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uEGTsJy9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE2E8C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736369153;
	bh=xyRA3kged3BIy+mWduQ20kjtkOpoovUMVZTzGzqvds4=;
	h=To:Subject:From:Date:From;
	b=uEGTsJy9OV+i9H6pHGnW2CjbNPlagWkVWhZCIl7/AzREfV4KWUenrdeFiL793JGr7
	 M7Z420cp4tBeDU+JRf+t63MRtJYdjBf6x/hg1g2VWTGflsjyWURyK4iYeFRGUP7gBF
	 W/8UPp8fjC+wcYxgAK19Y0MwnmQ3XAE1oKoIzG53y0Z93jS+mus0dqiHyF8omJbZR+
	 f5tcV6dbGxZmtt/SFcOmYIb4QRGKbdOMPgyZcdU70ZDm8CqpqcXZZLq7serITQPASe
	 Se9eLwpLLPSzwoHrx79tNORo/bANz9+iNO7+S+xICBTOkGp3Xrub/+GeKMF4cj1VB4
	 pF79oOzgLLviQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967DEE77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173636915360.3386.8599315885940167762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d378d110341e895773972cef5d3d871e91e4b35a2ad2c89d96df1c566affaf3
Date: Wed, 08 Jan 2025 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736369153
