Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFF51292D0
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706635697; cv=none; b=j5Dh2iJgyaPlglvD+OW0+vrNBbXvvcqu2rKV19BPPPSsfckEq7hyT5FRZPFdyn7zaLSUANinQ8K6PuLNTjgYyKVFUoB5EEIIPPetyUca8miovjI90BefsG1Mc6q33A9vy3eLUI72Bpl995G4XGxf0YbG7fEu0h8i4+3eRi2HByY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706635697; c=relaxed/simple;
	bh=0PwAXhctBl++vRHET8YqowRcYTzIVqozVY3jQJ/t+bA=;
	h=To:Subject:From:Message-Id:Date; b=r3CreyDyAqneFQ992Oq+XaEZXP+l1/kbtizCJkD3AYNPTYoQIOw64J1fokFi4WAJ2Rf3cs/8FkDSNRaMbfRmEvFi98UzUGvf6tXfyIIFm6Z8aALJ5zjZsdLwmRRi+CDrhrXdYKAVWgcYWU07JfwkUeJvBP70e7JVmzxnzwsLe2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JThOO1je; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JThOO1je"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BDB0C433C7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706635696;
	bh=0PwAXhctBl++vRHET8YqowRcYTzIVqozVY3jQJ/t+bA=;
	h=To:Subject:From:Date:From;
	b=JThOO1jegG+YZRmHNKZdYMXBtLjUMiCyhNkFP9F+IXFJc6uz+QqcUfUNAeSouhBM9
	 ySRr7aJRrGv4Ad4LKh4S59eskafTX7mlbfc1OxLRsTL6hyiWEV2RURwYeLQTkNiKf4
	 7tOgzTK+3IC9m99np3W2cvhkSo/UOhVMI6fdw6SgJ7NoLzvBqrraam9IypJmXnnuz2
	 JdoNII8rmkeciK/BmeA5cbWLSNeahAfVMgl8ZRqAb7H57xcE4SPcZAVxo/8ogqz4tr
	 XkcL+82S3BI5H9k4P8i/Pth6+IZNIp2dTaOrgqIWcZzuirZP1WSMVWqcO64A8kguym
	 tHOtBYHTYoMRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63D67C47DA9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170663569640.20296.17907286204357671153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31ba0a4c00beb2d716cbb873715bd4062c789eba19a89f74586911fe6200ac1d
Date: Tue, 30 Jan 2024 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706635696
