Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DF9242D88
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755386394; cv=none; b=NW2o+aiMERpsbMbfOZ0ajkwuWX1eAag8c1b8pmBDD16na2vzsq58k0lbn058HfVBN/C9ogpz+gKwx2Lup29lpCIiImM/DVXObR4f9yQg+UZ7MUfZURdgu73v/DumixUa6a/yHzy/KbVUXDbqcXvr+4zHb2jHcglYeUwbxnrOHyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755386394; c=relaxed/simple;
	bh=JG9pb+LHx82XUc9RZleW0fwWexK/lAQwu4nvWtZgNb4=;
	h=To:Subject:From:Message-Id:Date; b=sv0shkcKIknTWfHi/gEfsZ1UdxjnWLtQZPQMDnP0IbpFvuHwIscXniREcKJ3sMcbmq4y9eb+a84b0o9dldm4Hs3DhQbVMUSlND/0DHl5v2xe5VFP7zwnp9Obbb22Qfw6xFon5EDl4mfITXBCX50fg6kZ+U8zbD7d8Hz0FwsmpuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hs5WPDQ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hs5WPDQ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2059C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755386393;
	bh=JG9pb+LHx82XUc9RZleW0fwWexK/lAQwu4nvWtZgNb4=;
	h=To:Subject:From:Date:From;
	b=Hs5WPDQ9fjrjLHvAQlF1wVuvDq+z+lphBnXAvj88Dg8v7/2DYTolMiatalS6YXox5
	 CimqSPWOGjn+ius8G3T15Ek+0LAwHxSl//u7gQ2xQxv3Tj0II/79SvCII2Z80xJwE7
	 xt0NhDZi+d5QHywNCneWD5cJXVxOUr1/9XpLqxAy5e7JTb+rFTXJ/s7NgSy83ATNDy
	 yCoHKntlqNb9e3I2olpDV1nOmiyeeMuziR96BcGwsgdq+jSbbsfEchBUCqsIozgbb8
	 0KX3kqTZ4yxCoHyDEm46XyoK0j8dxgJmYsdMyokwnNZM5yr4hibhaZ9I92Ju9MoHD2
	 2z0RC3xy5e1tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929AACA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175538639357.5500.6092502843134791739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2c9a54375fbf6401053c525752eb43cc9b95a5d3483a3ad6cfd24b59936a5d8
Date: Sat, 16 Aug 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755386393
