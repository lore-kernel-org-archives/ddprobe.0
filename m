Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D96A26A1BB
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761200994; cv=none; b=Lr7niUJ+HW/j6qj+9LvOq9s7erhj/ODQY69EocrOPm1Br7j5KnwoMEiHKGr5Yvb4IFPBlTN/skRXxi7BJ329bwGRbF0X8BsEFKW0ArVo1KU5M8CCSlXGfNttfAgYsC4d4pIvURuLo/z/DQQwWZYUFYmWDpUnQwPfTF+W/kHV/dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761200994; c=relaxed/simple;
	bh=JrIA1Xk6vPobdaBRnr4CeuQHGaVtPpw/YY5o3ezmcUA=;
	h=To:Subject:From:Message-Id:Date; b=MrA29ApIu2SxYTeDZOc7KA4vJApeZXvYuOGyj3b28V87hxic11D669fo2q97E6/a4BXO14DQ2DjCVt//aw8AUmLsq+0NIw/sIiY1b49RpjcpcBdgqze9+2OirQorVAkU6UeFkTED+5E2bec+BDrlD1O7mljDabHvOwVrLOuZQpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d7uQ0hnc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d7uQ0hnc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC58C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761200993;
	bh=JrIA1Xk6vPobdaBRnr4CeuQHGaVtPpw/YY5o3ezmcUA=;
	h=To:Subject:From:Date:From;
	b=d7uQ0hncAK7pRLKy4e6dJPNrpFeywj4clp+UcJo6ixva3KsO6P6AX38qWeMWLGrEg
	 s4vAep6S98zk3ZMYINyjXR7tbWIMzItN951IBDCuUUkqs68yVO2Hk0+37bKWEC836Y
	 rFAZES9dbFQ5mAfOLvS+eQHdzE1PjKUsLpkO1C5pkeFeBSMjqdih/QgyyXPQqUPS9Y
	 b5EA0xyuoyOQCR91NNC3rrott1mdxggFC/kYIQged1mfufUFWmvYI2wMBApPAYUAVd
	 prIQqDS+1Ku1WEc2kK4QiCnsYTTR5j00Kjf9n+zOinfULaEalosda58KZeMhfzs9Kp
	 XIGPbr9V2Qw/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A52D5CCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176120099365.32263.17000218630461370292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 144cf3a6ffedc2c9866e240164a13c0cdb6b5d621d81ceb85b22eb7cb6c62077
Date: Thu, 23 Oct 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761200993
