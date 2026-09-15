Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E317424D79
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789467634; cv=none; b=cHuLWknYeX0C+ktn/Lu7sZavW1DPlhS8I4x397LMTIKGeEr8zm1V4FPZUVJ3uo/w0Q0KsnfW8EUaJX++KLoYgv1AgxYSvePYDwQPRjy/A/L8S6ohI62HegUrtS0T93tXGMjEQIcYw2IBTfoxZoSpIbKqGklTGyGS16r/dx19oI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789467634; c=relaxed/simple;
	bh=uN/6bVEiffjnr9p8s8MgaqQ/VgrLCSyDsypbUrPKqXM=;
	h=To:Subject:From:Message-Id:Date; b=Lm5z0/h6a8YqgcYv3QjTq4fMcPtaIlkV6RpJ4CX7gLq/aZFdng9/CgeZzPqFGhq421iRVeMF1T8tSVGoB0WiK01rHVzH65wnVxxsEGL/cATSNi1PsdXkzoIz6/7VR5ZzWHP6mJR8FXoe2h2mS4jgjN++OzJfKGg6M9PkPAWNySs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TvQagNnd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TvQagNnd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D008AC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789467633;
	bh=uN/6bVEiffjnr9p8s8MgaqQ/VgrLCSyDsypbUrPKqXM=;
	h=To:Subject:From:Date:From;
	b=TvQagNnd8viCPDrC/vHJrEr160bOPp7CeExlpzqVITTHkf7MaaIqU+URG/rxX2Soh
	 6qpC4Yav4WwYiwQEmImckV12ptJXWQEL5cxOV6MHokIKjF2Q5vnMEYhAV4C9ntDs69
	 1mZm7LZEHQzTNK9T1w8V0UOcbHSK82mR/0lzCc1SC8mlGPBseA1d+p82gJ/zLbMzdo
	 4BrPjqA1+KBmzS4xBzN/gnUdN1A1W8qFaaaUo+vnTvVdvMy7dm7iWSys7/1e4FWwd/
	 jUqu2PNs50d3A3IigncklIz3F8KC9MK6aK+xbIohfydOtvyKc5IYTwAvtMdAimVzWJ
	 PCIiH487ooScw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC260C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178946763368.4425.2921202790640535065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 534838e4794a8be299ec96c2e462f29dc3bf6580366c3a8fb32ccb8143c2bda2
Date: Tue, 15 Sep 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789467633
