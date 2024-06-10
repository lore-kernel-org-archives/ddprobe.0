Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6508CCA62
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 09:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718012843; cv=none; b=QeLy/qkQpAU4wkbKGz37KePs9l+0Aq5BLmiQtwu+JeLXGd+wA4mHnLsmAKuv+3SuUA8mCVHDrb/+WXAJoNjuWY9sfPv2LXOW+FzO/D9G1ZLEIhA54BdnsLqaGGgl18NuzFhkIHRJ6qKoZbCoFcIri2w2mhp0wsqjcawmJjpHiDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718012843; c=relaxed/simple;
	bh=V/3cNWk/yq4lVO/CEk7Bvvcmj0lbhcLY/VH7KhSxccE=;
	h=To:Subject:From:Message-Id:Date; b=rAsmP3b+RGPS3JldbzjfTFnj+nuOoyi7ZoxicAUYRnwx0qS0Myezcju6v3zeQWMlutCediXcaqGrpYFpjpnQqOVmwnn0GBxIoqCzcklK0ZPZmcZznUFPI8Fmx1SApo+BQLRS4Ser1+Kg/EIZMMZkT2B+ClRAOrAVCrUUFXNqdVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O6V9rG8V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O6V9rG8V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC5DBC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 09:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718012842;
	bh=V/3cNWk/yq4lVO/CEk7Bvvcmj0lbhcLY/VH7KhSxccE=;
	h=To:Subject:From:Date:From;
	b=O6V9rG8VI2iiLMBaa/JAF2SqG685A+E/BfDVQgMbXFhVl/wYKSrSwJ4EDfhp3aWO0
	 bm22NF+T7nVdeuXuEJp/5ITUOaUI2o9iHWmyscUsf1yghLOXkDTq3D1NE3w1jQAXUM
	 sOtpF4Q7DeIkkzKGRF7lWcf+7U+wvwfaWs4BailrMrnJvF+gT4XPPOvJPKa4hDPtmO
	 SPFGv0DBZYTxbJ9qoniry/mIpzDOKuMiSX3q7pft1cm6SFeM1EAXBg0yzEUrYCq1Rj
	 6MVNE94pfy/RAd6UB/sp9ujop71WMNoK+VohoI2ydnZha5HyQpVjCU77G1XMEWlNmE
	 4jAzsMajOefGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6527C27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 09:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171801284280.5589.1223228703978948010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99358074f26f1bf82eb6f7cd6b9618e82919b20af47fe10e6d3fa960abdf3ea6
Date: Mon, 10 Jun 2024 09:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718012842
