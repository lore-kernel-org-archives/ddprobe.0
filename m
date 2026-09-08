Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62D6335DA78
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788850834; cv=none; b=c7g+03PYgzkN4DXrnE5TXx0DWz+8p8x1MlGP/xan2Pb9UMkCdhRJ8VMiqvMJe3bWb0AXNH83PAWGU/CalOZXOMr74CCZGJkjWKIJWLHUsZ4qRN2UP4vkhWKe7D5jAZsTbQbE+FxQUOPuzH1awruwQdqvjBHBc2QEnF7G4wqbdyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788850834; c=relaxed/simple;
	bh=lhuZWDkY/lWXtyipudRKXCDjDnKUREsAJu6+qsu93RI=;
	h=To:Subject:From:Message-Id:Date; b=WBp7oTQgLlRZ6fjlCxW6Rm32Lxl2HVQOg/6HNgOFmVNheENZSWqlfrhVjj1q7MFFeC0yQybuerMl6awb3eO6joZ+FCZATdmJ0gL40Gx7vsoua67N+hHkxg/GJxF2Zu83zB6GbcW6oijcZflPRHZzsFRp7WzZ7k/fctfN/RVbM0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ud5AZFHd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ud5AZFHd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA255C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788850833;
	bh=lhuZWDkY/lWXtyipudRKXCDjDnKUREsAJu6+qsu93RI=;
	h=To:Subject:From:Date:From;
	b=Ud5AZFHdaUsra2iRS9oaeK3ytfHiccD7ybLZzjsx8iLGkcefAKIpn+rZqs88JbngB
	 VrO3p/16gOuJQig67zTsQDSix+dLuRG3WrL8x+tIY/GyC8Usr3Q73MtX5RFyLEQi+7
	 v+GATQZVn7zapyIeVsOhrQ50fLSt72j+H1Djior7Ud4KcS8bPwSNmBwA8K2ti+uZkh
	 yuOGOwlgz8mEA7mw14sxLFC2I0USPuNKLPbv0tzbAua/m3OGAGYmUuyMNBirhYg0ll
	 XoiE9zXUen/osnhpsWOPww7Mp65hR572A51c7XpqAiCLbFdbCJdMphNRVCkxob9Wvr
	 xt3bCml0hiRKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB3BEC79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178885083375.7860.6160342903472533107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9139e4ef494e9b939f9f1f1eda71e0352a91fc13e652af3afefeeb9583ecea7a
Date: Tue, 08 Sep 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788850833
