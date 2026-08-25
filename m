Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EB6A3BBFCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787638834; cv=none; b=u5I9l/rC7dVOMxG2pIUoXcIqS7C6XsaQCXWLj0heBtLPnoivYAelIc6O96Kc0nJRcX/mpEMjD6erFJWdJZSpyK6cwR+msgiA23SSAPfGq6jJCdSEZQeM9rAedfUT2kQYsVYnisFzWlN3PJKjuVI6lKmz2qH6Xu9xYlY7qfKQCtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787638834; c=relaxed/simple;
	bh=5GD3zEzhrp5hxyBoDTLlPK9N3ltFoSkCYP+QGPEBh8w=;
	h=To:Subject:From:Message-Id:Date; b=LpiDA1QhEhmYzZNsxwcBpq4CpgGEAnOIxRwUaRD3Yb5juUUx5ZeaUqe+57fLJ3ZRccDCaJWRFvas8vFJ0u+2FWSruD20ZGkfy3B8o1gxfrVpC+b8/Bw+azlWx3kW77NM6VLXatwY1O5LIqd7hUvghDNEaCd0kxjrMBE8+DWDS24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fEd/Bng3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fEd/Bng3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D22B5C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787638833;
	bh=5GD3zEzhrp5hxyBoDTLlPK9N3ltFoSkCYP+QGPEBh8w=;
	h=To:Subject:From:Date:From;
	b=fEd/Bng3BnNB3e86rFyhg5yVniOsugQtPgWAroGa7jwsw9V1exo33lE8mxB+0TWn5
	 84k5gdZH3a0UDB911bnO2AM0B4JxdwOEerc9avPM0atZCU5RIXTqlR1TEf2tcirJRG
	 +e4T+Spx6oXkYgyjGXaiTGd9mTHub/J7In+zq5dXbDoGmA3t3LIGm5ERUbWwW7xkq2
	 76O8J4q1k0amKpxrKcoWiTtNOckMJ9JwAfm1qBWVEki7zH8RomGh04ZkGSRtHw3aUX
	 P54J1QUbPtQiJBKfeTom0K+Bb552jZ2Lr0+/TDjnDTlKX9JZ0WZN5KBgROGSIUdUAJ
	 m1oGZgeB+FAYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA95BC5DF9C
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178763883368.10225.3497969505364335614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e970cf79445601e898fd3669e0a8d86c68bb2e667c4f8a2b7149af24f6463fc9
Date: Tue, 25 Aug 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787638833
