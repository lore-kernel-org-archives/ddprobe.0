Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F6D3EB7F8
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 14:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782745114; cv=none; b=GEmwAAaFeBhoq9L+rGfdyrBmywtXbXcBBqj4P0rlcGYvL+uyw4cKT20XdeEJbDJHal+9jHW+E4K9bFdIwT23RPlk+lSTLHirZl8B3g+Vi7dAcpAobvhdt4QUbyj8ssLmecQPuhyO39LqZTjt+QJhw+N2nBmD/oVLrv2VBQItrck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782745114; c=relaxed/simple;
	bh=Sisa5T3/rY0kVk1KdxBma72bP65S081o/OBq3QtaqOo=;
	h=To:Subject:From:Message-Id:Date; b=uOrLGOAuY2puDHkE9kn6aUqlaDEGqifUxgXd3KmvymOcoK8nTmlWDZoJq5ZDnLHE91pcVqJsc8REfXwvm/767513Qa9CULd/t8u6GBSTgxh3QcqFTpU3cmkCIFBU5HukJAr83uQ/6IRzE8WzHjDFRMW8YVfd/L2ihKMHY9hXt5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HY5snk+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HY5snk+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC43AC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 14:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782745113;
	bh=Sisa5T3/rY0kVk1KdxBma72bP65S081o/OBq3QtaqOo=;
	h=To:Subject:From:Date:From;
	b=HY5snk+fiPMXj34gDoqgkYDJGBfTGYe4C2Z/SP7ibxEVONAy/Isv7NdjEc1DdXMgo
	 m2uT3S53nhP52d3+W15gSj6VOxpx834zmkm163qnLoQh0tpKKfm/JEUPMQle7W356/
	 FNTo3PpOL8vaZkf5ORZgxEeYthqQ0j0+aWwtMFw8p4IN4HTzVC1EwJUxkouRSTLFVi
	 RlC24u+MSTuhfbuTuywOpxpuivUyEnOPBsDuXgrAgl6xzSpOPBGN0Rj9hYUWVBkN29
	 fMiZEU8zjFH1Nd5vagDB4ZGg0EJYVCvXg/dKElUKtQHw1NiNJqys1LXhTq8Mq1tOCz
	 mNnlffQH9XJ+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B29CAC43638
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 14:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178274511371.25531.2929296202450792791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd9babdc4bd6dd2091aea03c95104a36e7b9724cdd5fccf00add273d9d3f4ab0
Date: Mon, 29 Jun 2026 14:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782745113
