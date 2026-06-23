Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487D239901C
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 06:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782195394; cv=none; b=bWPZZzp93jkF/ixSHsxfvq0LKowYhg/gcXeudYUUngol0ftnAwV6BpTyOXeZbebWTqqZH0WlWzi/JbnA3O0VbQLMJvjAILiUOwQtG8KKpQ//ZZ3CeRXgVk06oeIauKArt6NuElcTe67Tj3xBvtPamNLTg19chZFTlPl5CAYy5+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782195394; c=relaxed/simple;
	bh=HH7beWcM/cH1IKWTLTXIWrVrd0pJafglAhxEg2xGJYk=;
	h=To:Subject:From:Message-Id:Date; b=IYsHbi1HJ2SRyl9AZVESLsGP5s/iwm3BelmfUqNfcAMDtHViv4ZZXWQhjaDwU72g2hwpyrUBaHHqQVkNwkWfhJpWiteImZ/4wuYfAmqfKaRzLdBLdxZenHI1HKJarTKypa/cbN4ApL0XalHJqlj6q+SxIEaQTWBJ+joz2FGPgcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pwXExlBo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pwXExlBo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1A9BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 06:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782195393;
	bh=HH7beWcM/cH1IKWTLTXIWrVrd0pJafglAhxEg2xGJYk=;
	h=To:Subject:From:Date:From;
	b=pwXExlBoCO3EzRH8DxKlu3HhwF5BRQh0vBS3+7MFStxKD21hi8mUJLtWWrHR6As/b
	 j5TXbvXGrU7Ijaaieek5c2xPEtdeBgxAmDYgyEqCRh0a6IUZOisg1+TplHUgWL6A9a
	 nMHJCr/deTIDWMT++Uf+yrksBZyJOBLFi6fqokHmP8nf0fKpReUJBWZfGcHggX3T+a
	 j4Sg5JtkAxIXg+C0QBA5KdMybTCMh0NEZnhzZxJ/lfta5YFPTgDq+wGB04kFZPH6YW
	 K2uvDjsHtwlIT1tCdZRE56PZb3c8PfWS4ySJgAVBgvjLGgpap9ltSK/QO6oFPnYIda
	 3WsUMTeu+URnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3931CD98F0
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 06:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178219539372.2194.1911680907162385141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ff1e2e036ba5498c30a9d7c0fb52937abb11052ede564ae95f96ac4016d6e8f
Date: Tue, 23 Jun 2026 06:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782195393
