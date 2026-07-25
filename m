Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C9E5318EF4
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784977234; cv=none; b=dMWFdJ3PSzQyA7ni1unSjWvcdLJlaYi/a84ubkYyuk1CGbitpkNTcvD/bnmdotq3LXFPSz69rEb+jwg3mGwooEucGgvqbxdig4sP2UoWCkZ72Lgy/+Q2pi3sZQHiBJ3k1yor3Dj1ZfLQyw4iFMskWyMOo1lJisA+d+vLA3wSH0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784977234; c=relaxed/simple;
	bh=cxxmrbZcsV+QWb5nhrc9qalNyygTz7ALwH7AFThgg/U=;
	h=To:Subject:From:Message-Id:Date; b=MC5tdMYTI+Y9PLhp9G8PRqspytirBrpWFixUmGKlFaSzNTyrIrx4H+byWKSCl9mX+ciEJeSpbiGm8PcApT8FLrIc+JtOf1sKH4n1hoZgGtwji+WX4Kpk3LgzTKf4JUpLbYlH6MN0GNizRGQ6ZK9EpVnEO/BF9IrpAxzkkDPmxaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4cObgiD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4cObgiD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8663C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784977233;
	bh=cxxmrbZcsV+QWb5nhrc9qalNyygTz7ALwH7AFThgg/U=;
	h=To:Subject:From:Date:From;
	b=C4cObgiD1OFs4utt6fitnoaMWc9NwmayKjEUti0dN7I/BO091A/wwCcL5ZpvW6rSu
	 kRfficfg2TEo4XxbmA8m24K+2/yVfWHzqt6yh/0EKipk6kk/+GRbrKrX71jVdN3+TF
	 2cqkdkqrvu3s9ZSUXtp/dGSLs/uCEYTZccyZplwnNIj0maMuCmVq6Y2hZOddWjF69F
	 /Za8O6z20h75m8ZIcwT9H+thvzl+i72bP/pELE9eqBytrlt9/MkMU8Kg/8VjWyv2K1
	 cPfqiFZoSF4kHESjkh/NM1++9ERb1zcSrF9T1GApBASZ+V+H+sukJFfQxp5W9KZkC2
	 VYNDXT8FLdsdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD205C531F9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178497723373.26148.5787585456683703615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 737d552ed2aa6c5541b431fb69569f14a85a7379565729254a4357621cb74995
Date: Sat, 25 Jul 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784977233
