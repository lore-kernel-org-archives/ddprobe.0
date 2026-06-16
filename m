Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C51D3148C2
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 06:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781592394; cv=none; b=iROLARjY2Rj9Z6zFDCjxQJD0MyhIw3KdIW016p/2RvDo15UTsQ5qupJ8QCNCrCTxfZTMUf5N2YuSr4uwX3zmMTTst8aByh7fid4Mz1K6JVurTIT3h532IBbwOPo9ENJZm9FZihrHGkHdVCsTrGESeN0UbwjyPn1R8nZMInUJJPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781592394; c=relaxed/simple;
	bh=crEI/i9sOpxky2HueezPxJkrD0+WGLxP9gJg5vWZp5w=;
	h=To:Subject:From:Message-Id:Date; b=Oq+Y0B0hwH5k8xKsXZwewsAqxQcI29HDE7+g/Jie8B8wGHz8ZwsKm0tF5bsOjYTW4U/xZBV3IgB7eu6U7DpLXcFUGBs4hbGzWiJ64ZrQ0L+QKN1mCpryYGIxYfwf0D/7sHUMKNRbiCarRLXF5Y0XW9c8XJngmwu+fH0gkOH5LAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jacftyj6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jacftyj6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7889C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 06:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781592393;
	bh=crEI/i9sOpxky2HueezPxJkrD0+WGLxP9gJg5vWZp5w=;
	h=To:Subject:From:Date:From;
	b=jacftyj6eZzyddfTRk6Gcc9DZu3cDhTMdt0f3dWRvhmTwbnpsOSHejCmQ+bawYrRc
	 5oP1WW6K2eEG+MoClAgAwpDtXwVKUBhztZf1XgX8w5omidATTeqo18PCwXtgdw1D0T
	 o2e0m0MrQe5i/WTbtBlH2ASLfsqlifEuuUYTHEZYSeKiJpwuKQQnp1FSZ5xyToc3wB
	 4VDqvHj1OVrkwkFtiL/HQ7ZVRWU6NEej374ByJTzXrjLFM6R6gmwfmr4Y4qlU9cdKK
	 61w8mUn7Ck939bu2wN4bOMKxjVW3Drf4ZnnOyK148sRXijwsIpE8UoA7BvAum1eiw0
	 3Y0Kzyoi1vrIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBA24CD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 06:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178159239375.9849.1919859247106990790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01101caaac64c1465292d806dfa09b87c0e9fd6d3efe3eae664faf35e047ab12
Date: Tue, 16 Jun 2026 06:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781592393
