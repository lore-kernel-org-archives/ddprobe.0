Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362A681720
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759688394; cv=none; b=Ja/kXCo8bEYjQ/Vcad2p01Ccbxkgyfcg84ize442aC+caPFzpdd1qhE406StsI+f/gB+q/ujhS6XHLuDwjQ/BzHyGl4Kuf+DbN82+bc2mcoVQwNsO/Ps/LpngEPgjpVIgCvWyLwm2q+bfR7gZWVXjUZ4HnoW7w44LOJjtF9s1t8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759688394; c=relaxed/simple;
	bh=RbF4bwXwfEMxPNELNXPLHQh7SPYFI2ccZZt2K8E7tV8=;
	h=To:Subject:From:Message-Id:Date; b=TPseEJTElY95QXmEFF//aZiPt7M0kbYC2u42Itsm4St6hXQB5VwZmGW+QEoePPCN8q8UPfTThYegtpC7BUn/6E/c22HYqKD1kCMukrViQEjRuW4NXZqpK0n9+NePMaFnyD0JQOF9h3po8GzLK9QRiuxhkHYybxXb7ujFSN7CiCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gAa1wigg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gAa1wigg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FD2C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759688393;
	bh=RbF4bwXwfEMxPNELNXPLHQh7SPYFI2ccZZt2K8E7tV8=;
	h=To:Subject:From:Date:From;
	b=gAa1wigg5/FqJzvmiB1YY0gUWtTGf52prQOrBaYQJT6ZY9VDe7/sHXlF6SpkQlyiT
	 mauMLDCWdo4xL0kXeKqcpL0dSwNjlv6XN/TM+crcUXB2hz/8Bokk321eToIQsJJMBV
	 Va+tP52laOEVxBopV8nqgeaoOiYyqobLRDqatGEP3ou2Qj0XCqmjcxc9P+R1BaJdny
	 69x+nvqSn5V0rasycxXn8YBhBkYfp7ggN+dkbZJvv4gwflAKm1YTxmCWpk2oYBPDKQ
	 VybytpjcKSrXeczbPevrhTMrvYfsbFzqI8IzQD9+fzuYQsyLO8pqAXvvqlP80TUU7m
	 91prl2kWrjoFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED4CCAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175968839357.15915.12943710178934624069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78dcaa5160a57387849bf08cee569a84e8d0ebce7c9f57b476282294049c43dc
Date: Sun, 05 Oct 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759688393
