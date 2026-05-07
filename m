Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2916B2DAFAF
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 06:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778135254; cv=none; b=BdQhb0fB2oD1x2kgpb7n5wxmJGXhjx8MyM/lHsA1aRjamr8wYu9VRphn4ulgw+exOZv3P+dddWgGp6Xt/cjCepLvyH9iO+PMUnwQfH5WkQWsoEsD44sc9gqT1qM+4clcB6tFIPoiqi08brZam83osjrBXeLAfoGdSDdXOcHE1Ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778135254; c=relaxed/simple;
	bh=GFLBHiFyLrzqFkhNUBxnVK9vxbVK0RQhNwCor4kcIqI=;
	h=To:Subject:From:Message-Id:Date; b=ujIEPWzfgeHgY1Hn2gKUepO6ZnctYj11Iyw/FLCs3m5GkNY4/x529tj438Pk/c1QiB1NPhLdBDksNX8cVkZz/3M23f3pb/YyCOipZu5UDJgI55SRBwOgpCz4UsAm97934TnFQkGYBPNNxVla7U8Fw/ADKwyyJu6t9sqntF3dV14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jU65NeXO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jU65NeXO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C13EDC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 06:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778135253;
	bh=GFLBHiFyLrzqFkhNUBxnVK9vxbVK0RQhNwCor4kcIqI=;
	h=To:Subject:From:Date:From;
	b=jU65NeXOelUWvcWKPVuNwTtCKToauKGFhyJtJC8pnUa4dYlVf5duMTxXFu3vKuO1O
	 YmkBxXWakeWtlP5qhLcVAoha/pq+0WfCy4hT8/dx75+EyUiXozBWIErA1K9sWwpoW2
	 EF3/IcuuY13YYUzWdhBOs7qlqEK6HT1j+8+Y4rDrAEwlY6hBCGvIoDUlfWQbWGMQgL
	 56LYlJdrkcWV8LRIdEvvemoHYqeSb+7tAUH7BR9peXH3HivxrAkzhY6PtCsgEWSlxe
	 BbL9AF0E750PdSCICAWmNb8CGHVimRpYzd6X0kn+kv7WaXch74xokxzNIelz08nE6G
	 JTBRTV7f3kbFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE14FCD343B
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 06:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177813525369.9049.9896127366672043427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb1a09de335424a543dc371be0934563a0171ac1967eb47aefa55c533b5ba3d4
Date: Thu, 07 May 2026 06:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778135253
