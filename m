Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3228D3EB818
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788417635; cv=none; b=hrCHqTZFcS3JdlgpdgNTabndeLq7qJFenF6mb6c2Ka86+hYGTK/UbRsR1kSPvmyN7mn3081c3pOS9DEIrNY8y3NMYzxdT/KqGvYs5+ZqYb8Fw3NPkMn0kbCRhkKJkmHnq6mwNzdWQHkfNc49bkNYrlhMzH1rWd82aR55EPN+qeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788417635; c=relaxed/simple;
	bh=F+kyH+Xz8AWdzgc5Ix5aVMdqy5UeJv4NRCwP1l/P64o=;
	h=To:Subject:From:Message-Id:Date; b=ln4o80oTEgapZzbwSdVYfOQayIFaTRaGKyFf+P/Afx9Hy7QThVSzOoY2Ps3PnN9YiufNS23a8gQkneYKaN8a0gWovEm0M4AyKHBVWVdzw62t/Ge7TdiWYyfx+bCnlYYMgII4qT0Vx2GHQNxSEhKUCJCA85DPdAMKuj6xqpLcxzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RJRop9z0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RJRop9z0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCDEBC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788417633;
	bh=F+kyH+Xz8AWdzgc5Ix5aVMdqy5UeJv4NRCwP1l/P64o=;
	h=To:Subject:From:Date:From;
	b=RJRop9z01RofFv5xEQuztbjhB3MXENBKuqtp0hyxJzaSBiNws6vL2qnV/lwHF502s
	 bvbmWv+05xvfQLoexYPIO49Y2tdH77qT6aNewoWXrkRPJY5/Tnq/SiRlkczBtDCK0v
	 EwqMSiph4ow1LJiLjndldgIDblFIK+4jVYdlzn7dnbr7mWnD55KGq9qehMC1C8DACh
	 0yEi4XOT5YtIRL6EEqZZ3fKLira7B1WrgTkYP/SA9ZPbicfKUAlXtY93Svth8p8u0Z
	 KejodkJTnKwc79xMIw4AhT9VvIkNdIDgVozVYV71FEtptjG1sx0t9k23DKNySSZRnV
	 G01nNnGiMnOpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6E4FC61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178841763373.3948.6942808691551512777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 861b4abcdf4b46ff7638eb1ea10baf781467c9dccf242355542c18cd942c50ad
Date: Thu, 03 Sep 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788417633
