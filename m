Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0B911DDC8
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705488497; cv=none; b=RqzQkUK7lUWGP93cuuCDbsmtH8MFsMRfOVyUdSYak3w9vrRdobxRmEGHdJX/gmG+jntc9U4xT+cujW2Knh/WCyy82QiMEtM6OFcB3OQzcEXje/6gHARHOx9Rl1sQ4f4gZKMWjpMfMGqkwrmvPTjyTCEtqivHiMX9JY6vvw/yWxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705488497; c=relaxed/simple;
	bh=KPtWkpBkdxi4avK3c1Jp/CIJ5b2ZFO4ryfbWc/w1cUo=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=UNsP9dkOY5YoimJYGyqE97BMvrw/XWbUBc88xduWZk8MCzLF+OKc7WKEYG1qy3nZzaj/xDQlW/K1nhHyOmcEVMYU+Ep/lYWyOpD7P9bULUj/MeiW9ygcVNnQOpLWkCFzarNJY2Eiw8gNRFjrSR7HlkYt/fxutLNa1X05XU4ZY0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rysHytsg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rysHytsg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7696DC433F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705488496;
	bh=KPtWkpBkdxi4avK3c1Jp/CIJ5b2ZFO4ryfbWc/w1cUo=;
	h=To:Subject:From:Date:From;
	b=rysHytsgXJsh18W7QJkjlKSJ81t8b3/c1KINrJwzeW6X9UD2SqKX/W4VxL+OdsrQd
	 b7cyi9C1HHOSXWLPqTE4Ty6zw5kJOIf3H03GHt3+QOx1zp6NrTRSSF93JcD9cAWmxi
	 xD4ehGWw4Tm43VWBHIGxGTWNaXVmyGzHuq6juS9pk4ctanvQq839NuqbHb7eqRiIzI
	 MoPnnai1+2lTkH7KUahAs+rBoOzo1ETuqDvQQVGUA4FyVZmKh+rwO6cf+oR5MZUrEc
	 Fm9SZFWipq0/SBI+eUmfPX+6GkQSbDwBZW7zDo8DGVohIgXzwHTCP/uFgX92LBqxiK
	 eGK2fDd/b0XCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E884C47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170548849638.898.17184523137650692098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f0fa6220055a853996515a1135666ccc102b752b11005aa56b0d721ba003eb6
Date: Wed, 17 Jan 2024 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705488496
