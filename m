Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218982E5B2A
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785598235; cv=none; b=CMzSCiZEjJwzudfevB8UIDWuY5fOW/IpVZGaGaFbeTysNdCpdgVaMDBSNW06qWnxe+ReFam8piEzCucVXs7nqRw1XXfuVet/ybhOBoYVKftQ7RZ8ungtRbFOhVyHgVD/45sufC9GdUpA271OSE/G36fK090Z37PF5aKJr+M4vaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785598235; c=relaxed/simple;
	bh=YJrsr6rosXrVnEmm6oaJ1zH8cDM14Ki23+unpf1yH6E=;
	h=To:Subject:From:Message-Id:Date; b=JANCL//v+LARaV2Y9ksgXvfAMQXtSGQBf9Dgh8nV1Ww+3w5aMwEwZp88g3zdE9jWYK+9CKW9XOEQoqdQXPw/nUYTES4G3D99jzjC1Stm96v8GuFaZEBEX47dMwWC+uXpRYQBJ4HTHWB5EWJzQQroH2Cntx86a+g0Crn0jtHepJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXe3W/sH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXe3W/sH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6B9EC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785598233;
	bh=YJrsr6rosXrVnEmm6oaJ1zH8cDM14Ki23+unpf1yH6E=;
	h=To:Subject:From:Date:From;
	b=tXe3W/sHjHGOheo3k/vD8YvjFjvEZSk8s8yotBA38hlW5wsfZo/aR8SZYaJm54Cmr
	 /FWL7FxhHhLddtOqSsmmkuux5kHu8ytrRkd6EPloguyHQhY+cDw1zMBuFS2CCAuRHU
	 5PRXbTHP/udo6qr27Rw1ZG4oAfykXShK8qF7bSYYYcweIZBmDPTtsVDvJb3iPBiMVX
	 RJC+no+M9o86t7DmpJyvmGSOM5eBuB5r8Se6UvRSsH9CU3B31A9eQLear/joA+w+e1
	 CEfBKRYdzHT5LpJvhAEeuuZPhDmAVtgLjGsFxCNif9DXy175/EqkBmI1bjOBo835mk
	 YdzdNZTlWOnzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB26DC55173
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178559823368.3223.5327368047713137482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c64dae6ef91f98a69170f8ed6d62901662442bd36a912d6d1c468b09c7b960eb
Date: Sat, 01 Aug 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785598233
