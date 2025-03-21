Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51BDE230BF0
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742591994; cv=none; b=m0D4V/vUTFw56TjP6h7JCg37RvM6BJRBFjiY4xYxW2nlYU2OATTGJOx4Wzwvul6ErdeVSaV64r/0atq/5dFPdIiRlkykdtDoJLoukeil8SQ4bkXae5o82d3NLP3uLt4bMHxv86lOP7Hld2sYe8mLKudqT40OHFBkJViS6HziSdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742591994; c=relaxed/simple;
	bh=4ChrOe4vHnpJlfhDhyB9cyhulb3mFh5LNQoW66/MkTA=;
	h=To:Subject:From:Message-Id:Date; b=qM9slQepFApZOrk3IBW+UXeFXtzjE8LbOQLJ0BJu6HvA3CPJI03atxlCpVHJhdT9+glUqgH4ekQqFUVAOkKua/hFSUMZvvMR8Zvkk/GRxkiZFMeU+QyWtlmD2f6smFCFarau9IP4oTdfOGpqQ7FwCFomY0R9gVwO6DI70Sob4L4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FOSRO+yJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FOSRO+yJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A67C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742591993;
	bh=4ChrOe4vHnpJlfhDhyB9cyhulb3mFh5LNQoW66/MkTA=;
	h=To:Subject:From:Date:From;
	b=FOSRO+yJkyIr3kG0JVtnd6glxypPioeanQm2Sj8V2OhWZDwRNnPnOca2i7LTjTK4X
	 jer/YN3E77fMwmjSLMXbxTgjUKc4SjcXveXmYhXi6mF4+rFjQ5y5JkPNvqXTghQUeR
	 cQPJie18kVONoMT9/zgcrkEgo2x9OPjrPFM+wq/uy2apchKwNyuGreMawxeUoZdFo0
	 3PTwAvtgm4iQ4Y9S7jOmb1DF/L+fZab5cZ6GkoN3T/eVkLu9CgUP0ZXLFbQ63xxCse
	 wHC8l1mxeJMB/gK4tMC4Ce12oX5wFupdKXphVkFlf/MoVcXVu5DbG0shmr0Y3ItqKW
	 O0qt9dAdLPOiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D406C36002
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174259199362.15743.3856294769444416956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eadd1706dd35aca3948f6a0549f500c94c256800e7f2df9b427a0060f6a2150
Date: Fri, 21 Mar 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742591993
