Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B37145B3E
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738087555; cv=none; b=aYOaWnRK7PMabiYubxHVDflHUO01YQnlao32EJAAzNatxOBR8i8voqT3TMtr5GB003NtdNgCje1G+UpQuQQ+QuICA8vTQqI/1GxBEEjAkMkDqMUvwyj8lOHbZK4LGUxTsqzeU37T8yaSP53HA3HJVZc5rcVD465NPnsTHoY8E0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738087555; c=relaxed/simple;
	bh=mG6WC4NXZaEkBqN6NiG/ISY2tyyVYa9iYSsABIZkqqI=;
	h=To:Subject:From:Message-Id:Date; b=ani9slIN6OCgGYY4b9g97uZPVBjv8GX+I3IFW5avB8AXq3Yt6/Eqn//AbFXDItOJfWqqMPptsRS0XQ3JZX2pNBTCgzkP5mlpsVOrLa+8tocuI3H47aUE8vLp9CBW2Qhjdkocqwz5mGjcDtzQCrFc4/YLtwVMWaTAk69LIxXJ8gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XbI+aaVL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XbI+aaVL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE336C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738087553;
	bh=mG6WC4NXZaEkBqN6NiG/ISY2tyyVYa9iYSsABIZkqqI=;
	h=To:Subject:From:Date:From;
	b=XbI+aaVL/jCi2MlA3UO+zuci1EDHc7bF3l2zYeSx+XINCqcANphpekk3jpVExERNP
	 tKxLzgIjRMRhNrDQeX9BPULpgOLUZ7GpdKjxi7tJr/GzC9rNl0wsS9ErpNNgJ0M9L7
	 epUQCU3pEXrPyynFIOxd2iXmXhGO+SkXNZJHjGbH6QzseVAAxb6JDbUEg1UuILCQXU
	 Ud/NIO38IVm6fO2SzhOd2iO1GopjNBW4NkSDJmIihDNR6WFqZZyZRKzEJfprDJ1L74
	 jeCcC+43jSWOk6TjIO0csH/X9+8ArQjsOvLIxMiwaFONn8+GG6ywfFU3vkD6TkdiwV
	 TikDnYlpILYkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E7BCC0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173808755363.25343.9797251633883832422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5715802ac547312ff24edc77fa2455f59b2d3e10d00582d63951990327dbaa24
Date: Tue, 28 Jan 2025 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738087553
