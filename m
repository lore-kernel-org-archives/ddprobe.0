Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC4513C6A5E
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 12:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776084454; cv=none; b=UrUI94KRX4ZSHtbK7L6YG+d5jAvrb2i4K63lzv+rlSOFDGgcfNueNVRigKPj3N9XQwiOB1sc/oB+PDdTf99LbyysuC5TeRTEmWaQNgBYVGTDoa0HjrE77MII9ZjF9IRtj6f9jta6yWp2E0bsM9U57hl+iwbiHI2QhLea+zQKVOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776084454; c=relaxed/simple;
	bh=d2bVNrfzjHFrKlfiur2gub0i/GZtC2mJDbp5Cg8QW4Q=;
	h=To:Subject:From:Message-Id:Date; b=aZnlKyiaZqTAaS8VzFtfshGeldOuH8p+hv01TlpUxh7C585I48KfozOdYkGIJi8A9bD8NYfUAlUwmIwB+8iFa4EiQbvMLpA0Q+yis4okP6ueAiW2Qa9GnSkQpWoZy4i9qP9V8TowlTx2k5scfg8j/izUzrScwkxsUlWVo5U1e6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Np7Pd0Ei; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Np7Pd0Ei"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB8D2C2BCB1
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 12:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776084453;
	bh=d2bVNrfzjHFrKlfiur2gub0i/GZtC2mJDbp5Cg8QW4Q=;
	h=To:Subject:From:Date:From;
	b=Np7Pd0Eirvom7I/it4FzN/bXb2zNMSv81HOmUb/Wwzgnh9grnO+I/oc/kph8n6pGe
	 WCl67GdrsmTcHx6brgZJcIdjyoS8nP/oC9fSMkt9FnLs/yFqJIZ0J8SB2XzZrmF0bv
	 OQnsYuj9MYc2xSfE4GVdN7++3CkxefoduEKD7MSTBPnE6CbAuXFoB5ndzQvvG7ojr2
	 HayzT1IInc0yu0m3OPlER1Dx4qqlfi5hLnMhJm1ANIjEqmmi6EG+xBSUXyn6SGkqK8
	 dJgKYm+Tbn+D4OgYyupFE6RQXJn0BvhZEgD9rjBQUycatsbf29uJxcZmbP1yEB6Bo9
	 7kPMe/zR8UfAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC86F34C50
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 12:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177608445368.12737.8968426245003772037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 177f80d6ef52653e7e69757e7b0495d8e0552a5ad47fce8d3b5cf13556f4fa5f
Date: Mon, 13 Apr 2026 12:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776084453
