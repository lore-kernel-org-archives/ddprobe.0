Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1213624A6
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 19:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778010454; cv=none; b=lsV2bDMXXVdXl/hu1RyzhtmIwbZOjZoi3ULEaOuS2BLHDbhJkf5RS3Zln39uDPJQYKHHFP9OJGF31ZC18z2Mte0uoPvu8nNcqBbUQawOJ+wPitsvEce/2fygaPHiA8V5D5oF9ixzbwLEDmKUBAmpnVpm0g8pUcnMAc3JZ0YVlJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778010454; c=relaxed/simple;
	bh=LhuHv+adc1ZJt6UQFZM9sQf9JKkhd3Zr9rsq48xzkrY=;
	h=To:Subject:From:Message-Id:Date; b=ORhme1xCD9MNkCwA07J/Y3mTUszEWD8EoAacm1J7FaKIGc4AjbomT8KrqnUvm9+iT81IzGIDZ9O+RunxnxDj2NZx7fmm4JJ/j91V5iO/vcl9vA/8/SbmIVl5JYh5WQeMcABZNAzO5GaUjq4nD6o2dX1wQWu19dOZy7ccvOXO9As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FCLea/6X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FCLea/6X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA248C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 19:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778010453;
	bh=LhuHv+adc1ZJt6UQFZM9sQf9JKkhd3Zr9rsq48xzkrY=;
	h=To:Subject:From:Date:From;
	b=FCLea/6Xmjqyi0LqpbHJLHG2rsvLGB67Smzln348ZuVIY7+Xua1lapWTT9YOUp63k
	 qujyT7tsMrJssLuAkEGuQaWSgHdtUDnNBwja8hFEXZxRdoTi9b2pe7wMSrTAbzalMH
	 bREtlPu8FOrDD+0G8fi4YN141vuI1sFF0AAc8Dj3l9Jb/eoMQqJ4mu6emPL6r/0SVL
	 EOSmL4f11G5vZiA2n2qD/tCa6+wd6uxJbM3HJyvl93XdlfuyNzVxC6IlPm1yRwohNU
	 q16ZpSUa4fhVAy3XIxSWVmtXzgX7/9arJwoQyHopqINJ9yWJpx/FmeZNpLd6Mj/ksA
	 +G1gqbLlyoNwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA071CD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 19:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177801045368.7372.11703903218521907735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c74c559181b2200a7e36057eabebde7136499a3d811a1981a1d96c038cacf7b7
Date: Tue, 05 May 2026 19:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778010453
