Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16943946C
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758592794; cv=none; b=fPpkd4F/ETcZU5nLdifMW7iumcYxdaSc2H6I6ioInB6xipVLNArtnTr7QHgtljW+hpH4AKdUSkj30jtv1WU449y0Wl1QSPBKfVnBoLvpT6F3aIiBNJtI+rLCUtJam5WIrZ31S5EV8hNy9N4AevLFEu2FCV++tP7O7fbw0OZaH9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758592794; c=relaxed/simple;
	bh=+OQDJ4ko3F7+Jc/NrytCWYo1FjPs04/bCnFBRmBruto=;
	h=To:Subject:From:Message-Id:Date; b=k87r94tAPhO2kaQ9L6Z+X1Vc09AXYPTrXNMJ6AAPznaUsCO/NX4dJarQXjaa3lcoa/iiRsMe6anb2VF06Ys6jm80yD39bfNDh0HhzsZjS57wQyZl++gdQYOt/CDb2TtrokRvQS7Vr9HkGCFKZmaWYyCNq1WuM/Rz862ozgK+/N4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JoZGQ2He; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JoZGQ2He"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4612C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758592793;
	bh=+OQDJ4ko3F7+Jc/NrytCWYo1FjPs04/bCnFBRmBruto=;
	h=To:Subject:From:Date:From;
	b=JoZGQ2He42mBLJ5nZfKbENPNJ76XPHyPl1Hb99FPJMS5ZjDXZFmtutHpIlo9mEN7w
	 QUg1+DPnlu3BYo9aRHxbev/pgP/rxYNb9dZQoVw4OOTNFIbTSnLkpeJtUZjeSjfIeF
	 UD1pqKZNhdc9C7s3bSMYH9ID6b8x4+Z4XG7SDPNy3pIvdQAFWzv5iWd/ZZC8xdijq2
	 kFYZvLKkbfbUBQ8iN8+6GvGjullmrrJ58HV9nK0Gmr3XiUpujcjr/ghqoF73N/9scS
	 xM6A0DfV6sKrUx5rYi6EdMfTOnXAHQN9OBCxZ+HIEXtJlJGmMERaaycOHzKltYsUg9
	 IZvhHCr4xWx4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94472CAC5AA
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175859279359.2038.12774503309646751663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 362c8043dadc6cd282501698c7d9d7e3f0d0b0a942af3cfa0b72932424e4a5d5
Date: Tue, 23 Sep 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758592793
