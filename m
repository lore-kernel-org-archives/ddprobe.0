Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8BD341D647
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 22:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790115036; cv=none; b=VXLGhbRm5Tt9Ucp4Um2T2ReUFizSQTK53CtppmQgv+B+arcpboGotHEzPl07gyYZjpQBOXtakTSssTrZL7NJu8BQq3H5skkzb+Ew1T9TDCjr98DS0cSTlnCLkJuPPg3ueqptwPCEP6qVgxaWH60EUPMfB2Mkx2Trh0XeMkyqCb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790115036; c=relaxed/simple;
	bh=KTqEVe0pEd5yUx3+s29nB2L4SXuSpUQgtenjJwIWXrs=;
	h=To:Subject:From:Message-Id:Date; b=gUi1burrvEDA8hKZDMDi2MZig6+bOkU0ZR9tqzWT5RUyteHszx2GQPD9LYBh5lBVeTaOcINNXdkMTQNEFFaXoKz9hR1BUruB2A0t0TU+KF3XwHQJoz86ZjIIGvAs9Lf1er/8fadbEto7CFrvCb2a+uWksfNZHqN5CNuTmIxWdEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HgAQsXJH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HgAQsXJH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0366C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790115033;
	bh=KTqEVe0pEd5yUx3+s29nB2L4SXuSpUQgtenjJwIWXrs=;
	h=To:Subject:From:Date:From;
	b=HgAQsXJHGPIv+bKk2QuTuPfSDZTZck9rl/vMwF5mQebYo9xloRCq5rFxlkoaiEtCx
	 5T1lrcXygTE8v1m1LUttzSJG7wDEcbw/LjWMVvStftqJHckJaGyczUEcsG6VcPImVa
	 /ueh7Mw1RqSpNSpLkAB1cHpNs8Hlpg8Rz1Yy+9vWFcQe86D+MrIFdYUURo2CQOXmpG
	 CsipAe+QWdQP5SY+vgZ3tkPdncuTjM5mY4Ik0y0FoP7feTABX7+qun4ve3Y08dxdTS
	 1OlJSylffXGw34jjfzeRRvCAOpKiXHHAA/DI2KJvCxu90Yimkm0QsnJ+CzARo0xepD
	 amQUnUsquk9yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6A3C98302
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179011503369.8731.13989660976965419224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78104cfcfa96f93dfbbee86c83affa7252b40a951572ce6fd42801efafc31dc1
Date: Tue, 22 Sep 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790115033
