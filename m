Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8661BD00C
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726670754; cv=none; b=p90j2+6HJLdjYPCzipjOrG4HDn0sN2UiftpKPGbityShdoGYDtPDW3+dytFDbgO5xV2nTsumDH5XFnf5CNIZKdlB9IMBd0IfqXD7JCxpR/IKN7+HlbnhzNBOS2Xp4vuOGb5owaLy5rDO3rkA+S0jLGpvPqhe8cCv+BJW2i+/m0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726670754; c=relaxed/simple;
	bh=CJTBWCRekk7NnQHt4z7hfuHHeCVbQ8/HYTvc2rEYpck=;
	h=To:Subject:From:Message-Id:Date; b=pm5eXf6HIMzy15pqqtTmOKkrELJOiIPogcMEe2/FQwSENzOfAOu/IvizEMeNZD9FNPITzXO2NW25Op1M+7WL3PKY4OFlPZZLAld8eVkzzzRCVfBNF6LXOu00Hf0o3Fat6qZ7mq7a1hAsWou7sYnKGQ9yjx9ur9SyHahE2mgYz/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FNHGgAeO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FNHGgAeO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51AFC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726670753;
	bh=CJTBWCRekk7NnQHt4z7hfuHHeCVbQ8/HYTvc2rEYpck=;
	h=To:Subject:From:Date:From;
	b=FNHGgAeOFjxKLcQTz3caxqFIe+NFY3sA92BqWo6iV2FSHw6enFDHnyvni80VeEzZF
	 JaeuXVF8iHV49AumcsVdoWDWlIemfYtm6qDfxVktJhfPzI/NbY58dZiCF4FXjAbozi
	 7f6JRggwfjyn4BsGpN88NNWjtfiq4C1GpJ5mdB3qmQgVDfM0XTq6uzuA51sx5a798o
	 0EIbuPK5olrDtVa4FTpFbzcIv4gRjh4cGtaJlxYIra/eUis9x6bkjp7kt6/waX0w17
	 7sZlfy1qZz0P0FWSLACEVZee1r6jHdRYQ/kgna+hHDd5NTaqL3NmnAFGNf++dKSX9c
	 frEa35wk0Uicw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9275CCCD1BD
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172667075359.30135.5899187498082902691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b24feec619b39f079c52aae701e5e8e7b9289bcfb21001d203eaee82bdcac45
Date: Wed, 18 Sep 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726670753
