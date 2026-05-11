Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0DAB3B0AE5
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 08:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778487035; cv=none; b=siI1xX8OhKU3CenHM6gJSG7ByktwlI1fY/m1keuyEhY04Zij9Mbof4NsSQKLMRLP2TMA4aAzBF4ghg9dlZp4mZ3T+gwYwm9IFLXP5lTF8A45SDCiciw70mBZ7nUjAAynEsStogtXZLrMoDphFZS9m6Yt8LdjwiBGP0cxf0pvP/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778487035; c=relaxed/simple;
	bh=/dwzQ2rFgKYlk9/kNbfXtnYZiFjzGYdvei6TTA3t/ys=;
	h=To:Subject:From:Message-Id:Date; b=KGEmRPpfWWBaCw4NxdUrOENg9NGWoLX34R7RjpNZ8E4NaEq5MGlqUat6M5a3oSjxx20+PtFjo2FmDpJUOfEYUWhCShlsqhxmvGEGWLHxddRpevioD2BFCSLb66TRK+I3ZTPIVlW7EulI8Emf6SgeCVJvjPUG05tGFCnv0M3T20s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kSbB0Uno; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kSbB0Uno"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A0CC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778487033;
	bh=/dwzQ2rFgKYlk9/kNbfXtnYZiFjzGYdvei6TTA3t/ys=;
	h=To:Subject:From:Date:From;
	b=kSbB0UnoRhySN8aYNQ8Xlw5jAGadCxmNRJZCe6YID0LoP3tuWroFR+J5vSg9Kfefr
	 tDviyQZ2UPRuBz1HFauHHU9wm7ofikrHmXHVrLVevwBHMzpRak+k0d0+ZgoRGDYuKU
	 +bje5+8J6Vj4SrsKZUfUn5H3FTo11o6AWYjELsz7VbWRR2D42oUEknwoV1TNtV62nk
	 UqYsoK9UMnaTSXECG7LOtaF+9Uiu4fRCXQVOg4cofu8PwJK1BDsNsntT7kkvuXkdOG
	 nJGXmsNqciXBXD38kWX3ZC1lWHAbQQKMCAwxTXgG87jm2y/KHEhin1ByjEIKbYjxiE
	 PxHi0Sti/8GcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA84ECD37B5
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177848703368.27378.15901007751989872941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c25f012a8064f395bfce50a83ba65251c32b5bcdd32af743b33996aae7af828
Date: Mon, 11 May 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778487033
