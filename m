Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE9F2E36EB
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754168394; cv=none; b=kPGDswrwQETly+1BoR2Sz5MRDF/hOYqxE4CEcCYzdR/wIJ9YYkM5y53Y6W4IKTZyuKSmSumiTqe1oPu5/6VtbnMKHdgFjP09S8BzUJS93yr34/a15C8RZEzumzVKKx+NjcLw9uN6bF3kGgnBqa8yuUQpiYlILlH52xISIft3+6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754168394; c=relaxed/simple;
	bh=s3ytjdXJ7QO2s4kb+R4nPVZW42mJcCSmCjXFJXQo2kI=;
	h=To:Subject:From:Message-Id:Date; b=EZ1Xho+t022uR1q3T0r5o3pCi9xdRuJpK3WLzlJVWWPHaTTLsfT8W6lXPqRTABTW1LSRMXc2OKIX+BbrfsO2ucMYvckn0fxVpYV98ONj2XoVz/s74/SYLH50QSsvZRzY16hBymOdfxlDF5QJX4Dif+evQw0YL27dxHwENi7Gr9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k8iZN1AK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k8iZN1AK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D916C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754168393;
	bh=s3ytjdXJ7QO2s4kb+R4nPVZW42mJcCSmCjXFJXQo2kI=;
	h=To:Subject:From:Date:From;
	b=k8iZN1AKEzE6oJK3J7kQ98KzYjO0OGodCPWcEYg+cr7wqsFQDmDRgL5NP9Jr5yu4g
	 +KkvTznYBJ13X63IaGLp7KNpfku1bx+aURF/xPRZ1gde6j/GDrYhby7CZGWo+nq2xC
	 pLwrp31yGzbWcPWtGpjcZvj0MKdFePfFpbs04hCLylLf6TqlTbDOiYL6Misfukc0/X
	 EE7KlMsWpopBNuaYLz16rFkMhzht4A55uHZfpEfOIouPS+TwmjyVKyT8Ae/biAQV2c
	 yNviOQsDnwetqPtFs/yS4sriyd03hObMw8vi4lIGqgpXlqu2CPx/w4WFkOBDNxolrH
	 3/sHxIyJ69Upw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3D9C87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175416839357.6759.5327778861941930183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d70ab99cceab10b5ee8f4a017f146fb7ff51191a8ab8aed9e2816881c894009a
Date: Sat, 02 Aug 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754168393
