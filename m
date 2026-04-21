Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB1F3382F3A
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 08:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776760053; cv=none; b=AEUKp2ACw+9DNjW4ThUloZbkazBNLnUObaJLKbyWB2UQNzEfpvCVJsioQxBmHaJWhWZ6aAp1WGs0SAL1+ULmXse5vQqIjZSh6vUJxsr6xqY9nrwKcz08kYLM5BEBbBUSTyB/wfj+aJerl/wUgVNl2WONXQIRQYAqjg4VnqK/3Do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776760053; c=relaxed/simple;
	bh=5iXFPCYDEoqYyNuEpJayJzf0JLQr7AZBfKfKSuXzpAE=;
	h=To:Subject:From:Message-Id:Date; b=ZUn/z4fWpcdom6IVKh6H2BxEgaWiPLFYX7cMk93gzIUFJLVIb5Kl9nrv/k2wFMR95cNSHbnKts3FXDbruDrHlQNFnbOKdGWHAu0A/cLc67TIyS29CqAZQGfFsi33xaPY+a32PEslKZ5Ty2xkzYgOpahqKzi4ZRj98yTZQU94VPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nq2IGQN1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nq2IGQN1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7FEEC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 08:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776760053;
	bh=5iXFPCYDEoqYyNuEpJayJzf0JLQr7AZBfKfKSuXzpAE=;
	h=To:Subject:From:Date:From;
	b=nq2IGQN1iUJDOcZxzjbbo7jqaEADn0q1HtxahZC4+STNWWRkUDAwK3opojHbzygWS
	 jNAAYe1rGKOqohgJLUb5D9x0MR96kT32K36h8X1v6YmKZqA9qP+Zo+qT1dVyE+EZNL
	 BjQNWl3eyTe0Sv8x4T9m4GUeTl4NN1MYj//gCz3eMdmAssSyIl7v4weXdLowDhp12T
	 TKOVqvBAM5+4t1zPFGOSBmj33H6sJk7qbTXxvfbzmdNb4bwdbgfa2oLz3b2gCS5kGd
	 M1VXXirXEpb+KRaxE9jS9j8vkxuLM3n7k4rE/4GKjCq1AppcXrQLzEz8zOKmsyC2GG
	 w9REEfKRnTnWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92BEF327C0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 08:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177676005368.12586.9068193923760815000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 700308cd78dfdb31f34218b22d8bd7dd0a4e974c2a767301d75d3af9f007a7dd
Date: Tue, 21 Apr 2026 08:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776760053
