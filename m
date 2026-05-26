Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21448282F3A
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 01:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779760354; cv=none; b=WYotE6Nu5yYZXhIRBJkl2Um7SbRew0uT1ThMgFkB9MEjhqbbBAxRs3qkCNTWZ0yulSDg9wNLgjuZHRDhkwIIs0SsvM8i90/03NuCv+dXhXQ163pFrq9POQuhvnMLJNzVbtI+kcvwCH+iOl0E4wlft0R4RreB8Zxc2fF4l6YE6+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779760354; c=relaxed/simple;
	bh=emvVSF1nXhFpXf0v2+RE8j9ektRK+UYsdh7lzg79g6s=;
	h=To:Subject:From:Message-Id:Date; b=d3qup0h3MnOSEZKP9bKpbuJT3AY/cpXclsTljK2rZFcU7f3zuceUCl039Ek8CmSAo/cdNLSBRHCIe/2XHiaPCQNOL255JYTmr56V7T2M9MheSIxKtYWzStl/V0WPCcBvm3MWfelx+mruxsjkbMeIfv1xaDy8HWAuLJR8qoEjTW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZFiqfF8x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZFiqfF8x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C781DC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 01:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779760353;
	bh=emvVSF1nXhFpXf0v2+RE8j9ektRK+UYsdh7lzg79g6s=;
	h=To:Subject:From:Date:From;
	b=ZFiqfF8xkIy39+al+xsgqlUEyW8KZvCIUckUpUcodTb+3dnHjeKsuXthD8iIq5Mcp
	 IXSM0FTGsgSWdfhqNNEthRp8MLYCvKFd147bTwI+xBlbe+yJtFqWeXLd1SRCB+xbmK
	 s4KD1WE8po2DNQarZENQq/RQolb4oVRfW3JuOwo7tSz3/swTyqDvihUnUWXMdgiMjP
	 ZBCUy4xPzE+BQMP9/h5AwMfpDIZzdk832l/iUsYVLXxDgKRa5EjWEVED6Dl8UI61D3
	 Q8iqOMV0O9JNhgdEvmKDXt9Zsp9Qc5xzJiKzcbNgROTYYwTsGj+RDBuJOYfgHHpuL/
	 fj1p9tbXVymVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD643CD5BC9
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 01:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177976035370.4411.16762719415820440282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 793cfaf448bb3de89ea3b8e738b7c98060aa858ec1fddb4cd82f581db7ccddb7
Date: Tue, 26 May 2026 01:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779760353
