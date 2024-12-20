Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2277521CFEF
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734715554; cv=none; b=Hu6Swo5SQukJA1NDSixdEK1keSLu6fgUezUifnzICc/gwsjO0QzeIvJVFPfIcN/ITfjzVRJEMHr3BjGZREY768Gwg5tFwxqBKZjT46SkbMM5FhCfPTs7c17VIQ8/4uplPpVlj+gMWBDNJ2gYLNvn9wpyT9Fhb0NNc79DsciUZDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734715554; c=relaxed/simple;
	bh=/rAVIT3loeCBdaPgF6zCqyuegyri651PcSRyxre1NXI=;
	h=To:Subject:From:Message-Id:Date; b=udw3RoC0V7uhK+frKHPUNksXqxZ/HlVf9x6nropoPCsYlNGttmCBhNd32ENHdkrXuK+rlMDHx6PzqkMieZJWvIld0hWpNQqqeX4rs52dWGnzWItHsKZha5trBn1R/JEyERVfBAE1J5rzh6WNosaT7ZuqdclsW2v9+PNStWamVto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k4chVQho; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k4chVQho"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBBAC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734715553;
	bh=/rAVIT3loeCBdaPgF6zCqyuegyri651PcSRyxre1NXI=;
	h=To:Subject:From:Date:From;
	b=k4chVQhoxNSk0rZszKtLm52l+i2xm+DSciL9Bi21YGkwcjXzz81tg3e409IYKYdwA
	 9QgpVRCYOBRgoBuIpSPrRvn55PtcOGzR9xunCf5xUaTW54yW+Zb+GUPvsJouOmEZDs
	 UTywUNsSyhtK9dSYNo45xwfkWnWyqEvSWw4Gnl11ERr2vDyrSciY00DgoJ6/BIic7g
	 pJwvLSwvRdpaWq9UgZl5Jx9i+F/0EXiVX62WGMnS9BZB1Mosk5HzlFv7tVWAj9f1ja
	 0Eft0atHRlRZ4Gcpw1yLuTXINJ5ICqV/2bCRfi8Pi56DnK3JQRw4PAqW2RMHUMhDAE
	 GBbeGP7zZUPzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D25E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173471555359.2966.10865328569014879972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 225f2939ccc996045a3f7c64acd21a199f10f5e5f7f2aa1a5c76319c5c2688c7
Date: Fri, 20 Dec 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734715553
