Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FCFD515
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748656794; cv=none; b=ZD1RVrBABixYaVkF0nt66uKesml/XzoAdU2WpFif5SMbmLS0dq9ADm9fqAHGgLwxEGvINFxdp3fudDz0E5a3F7eH0XdEl7N7hd5G471BTcRllP2Q9BHVuyErIFXLe8Oz7HpTUe91pCPJj+hkXdjaFr7lR4G+Ya3MCviyL2DFSwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748656794; c=relaxed/simple;
	bh=hZYuVAN0243/0eXzHUvylY3pX1Gb+RPgxgZESXcoSsU=;
	h=To:Subject:From:Message-Id:Date; b=ZUtA0gvkExz3/Y12rTsWSnlkcWC12OgTc/gM//Q0Du/tDaWwabyB/KDKegx7Gk1tj0wfAqm9hrgAuZtCKIMKbyiPxTFo3bQreLUr1LH12tyYmQ2UvAdiV/UJg4QxDyKu/0xsdRlovD4HeAyJWv47cO9jWboh6Szkz20CIrbchXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fSMXVuta; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fSMXVuta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74E4C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748656793;
	bh=hZYuVAN0243/0eXzHUvylY3pX1Gb+RPgxgZESXcoSsU=;
	h=To:Subject:From:Date:From;
	b=fSMXVutasD/qfRniRGICqEz9KrFiKzFFcNBPDeibZ2jZjutoh5KOrjcYPfbQDGHML
	 6xR1VdBmcR5jGe4uYK4UlD3u2+W6KHZzKrWH8vhI0gE9xhTqn2afaL+WG2AKNTsfb+
	 oH948R4AX72kstH5ASLzv4iC5fcq0QRayaEHdUHgWdpQkT3IpXqhGta0WhkVZmEfez
	 Oe9lmJNs9K5ThZhXu0HNZ6jLUj18UiiTH2bVWhqaoPE21pijP2uYOvkX6T3b7pDDVV
	 5VpfYwwPYo4lBTph9u4nVFQb76W3ElL9qDO4E2zFZ7o8A4Bcs9JGKLyTtrlQYy/MHZ
	 3vwuON35Mh37A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9459EC5AD49
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174865679357.11599.14669819947929814209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a23c4aeb87568510786a15be4ad6f8f75cf81300c4fde8a023b5225deeb749c3
Date: Sat, 31 May 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748656793
