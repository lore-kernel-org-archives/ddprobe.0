Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6761B3224
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 00:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713919823; cv=none; b=cfDq9CZQS/SaZ8AI8xyZGkHmMxkhCfvIvffmDSZ22R5DZacCrR4mHVQmFyRSNM+c98c8draIoAttv4Pf/tEOmOZrWGGpxj7uvV9aaTHMiOpF7V8M4k+JbHKoNUctUoNdP0vdRbTozTGoGjho9WDIiEFtJt0QWk4aJbIYBEzMR6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713919823; c=relaxed/simple;
	bh=Dva+Rvd7IlhTmfqc1PFviJfqDObqTGY9yG3pk+q5rtM=;
	h=To:Subject:From:Message-Id:Date; b=CGw2Ju2kCWOqpr4UqSL/wwSyLxCB1Irn+WzY+nKVkxiRJ5DvIjCGgW1MaZgwOujDahIyfbidYWBZHsrY2zxySQkHKAAKNCCrdQ4oPtRaaR7XPve3TEwWWieis68Z6He0T6TR5qnZBx6rEnM6KC/PwmKicGqkWLISkxLXuZ407+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJ7RMA5o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJ7RMA5o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1B75C116B1
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 00:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713919823;
	bh=Dva+Rvd7IlhTmfqc1PFviJfqDObqTGY9yG3pk+q5rtM=;
	h=To:Subject:From:Date:From;
	b=nJ7RMA5olmWMwJbns/pgB4mk2ofAgyuIqkcZx66F/4ScA83t99+Vge0w08nx/6l1g
	 /2HysU86tOxtkAp1ubqfshuBmCrgImtkuxAFjJYjGUyKWpDZp5yoW6e/TI0h5uv0iE
	 0qYXHOBTyxuvgTEhme7nBM24xj6RqWs6up32TWASv0uXDwRsp+oYNUd/Rm9VRkhHmc
	 dZMgyfjGXfELb2sVO9S+LRMIPvC8tUYymowwHfgfOG8VbcfdQq6DwlFEgXRHPl+tA6
	 Q/ai8AmnNSZ3lD72AV1dXWSUN+TCnywhSB6/Wu6U2t6vVGbThl8TKH0AGCSf71m0eE
	 bK7KcOiGlQ0VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8600C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 00:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171391982284.10351.13228568507077513483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f3e0ff59271b90f882424f09a1e4db2f37d64e281f023098f0dc78f233ce473
Date: Wed, 24 Apr 2024 00:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713919822
