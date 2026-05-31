Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388812E0901
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 19:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780254274; cv=none; b=rbATwM8Y0POB1rlSmdXg1/72HXaLsxCRQ9Vg6bW9j51oKZ5bwP1qNVd0kCGtZGhbKCZaGkYt3EfFIQ+4aG9hJw6Xy9aDF7DXMl4E7fxdIvYlOk6EX2MX+A9yq78wnqOWaxvir2tW/ywPk0vwqtqLwCjtvnY+nE87KoRBfCPOvJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780254274; c=relaxed/simple;
	bh=rJL7kZWlwGw0VBIOOVL+o3cKKO/XKMG9BIxZlmqu9M4=;
	h=To:Subject:From:Message-Id:Date; b=CzlsALhmzJpZMgYzcNbYLhzNTnomiRthaE8ksBk+4ksXWwW3s5tXDTquGqkSahd8Zsn7HduiK8DDftEqv5vPDYDiLXXoHWNzodplIEmvfQpAbVeuchfh3Ex8hjNfDXwdoaG6XlL2Kk9ntdPcHXvPkqkUn1ihVLH/fJuMe37tzoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O5HHx7iw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O5HHx7iw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7A30C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 19:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780254273;
	bh=rJL7kZWlwGw0VBIOOVL+o3cKKO/XKMG9BIxZlmqu9M4=;
	h=To:Subject:From:Date:From;
	b=O5HHx7iwGu8Uvu7eUzHTIcjqsr8HguibYOiC3IqvcEN63N50NsqujPS4nJUhfmwic
	 5HofKyQVpj8kq0FlHjto3dGrhVam0rnYvkoCNBRhtQaOxrK9q68CvQk06WntzFATlo
	 zOY0vw/Iyhzw65XJ4zshQfEKdrYRLfOMICC/ZflVZHYnFicZ2kT9u8RWrrVipzVoOi
	 cZFR2PLugIlbRpClMxA/yyCtKo2f9eyDgIDVSbsmClBBLHX8KYpCgkAX8YAqQNT/RB
	 hGDOLUU3yCCoJmhirMNSo51lmkCHqjWyMQI6nRVlr5nIKGNhnCIF/KbSTY5DpfzMIE
	 3av1KEuKZJXBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF74BCD6E56
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 19:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178025427368.26991.16487987039499335071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7f099d7d308d805507b79f2db072e0f27b54627e6e6cd77bda1838397fb352f
Date: Sun, 31 May 2026 19:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780254273
