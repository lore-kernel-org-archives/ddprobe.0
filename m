Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A341C14
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 02:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715826143; cv=none; b=MvH2dr2NA1vcwOaOLsedwrlYV5L+wMEQXMRsVawQ7r2aTUcwTvNFN4kGuaqtLHAsXTdr4AHmZb9YnECKNF0+io1oyE5IpqgwjDEb5VcQQirVAay/e06Wffjt0F2a7evavT9wQuALWmCOMqy7e0diYDdvKhu6ng5E0UV5itye27Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715826143; c=relaxed/simple;
	bh=lMQe5Ft7/k7Vg7cq7DAAxklP4zW7s3XMXjVjX4mFVnU=;
	h=To:Subject:From:Message-Id:Date; b=XUQQlzYJBj3V+LBRBN+RxM1/ft01z0s85ohMIM9xrebovvK3eZIUHEbupN0+xwzMp9TJkzxm4L8cZne4EmVGFbanI4ut25Vxp60TN+oasNbxwwbn+fpC7e5h6z5Jpi6fSAtsV+imYCNix1KmBqYKMZqgkKJAQXRINT+zisqBHBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fFCEcFXw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fFCEcFXw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E11BDC116B1
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 02:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715826142;
	bh=lMQe5Ft7/k7Vg7cq7DAAxklP4zW7s3XMXjVjX4mFVnU=;
	h=To:Subject:From:Date:From;
	b=fFCEcFXwWgSuVioXSQZWFOdJk113uh5AJeeSEiQysH0mbpBoS0VGYvg5Uj2HZlv83
	 akiqA/2gLrzthWFqODYlZEWLnr6327Gbz7sYtzrc/K1eF+YMbxcyIaBMWvObskQ7YD
	 C/B3fN7eN3upXf7t0Rdsxi3lzhovCyCXk2MVAhTUfyB6bBzQwiBs5ghUM178+gRN2Q
	 pgWn83kde86SXB2I3dAgWWyoY8pFgCQ/FGrN0zHwq3rgW8dDYGWTqar6VdybAZLCw2
	 Tcg5cU30Q1bu23u7gmvWlq4/FqwzJi+DIeIleWkRVJfOCWuN+HZues+TCJlFe/FAxN
	 il9mdlWzXhqjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE3EAC25B75
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 02:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171582614279.380.13137278451942475953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be96a4f15a9d1d41713eb2eec4f3b10f4600f6eac7d64388a36c8587d119f19b
Date: Thu, 16 May 2024 02:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715826142
