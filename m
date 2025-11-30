Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD5F3AC39
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 08:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764489774; cv=none; b=ew06Z/+K8ZJDg5TLu4En/3bnrnXY4ca2+tHFQ8WLOQhWN/lcOEubBwB+gO0glBNPKNiZdq6XuRf6gS/phexgxBSjNjnRH6if+n2QSH95x3XUN3VKFnyrXUj4U44VWSjnjR6EWytR/0chrAbGYN7qTtILWjL8vaa4H14laO2D9Bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764489774; c=relaxed/simple;
	bh=NDkOfL7u3wFn1yi0SX4mU1zkJRZ8rzBUOmlKMSRI3DU=;
	h=To:Subject:From:Message-Id:Date; b=ZSv81YyOX9ZyD/3LsDbJqmKjM+4d9JqN8YkO4WiWP54RqcB5srksFvZKx6EF1c0L0UCjyPQuuosLW3N1dsZqqVTbk2rTJ1E88asFzIsKzZfzf16h21nwX28+nf4hKrrCN/s243Zh3b3Vebek6gfolhxS/FY22EI8iPzTBRlUx6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PXLBgrDs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PXLBgrDs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DBAC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 08:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764489773;
	bh=NDkOfL7u3wFn1yi0SX4mU1zkJRZ8rzBUOmlKMSRI3DU=;
	h=To:Subject:From:Date:From;
	b=PXLBgrDsYYy6N8yK220ms6WWqG3k+p4HgRUuWZnbFlTy/1fAKDwcncBM9kG7bxe2z
	 tTsrVioUj1H5D9JFkK7heW58wPlCgfIWo+CMnuqhkyVwAg72P+Qq40futT9xF/DnBC
	 H8uCxezaT13uX7Zv2Rdh03GFNg2rmEP6GuRS4OYx+h6K9z9hC4zdBe41lspNbZ9X+E
	 8PDwj9jCV6dnImXfybIX9zWv4Ok4a3na/Pt457rD+hRXm0sgYDDCihFtaP+1xXphX6
	 BUJQZZo8P9Yck3s//FV/YlOYmCcKJyVbLSY0g8FwHvlhbAl0g/ha7b9+nCN0NH5ovc
	 kn3shKC/vh7jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DB9D111A8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 08:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176448977358.21700.14221762186068445736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f619703f08cb46eb872dc014a4e5d06f0564e55f5353e0f1cdbce17c8b565271
Date: Sun, 30 Nov 2025 08:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764489773
