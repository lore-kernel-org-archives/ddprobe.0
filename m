Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C5F482EB
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762047594; cv=none; b=CHn1dRfTDpLEqYsgr52Olf/zWQJo9th3kbSO6xLbscC88EtZaY2SYLVk2Zw7AYA3C3Y1XI97lxbB+D2L/CLVbGQzvRT3rydj1bBqsZOokl24lYPvg16injGN26cI/79RKTOmNj696t4eMnHfTnItdrwGbK2iUTAWQdabVppZjxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762047594; c=relaxed/simple;
	bh=Bx8zQGVqV1nQwZRGIitCewizuEchNmEOUCP2OxSISIg=;
	h=To:Subject:From:Message-Id:Date; b=tVpXNl8cVxCmHg9sxT44HHHkSI0nps0KgnVDqC7syW7Kn2tTXyZFnD4Pdumxf1sfYKsBsQomyOrWtUBL46LwTdZeByM+IYbLIbgz32RvItf+vJTVeOQ01oFnQ+HIfdmWH4Ns4MUdmeYlBTCbQryMgR5tbFh2zJhl3AVs0qNyqgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uw10yQkD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uw10yQkD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B54BCC4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762047593;
	bh=Bx8zQGVqV1nQwZRGIitCewizuEchNmEOUCP2OxSISIg=;
	h=To:Subject:From:Date:From;
	b=uw10yQkDH4Pnv48Xs8r0R3y3zQ+IGtmuuHeT1aSbp3r+T5T5YZLm4e1L0HrtTogg4
	 C7Hm+T+k0rVlUrxI9/hZd+S0tudcUdo62vzpGxGInz7/5K259x/OqkxNe8j9KQXYQM
	 BL+yLkMRkDk0bTD9BIBmqPL8PF8MA17e9MADFUFPlSGjxtbHdG89dsPA/TjidCJl3J
	 tikBxSmO8H2rGoDUV5BGx9CD5sH4HopyvcfKiGcKffQDxium7xgiyEjlD14CIylDBi
	 9aKNAKUSPKUPBdq0vvcLWKKuRKBvfS/aZgO8ZxZZfpl/WyhqF5+/75cFIuBBxTjNMk
	 PySDn/N7xx4TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F284CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176204759362.10048.5192582101528561551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 297ea491cf5e623f7939dd9d32bc194858f2ef41231d7da2b3101c837959f220
Date: Sun, 02 Nov 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762047593
