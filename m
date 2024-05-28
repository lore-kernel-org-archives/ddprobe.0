Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4E217C6A
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 23:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716938063; cv=none; b=Cez9uA9hKRC+dbqb38LFIUWW6UwuK5NHGCsCpsfMffqgvQhKGqRQqqORIn5cU84QFWJ24biEOK5irniyLTWUJTMtM0zhWMQ2MhfFcP3vkzvEJZcttAXKFvItZJ7WT+6uWY33fOpHRHyat3EsVf/4u7wUNhnquh5YD9AUgT7G49c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716938063; c=relaxed/simple;
	bh=0fW8IuEqyv8q18OZWtYANO9TnsZKw4dECYIrlea4E7I=;
	h=To:Subject:From:Message-Id:Date; b=RDCDFle8hEmsIYJQC3AkbXQpL81zDF99R+jrtfDD/gU2QPlb9gbBQNmwTPLwXNsDTumPv/KWAjy2oQa0aNZy+4UkR31SYcwmZuankk7XZioT25abv24l7LrQipIpDXhaKx/crlKah/7X9pvVd1luBvu22LpLQ1joJ5eiFI9iy3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N8H2o42y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N8H2o42y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3513C32786
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 23:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716938062;
	bh=0fW8IuEqyv8q18OZWtYANO9TnsZKw4dECYIrlea4E7I=;
	h=To:Subject:From:Date:From;
	b=N8H2o42yBQHZk2t3dxoir1NzTZwBDpy0AppeS7RfOU4husjsVPV59S9DWkuLimLFx
	 zmYelL5P3pTb3GG2vjEzTvrEGup5ktNbqSjab+aF6+qh9azP0ac6qxUYzPJuPBGpgk
	 QN4waj0pc6E2UBc12YF/8o3n2ooW+7ouH/N8fH9EmcwIcr+cXLI8jw8mHY+bShPPiE
	 N5kRI1zggRYGFrD4wjbZ+EobY3IKLmOraE8m5uUFuIpuD3Ngq9D+RKQE4UFLU9VdKI
	 iQGJwkofCA0tJeSeyzVnA0F6+D2tAZdHi6tF4ryjEP6PlZx5ruJ0FycDQXk3dOfI84
	 gm3RAiktleRxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2E65C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 23:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171693806279.19255.15228742647771509908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9108fc7210caa44592a3b824e47ced224555a366fb70f7d685570e7d7d0ccfd1
Date: Tue, 28 May 2024 23:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716938062
