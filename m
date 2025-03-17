Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B2471FAA
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742249394; cv=none; b=X2nDZ7xh10BpSdWGn3JjaVmZy4P75MSMiRW32kwbt3U/byDRwYw55QHPLg1WY+XyYTpRsbURcwWNlu0hBnVXPta2sBdVwQD0mg6cKXNk80xX5QBmIr8/XXWNF6dqZSPDqMuggTGzmBiivlt1bwIPI/GSd9jRhucJMlVUjNb0bk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742249394; c=relaxed/simple;
	bh=CuWguH6IcV4dOVAo8ET/jl9MRYP8QRZ/2cpKWmZNgyc=;
	h=To:Subject:From:Message-Id:Date; b=rvrigXah3CHLP08z1jYOVicbBkauBxANy43Dp5yTLX5gEC5al8efDkDEgkUP70BmnSMIZQ7zniXYPTsS8zPzG0ASB3Faiea5a+fnnOObRwjS5R+XvrcLKlQZVpPELVBVtE1hSEMz1HjozAT3knNt8GRLgt4hrqchDrwp8ghHCdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EefTioUC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EefTioUC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC6FEC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742249393;
	bh=CuWguH6IcV4dOVAo8ET/jl9MRYP8QRZ/2cpKWmZNgyc=;
	h=To:Subject:From:Date:From;
	b=EefTioUC0xpVK6QrnBFDv79BOXxIoOXO6OOMheyHMMstKfQ601ddC3N4PLH5bE/mb
	 u4aqJ2A5aQoi6r6UEu5WJkBG78f/K8eZUjGV+WWSl2vzJ5w0e/RNnOHclBjBPDQv5R
	 ViUZJsS3jwciVC3653gvPEMubknPo4vxYD8OYvavhRgEYeeNJcLdf3/tfQKuIj5aq4
	 lytiN255VOpT371F89wQKxCqmK04MgXPH2FI9d5fEsLWtXaHp7XGKW0upCIRUcXtv6
	 V2+7azniX9daHyanm3H6lXd7tVqDIgIxUaiTzqzyUY+3Geg91qlpqYul7oO8VR+d6s
	 cfAbWvMRHMxCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A332CC282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174224939363.15708.11637532011050145621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1625cd69f804c80f037568db8685dedde9984b952ed0c340bb6ee0faab37d007
Date: Mon, 17 Mar 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742249393
