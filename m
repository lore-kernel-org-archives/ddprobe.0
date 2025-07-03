Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25256275845
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751515194; cv=none; b=l9lNU2NRRUeFUErKbjHFel2baN306cAdBRI7IJlQFpDSMom1mfU2AoSS9cAzif+HmRQXQbYwe/OJlKp/23sYWQiGp09dQ+ItcAbpvdOnSJWBy2dyLtz+anFtJ0CLHm1ZGtogZNSHXXa9XJRe9CZDkd+B8p43oQYfVCFWxw4NcWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751515194; c=relaxed/simple;
	bh=pq0wElAJo1q21CgBTal6EXqDcx3XbPKr3+NaLQV0J8o=;
	h=To:Subject:From:Message-Id:Date; b=G5SKTwsmtiVCz8Jf6nFpSmoZjCQvsmJ66W9bxtKtx6BTpXz3Y79Uqcv5GD9ipOa0gnc1H8Jhh8skdpx1BWAFPcrm7+XII+o6OvTbHSLsmQ1HSloSgI0u7sodGW3D/0Qkz9zxckawKLqRQOsa0ieENRvHS5e7uB2HP1ACFz+9F9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQ+Mjpwg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQ+Mjpwg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D239C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751515193;
	bh=pq0wElAJo1q21CgBTal6EXqDcx3XbPKr3+NaLQV0J8o=;
	h=To:Subject:From:Date:From;
	b=hQ+MjpwgqCApL5ECNpn4b4LB5Ik0zrx2EqHYTTMhiVBbHbo+G9ghGbCjZMPeghpWO
	 jl2HvxovTp+QH/0WAYEalsFFSDEpLrH211EtM1bwryI9IC5tQSOSFEeuIESdqHMVWz
	 gm4upsyv4k4aEY1Gk325I3Pa/DrdwLi095LhQVYQVuodyimaGb+VAqQBTAQ2NHbSYx
	 ecY0BkL9zvUQ0Etsbzm/jHSptQZffG70h8V8XyMOHzboyNh8y5vrbUXCrXWHXwMod1
	 JdG0WMTkqnYBdvJQHxHXg9Add1CJr/qM4wyUnN43XPDdOHICgp//VH0MdNOE253Qx/
	 gpIUQU/8T+nCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3F4C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175151519357.31942.9190486867724162820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a17fd5bdd0c5688c945c8197a8ec5c616d8197b6bea7fbcf8e2aa0a04c186b3f
Date: Thu, 03 Jul 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751515193
