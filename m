Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE871C01
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 05:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784699914; cv=none; b=R5u0o9Y6Zml2mv0PeXmSSwsDljfM9/Usz6hI3RZvE7lmHpSpsq7OOAeJHH2K5DA1dacfX34g8KqLMVylVaU1kNkVyhKW+wDENsWEX3t4UR9ZPVQGjHCZqsgb/S7Pc8k1HO/gqxpUnu08EKiP2xfJez/DuxhdodgdsBSwhmAoSoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784699914; c=relaxed/simple;
	bh=ArtExJI6zhDNfCUIfueuANfQoxNuGPBlIsmJ/eFPHwY=;
	h=To:Subject:From:Message-Id:Date; b=V7gG95Gey6CeycAZIL2tiL4KROGngX0oW5ZnhZ9QY2FRATxaaRqZQOCsMXkpNW+ce9m5Vq8s2Imm52B7IPEtbyKbChozf4oAzs1t821HFXCnNCdxRb5qjfGINJuSYlpZKl6E8uxpL3ZMbQLhBcVYGYRR7weWTIrxmaxuYJnrqN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nVW9h7jM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nVW9h7jM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D65E2C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 05:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784699913;
	bh=ArtExJI6zhDNfCUIfueuANfQoxNuGPBlIsmJ/eFPHwY=;
	h=To:Subject:From:Date:From;
	b=nVW9h7jMSv1+RJwDkBVJWmuhOTlVDeWXjvHBQkz4i3ex5HhzT29Ql471h5NWJYv4f
	 oWJz0wRNsMOJCrdF/9Lapg+er7yYfvboTcCKVKRAJfArffj03vfNZZqYOpUAYSI2kU
	 CSp3e5pDzl0q0Usu0jYCLCSzXy0ZdfO93R0a3lub+G1pn7hBAgzA05YLpp4jqNFnbw
	 MIuyjdp9VaP2td/GwVOoxIe5zNcLY6Xlk2pXZoD1SnD/bkQ5to0OdPqeysTtct6Sha
	 v7vXB3s6taw7qGyvMTNwjeg2d6Uia9fTmQwM8yP1giIPfC0Gen5APVbhfv9iStwsNd
	 OdiSw24kgsnfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C37C44512
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 05:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178469991370.4207.16220493032616374152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ac860c391d61b30a45d81466039756bb6857e6f4e3e334da86a8a5327fa9727
Date: Wed, 22 Jul 2026 05:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784699913
