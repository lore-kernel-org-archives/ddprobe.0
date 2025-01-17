Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12FAD25A65B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737078954; cv=none; b=m4KrJdU8x5yWUOyJFILEyIbhs7W9wi3xbSXk1Fl2t1JZ2kKv9OEcEliN2iNHjXsghfSlnBSAw7ozlRV6I+NWsElJfyi0e4FCbmPkMG4NUmmyNhqiKvmND2Nj0aOMLw+BNUYTORPvoVUymvsFOY6hIRYetRudX5m8bcTgGnRj0sQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737078954; c=relaxed/simple;
	bh=uST/J/QQiWLE2UyB5UiHEyXeA4fW69w0xVJF1W+/ZEQ=;
	h=To:Subject:From:Message-Id:Date; b=TzUKp3WeTe7s/PLFDDjGZ6hX9pCql9iC6cNLhACf9UPhfvBec7cHMEwqNMRY112sjY8oGOPXHyJpUbrAY8SajY74D2T0r0iCZcNjxrmN6KN94ib2OciVEODKsW+IUnrrsBkpjAi9L8mYAl10qwHyWZFTgF/qegSAgv6ZuNdJFzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9Mvl8QU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9Mvl8QU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79F2C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737078953;
	bh=uST/J/QQiWLE2UyB5UiHEyXeA4fW69w0xVJF1W+/ZEQ=;
	h=To:Subject:From:Date:From;
	b=E9Mvl8QU+r2My8uOduSGmBse3SUCPNkd8wDCZAR0iNXxLDizpgECyq3h0rA5uo+Ui
	 PeIz8S2DGz9WCjY2bNdDgo3K5FEqHcPi1Qhop8U2ZDL+QRapJl7Lr4p0BAtXXgRBs8
	 MUDvdCkXIpXODv4MusrvCyiRXYm7M6sMZcVqiqeVVm4pkrY5UuEKIYxtKBCrGlKbqs
	 kyQFdaR8nIBNutIND7ViOO+zpKF+kIe0LO+hQDiCiSFNIGec6ZqneQ2GcY8gLCjrSy
	 HCQs+LKESqzQ2C1hUilcsazz3K45NAdvOVH5wgIDoIUgUcsadfHaoRZtyZCjcm4I2V
	 r6rebBKiVGsdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950C2C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173707895360.30689.956298006439215447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16f9436cf07ddf9734cfd8870c3385bdb43f70cf0769f20e4d69b317387af056
Date: Fri, 17 Jan 2025 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737078953
