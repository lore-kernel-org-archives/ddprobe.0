Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0208E3955F4
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 16:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784738975; cv=none; b=Rv6hBrBxiS8WHldl26mdcyYvwSfHdvo9TwzzYwa4cGa5+9J3vuWrF2NgVCDpJzONro7kCbV/Vyl//XGsNymASDEblXyocsNqZ9e9Sb7ABAQzkxxjqbX9abgGmLD/EP8o1ozd6umq5psJuYxodwjT2jV68EuX1+uO8J5QWchZorM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784738975; c=relaxed/simple;
	bh=y7rYP5wd1kp+wTAPL6Z5+SAaXgz3PTWRcnEh5w6CTg0=;
	h=To:Subject:From:Message-Id:Date; b=m1x43J3B09nL2ppexj2ExDkmofm0anmfFGDYW0aU2UEgBPSPIkYVxpXkr/1H90x2fUV8AXq+CrMWGVFQSI6I8LMsP0RU4iYTYX+AvvR7OCB7a0TD8IiJFQanEk+cTqPNw0gjRut6hjJRyB/qaxKxeYlTnIMxbA2BXYQH5UawajQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RrYmM1kt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RrYmM1kt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA6CC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 16:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784738973;
	bh=y7rYP5wd1kp+wTAPL6Z5+SAaXgz3PTWRcnEh5w6CTg0=;
	h=To:Subject:From:Date:From;
	b=RrYmM1ktSzDCkPajsRkLNbs2x5ZgZv6mJIurSbI9jMSHTsKNcrXwBRADkKOJRofLt
	 VzIrsP9l3QoPDMjusf+lkxamWV72kKJe4XZY5tM7eRP1mtH/OY2OJhW5xeLZAcsX/O
	 cIbVcxHsp0uKpqqy1KFpyP+5vyUJRY3QTM7BD9aRt83zBoKnWeKoqqGSt88WxADWP7
	 DQGzpoyH6w10ui/pO/cIzCMQIXIgdFslJqOby4ZDlv0fS/1qQdBgZQMoiWrXhBLWOD
	 UDcgAXtKLiFpSiKCNg6vf4CHxp9p0SDQanP3sT069WsxUNnK7yxOUBKafRGgVRG1ww
	 rMtzKJDpgreHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D4DC4453C
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 16:49:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178473897368.22719.12613930298921295981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bd219b82761e15fc5d2ba48fe9923e00f02483fbf4326be3c5245077345ee72
Date: Wed, 22 Jul 2026 16:49:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784738973
