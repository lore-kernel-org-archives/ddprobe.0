Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB941DE2AD
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773128094; cv=none; b=aJ9dqQlmAPOfzZC6iXYSnUVDyufN7HnstpknxTCP5OPFZw6AUNPLuEx1729kDqAAk4qsrNop5/r3O4WjA4OIbLjYlMw+UScH+ls5uP2XTpZ3r+sxvmo8XVvgaHGtN/t/FaMIPTaPbRP+18NPfIZvwIU2ETnVSKCuqni+hwO4E5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773128094; c=relaxed/simple;
	bh=yGkPCvdyEr3NUO1FmEMIFSllUnBihi+u44VVtXrIHm4=;
	h=To:Subject:From:Message-Id:Date; b=YXV1LaV9Io3QPdLtaL4owBvPm5dA0nGsxqnxLCcqrFTkaYqFMSLqDcxK60J+ZoDtmIlj6imwtJJ+Lh1QxzD1ps7H0Kv9MdOe/LDQ1bD2ZvmWAspm3iXnpM8ThEhzuplArGvHISkZXhjRu7FfXDJUna4mU8vlb8K35MawRN1QALo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mwb5HWRn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mwb5HWRn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE75C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773128093;
	bh=yGkPCvdyEr3NUO1FmEMIFSllUnBihi+u44VVtXrIHm4=;
	h=To:Subject:From:Date:From;
	b=Mwb5HWRnmi1iqYaWLhAXt0wXZHT95GdSniWWWp7/oFeh9hPQI/uc5lFd9bAvcGGvM
	 wQbM0argM5K0hXsxh2/a/1Npd1OilWuYW2kaejQlfzLQml4bNhPGPfSMf/CDCGkcWh
	 Jci4B1MONqIYXCkSF/9k+Su8PEQgZH4D2vkQ3jRekSRTIPLpxTZVa2vTPGLiSBjv0l
	 9C4hYR2Mv6UuQk3tzej3J4NAccLU7clcOpG/AgPm+JFM5f+d7w2BzMbzF7ZMQKMuVx
	 lcHpbZ5xftG6iTGiWhnB6CYQpCUeWOuyQ/wqvUMGnV5CQVqjRm76qfs/R2JDpjM4zf
	 N+VT87e1pUBwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFE0FCC9D1
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177312809358.5550.15103909446992091906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b514e6c8a76a0da9dfe370170ccca35daa88fb6c28b865c8ac1c9bee5be43d2c
Date: Tue, 10 Mar 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773128093
