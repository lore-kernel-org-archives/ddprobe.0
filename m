Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26ED614E2E2
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762422594; cv=none; b=RY4vOUZekeaZ1OD69uNi7GQzoPvdbr0+LGbIJ9fMi7sPrsU65CWOc2R7gwvD+LevQWQDaeAf5IzZ8y/70d5B66+sMnECv1e+AvdngLyeOVPKME/6bAAetsjOsSYgj/D2l7xw6QPexPjUPO+bWT6hf+1i4L7NGpya8xc6iDM0M1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762422594; c=relaxed/simple;
	bh=7y0WZCNiFk2Q6h8inyBxj8cz+23f3qWt/XMf54znLcA=;
	h=To:Subject:From:Message-Id:Date; b=XDeo7W+Gl6zlbIb61s7a84GPGs6TpgQX6Z74HBBAg1VjzbsszDMoCV90ppusmdtMsj3j9ccD4CiiXeZh5V08PyLdr+MxPIwHOtXxaq4h92USXYWy8MOTN9AtvJwNylg9XxlsgK5FuhFe9YOxqSAgnnecJdMF5GLcY9rTy3XDPfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZCajbZy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZCajbZy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC964C4AF09
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762422593;
	bh=7y0WZCNiFk2Q6h8inyBxj8cz+23f3qWt/XMf54znLcA=;
	h=To:Subject:From:Date:From;
	b=YZCajbZy4SyqlNjUiwOxLK/+ldxLZhdxqgI+mOw8HWMOFJAOvr/58jxutRceWnuqB
	 a6VOkwUx42YmuAx0Y918YLebFa4Mzvy5jWPx2vkQ/fyodNMn9P+XpR4HK7sCrz9M0j
	 YE2NHe9ivQwsKXrd040chiMZZHwucv2P86HY5D0358eu17n6Ub/cLT6q/PSUajAo6X
	 RVgDhmDzLEeTpXTl2HXx7GrPZnohzjU5NxZB1zos31mzj7EaWyp3Fmrw5DBkZSX5Bc
	 Toj3TCdbJF/ux3GbJsgaqYy6FO9K1NKBj7JxVJR3ZTMGZM0BS77nEUrCPa53Xt5KkQ
	 ljV0I1N5fYJvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F72ACCF9F8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176242259364.12780.9292593518841762742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f80e8e64c997cd7ad231ab3f833e66768b8fd9a2b69b1f84b3657317713b08a5
Date: Thu, 06 Nov 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762422593
