Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D271145A1F
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785938434; cv=none; b=Favaupv22mNLyIlPtihLh9pqqLjLbc+YBAXOF/oEeeGr0rY8cF4dxpkk+0vLKSd08dhKmzJ5Q/yps7nwcWSe0/VCunYZgYv7MP68ueOfx46xgEcoWzJKWvBwvVBwB21yGLEHEDTO+rCT93RNvfgtbdTS9rNKYfTOAWKoiOWyT20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785938434; c=relaxed/simple;
	bh=6FPgTs0wkdb2BqO7BPazdHOEJ1UJxgUr0X/J735FWaw=;
	h=To:Subject:From:Message-Id:Date; b=R6Xazyht8cCRbfJxKiBY6Ow8Jtl93bI4TYWDeoTe0qdiCYuELlwLWCZ198wLxGLwwl7eamu8I1Tmnn5MCafWT7t9dfBZ6Tb3gXC759Y9Hy9INUmaFUZ0zt0lcI9hqGsHwO9nC1irw9XbhRZxFsG9LqFaQDcAqW/Nr/x0slbvBUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJij8ssS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJij8ssS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA48EC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785938433;
	bh=6FPgTs0wkdb2BqO7BPazdHOEJ1UJxgUr0X/J735FWaw=;
	h=To:Subject:From:Date:From;
	b=MJij8ssS+eFflnJqkAUIp+qrLTVNcfdVwB81ruvvdeeIxC2dJuBGHrkujojYgrbXm
	 KuP2xeqaAandh+1n5IQvCbkbM7PqUVeGOJKYI3QnrLQ6LlIFx/+AoAZwnFzjusFOv9
	 RVpASE69BIJ5AjXeZ4TF06LG5Ewo6dnnzjt2XgauhKotsmQKA7jWf0hbefbK+e+zs4
	 lYeTlcUK5R49grZsNmDf7Bom+D0TE4CL1WhVcDzBnZPAaQAecsqM47EYrT3KNN+OB2
	 amjviuqRgMvaqePflu8kHf/1ZdJuFbqMTBWCoPnxy9DJgKUFH5y8VE3FsFjVO8u31b
	 +lF7istjVh0NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B44AFC55ABA
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178593843372.21750.12838786319207755179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a78a623a60fc9629a867ad187f94170e41de69f4b7bd335d1ee97e41dbfdeb24
Date: Wed, 05 Aug 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785938433
