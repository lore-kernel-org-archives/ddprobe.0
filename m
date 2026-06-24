Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED1CC30C630
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 15:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782316054; cv=none; b=hYupsaNwupa9ynHwDHohCGNClAWZQ0GuNYU2hfrFm5kG2RLe4SPTruLL8M9OMTjpWmqm2n6Vy+hPzmf6FtnwvBbjMpQFuh5l12jhLwkjtbikRflUKbqLb7JK828S+KCDVWjKjT4NRSifwSd9i496V52Y288HAQObXs5SYqYEYGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782316054; c=relaxed/simple;
	bh=79P9c8zoz3m5G7SnhmvMLbxUeGZvvqV2DhHrRfTQUqs=;
	h=To:Subject:From:Message-Id:Date; b=AMo6Zg8UlwKkgXdvMoTHxhZH/qCpoduRBWnwmgMDM4misQ7z+FwResUH2b5CuMPpavWp+FF/qpvYAkBtyEFOMMtIaXW0hp4IAX3OOCIT0VI61/7jeh5sOT2WmqAhAu+jX4bEGfIUoi70BJhq/Qm5NNVxvdyBfM5BYeWdLoK9Vrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jwhRW93Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jwhRW93Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF962C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 15:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782316053;
	bh=79P9c8zoz3m5G7SnhmvMLbxUeGZvvqV2DhHrRfTQUqs=;
	h=To:Subject:From:Date:From;
	b=jwhRW93Q28Jk0rUcTY12UmgT42XtpMLcD4tP5dXd7Rqm4AX4lbZf3YQfJUyMeC+O/
	 JU6SCbnebcT7kstYXLwfa03Wx8ADDBkfvT4uhvdOpIQHz8KUWumOyOApYnVJCMt1WQ
	 HPBmdKy83N40yYGnmMYPHZ+RHNHrMTLaadtuYEE0SJ6gPDE6Jezce9+jhOjYrYMI0g
	 NDv5dPRtRhx81YGDTMhE1MxJdnzuhj2Zqea8uXZ3idcYw6hLZdYc1EAqnXGkCpHhr7
	 a1Ai0pGwWAPG3VyqB/ML/5fQ0bJCfwnAUc/ZtBHdvgh9mDAiRNdKxp3qGNApNsjrtz
	 QKtGXVvWyWsZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7FEDCDE001
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 15:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178231605373.16545.9380320435886729342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 833986d0d50d54d514176d4b31c7483804a0581c240743b8d37ec1ae7ef8e8de
Date: Wed, 24 Jun 2026 15:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782316053
