Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D19370AF4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 20:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780433074; cv=none; b=TLJOY7N57JHKHcdXZMSuYbw6rrW4NssDCmSgCwKjqWXdFGu2H7LC7xAkeIIZI8M7IiYLMSLxwqydSDLbs0U69wdT0docV5ci6mLyQO5fOnqWospczP5vtUf0B92Lx4jYxSlhK965KPa5ccw79KI55GtZHDoUbD8tlwOOC9eJyIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780433074; c=relaxed/simple;
	bh=QpdadFtfjzqCXnMb7wdyXRPWffgCEwi6Z4TNq/7qHmA=;
	h=To:Subject:From:Message-Id:Date; b=ec+EM1gP8PgLtZYQvycI8q2ie1ApYmT6tGjHnYsVLbfKbpLY4G6REG4QsGid6LUQgp+E/KuyZZWK2qkl7z9c/bFanm58Duam1lNovNsALMjt4tq1lRKUUuC0mqPOZ/66RaCihVyzicWyvG2D9mGpaMqhgqjqMyn5rVAeJQgOATg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LaGzZZUp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LaGzZZUp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8764C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 20:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780433073;
	bh=QpdadFtfjzqCXnMb7wdyXRPWffgCEwi6Z4TNq/7qHmA=;
	h=To:Subject:From:Date:From;
	b=LaGzZZUp5N4EviwF9YxWmf8mT6WBWuM1FhELEmBcnpXXn4BWzI4bIshG3GcYwKEAZ
	 qqFXv9mo+SEijWIUHdFgJuPAe1gBtuXObvgE+/RN8O+hjKq7+jUyCWPI3cpS8nRvJ9
	 K5eezbXPC3WBVMrkGhlyCRgIYVHcXWVyi93L6WePcrvvpuDmyZDr7lwgZXtuuOzj5A
	 T10qUqIrqn9abn5BovXMAVUcJP3VQRB2OfMXaC4QHiabbMgK9o/ta+2+dXEZFnlL+R
	 YqGxh0xJXekmRgLPOC6vOSSox9z1MBaNzh/7OMaLNNsCOKSOs2xXtVaLodTT5IPmZ/
	 uqjEIhJRORReg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAB1CD6E57
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 20:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178043307368.11834.13283240483355871834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76a57f45ec071ce6b95cf1e42c05e5e117951fa3dbfe809f5a764a05979692fb
Date: Tue, 02 Jun 2026 20:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780433073
