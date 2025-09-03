Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F58332F744
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756877994; cv=none; b=YrLjIWD9Bsmv+w6hQqhATsIvTBZNhj/bo/S597CmLXoeBJK3AOpRoZnY2p/tt2f6IcsvM8zUqAhxjaSXyYqdmb6mQbMgMuWfwd03VPzLarpdrOaNWtPhUpVyscbIZl0SmXQ2wQti45Ob9ovn02oC7r7WA7i+kNOaSFlvw+DUuOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756877994; c=relaxed/simple;
	bh=D9iAXq1gTXQuJ7YgT4KcV5kKce1KMD+2ZrnSRfBsdAI=;
	h=To:Subject:From:Message-Id:Date; b=mfVICnhbg5xyp3A3m8mQVyYinqGwYkwvWMSOTqsefn4z4eVnyaMJ7TxFei7xNA1viUvnMktF/dDBnJuRHpa/yQ4Vs5swruSU6peqauJNotxQTU5sCImRCIU5ADetmsUmP4kb8k9TskhwXuD9SXTfCP3XWTd9V+3QLK6bhta+Uuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LBpwlw6R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LBpwlw6R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E27FC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756877993;
	bh=D9iAXq1gTXQuJ7YgT4KcV5kKce1KMD+2ZrnSRfBsdAI=;
	h=To:Subject:From:Date:From;
	b=LBpwlw6R+9tlCW2mFQTz6l2JyCsni+7GCwjqvYjFoulvz7n1ZVJKMVQkiHIWqeBiv
	 94i/X0tmOyzt2VKOs/LK7rb5/2LNefhqfbA5XI65/uQIGfOA9iDT0zagmd9eCvh2Gh
	 sf2sINyBM6b9q67FjKN5Mxc+eYnhPntGKwq9cjALkYVtMdpxwfSf9xWWeY3mst9vvf
	 KarZt0mgn2nyOKDv263AqoYX+PdWHqVOL0W/1y0gazZCR0UnLoWd12OBRe9RRgCYjP
	 JD4RidtPAKyDK6MzZgnpDN2C4EYlvwDbt62icA+S1NZMW7E7OA+rM6+rgHGPVxOq2V
	 aju5rfb21tDUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92203CA1007
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175687799359.5587.7861560966119579973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c76c5906baa64c39fca9103172ab7c749c1251e8c56da860bb0e4b6c43b1586b
Date: Wed, 03 Sep 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756877993
