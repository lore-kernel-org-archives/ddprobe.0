Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3943F284B54
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769978634; cv=none; b=diwD8KFihisuJ2dz+Er9mRsI9+Az1BuERG9E5W0Ac/iwfSxUrzh3ea4Y3948+hmnYcEP1YmAobMXYI8CJdFXq8wrrkYCPgZKZi1oIdVjTu/NnyxfkfN8LYEZ97ToyufLb6OdNmH1fqkoIbl8DQKZRwEyNxFxckLjjSrkaqWTW38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769978634; c=relaxed/simple;
	bh=XISQ6Byzlql/XcscaJ2fsRtqmIN0GrLuG59spI4qAFM=;
	h=To:Subject:From:Message-Id:Date; b=VNQjlQ/RmLz4W5/BrlifdKT9sw/bgOQ+gKUN3rFqDbnC1XYw7e6FSZn4cnhPZbhM8yLJe+JBKdLVJwckm82qP4YFFmuVlhlH5ukoXCJ+nKFud4AmEJMRKwNGmQTOZeyVyj2WwaKSo4qowft/hA0RarXPfRpHsciBDy9Rcc4qDMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fh0ctquL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fh0ctquL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E53C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769978633;
	bh=XISQ6Byzlql/XcscaJ2fsRtqmIN0GrLuG59spI4qAFM=;
	h=To:Subject:From:Date:From;
	b=fh0ctquLY2TSTlKuPwuasQbtqKp3+WL7gyOPupppr0rvRltFntUaGAnvgEQJ5d1Tn
	 mJEHHE8MHrimQAnGWoGj+cd1nzQyOIRPp2BmMCo3REztzuTeJ37yeKE8QD9Lyuou6p
	 M8lr2IGnXTGl+zgEXWyczLo7we8520b8/cRX6C9aZ1X9Lc/EbGEY+W4x8l3vV5MAnu
	 +J/hsjMSWU/tJBuS5+CXc+Qi9/oU/6bD9edw7SSXHYskf7gGEK5dQ+9PufywNnVvOl
	 lmlPucy9whzyIdQMjlUKdX36GhVTnjkqxAllVLYF+FhYvp92bHzXKVsGRL8m5z5ClA
	 LPzoNJ0AvNQ5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B6DCE6529D
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176997863359.11456.10184979809560030102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ea2a630112918501b0ec2634a99443c87eacc7a73dec8914c1dbc9c86adaae9
Date: Sun, 01 Feb 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769978633
