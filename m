Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B00AD141998
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706770696; cv=none; b=GqolUBhm5Zb1YQuf0YqaxdMQbJci5eaS86yCucPwFO2n82PTH8QoSbC95nqBAprx7CQc80J4/7U6XFDcF1wTdouz57404ThFrHMF7ZTYLY+fZPsgCty+BOpetEtCW2LlnqSc1hIEdr8XK8OYTMI+TXCsnV13M6IqtHtN/MHNxzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706770696; c=relaxed/simple;
	bh=K29x4k1CXBs513qJ1pgEf4hQQeUexXZrl7V7/78RvWQ=;
	h=To:Subject:From:Message-Id:Date; b=X65//Pco4e5NugqkRBm4abymTIsqchIqF+NNk2jWZLUnCqYqtN4zrFdAo0Ix9ScKY18ZoGBn7idL1lDj4ShMNueie38odpbjs8+LVA30L5/IljnBfOCPkYbhx3I10Q/eKClDOb1rpqC6CdCDWFqm+BoFmeEunW0z/u7rxxw0WeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t8RhAeZn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t8RhAeZn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84F57C433C7
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706770696;
	bh=K29x4k1CXBs513qJ1pgEf4hQQeUexXZrl7V7/78RvWQ=;
	h=To:Subject:From:Date:From;
	b=t8RhAeZn66TqOUBOQ2/LWN5CIliY0cz036Vh9okQhwlwNtjs3+TPFs9t9xpSbk59L
	 AgzqMCuj3bGE7eQ4PWVNlFXbYdgHApPAloQyjP5fiA3ExkGI8Wxm+OsxLOyhORLS+V
	 F/T966kE8DpSbSRQKVQrdf9vK4XOrIWrCJOUnvswZHCbBOx5zNrMH/F3v5MijttzxP
	 MidObRihb+176+w7TuQ5xHzpF+ZoDhUAMuPQkZFI3gW4UDPELnjv85I+qLb8wQxFbM
	 cLK0gUt6zcWxdMaP326mcCuKefGjw4ZMBei8KN4wEkKK10iBC3HdY6HL/1zXYzLG0a
	 DozT2U7fxqncA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66E5DC47DDF
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170677069641.31001.7846263117333863522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90af5f321dc45ffb03b8ed90002167ef6734a658e1d82b94a7cb643711f0e83a
Date: Thu, 01 Feb 2024 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706770696
