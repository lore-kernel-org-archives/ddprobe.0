Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0C817F364
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 20:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719348803; cv=none; b=s+AHZNcgipAUogVVb0VkPCY1h8o6qn2+Q13kA+x8M7d4TKo4mNY5D54079Z9vowpKK/CuEfsnOjoQn0zgltCn3xEsAfnZg1MLJEcsCawJ9iGnpfoOCexCOpHjeFviNunAxqcjox6+StUx+3j23713sdyv+4fn9QVjDgNRMbzb1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719348803; c=relaxed/simple;
	bh=owSMdwNO0fUSvBXDisxAk5cBDjhWCqxdgvvpfyg6JAc=;
	h=To:Subject:From:Message-Id:Date; b=hq0ZMYZs8emCVu+ecb6/7bBgXJ1OrkczMjzfc6QOM6JrCgSTDELq1J23RQscDiNdjLq1YGr08sxWT5kS6zqyYt1A5sYlDbMfKIaGZYKCQCff99DcQab8In89MIiYorjo0OgJle7BeZn57+2l2gNcHKkvGGlutpV7dwlpLmVA1K8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQMDNO4E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQMDNO4E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCBBC32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 20:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719348802;
	bh=owSMdwNO0fUSvBXDisxAk5cBDjhWCqxdgvvpfyg6JAc=;
	h=To:Subject:From:Date:From;
	b=bQMDNO4ECnp0HTPuAIB0Ms21m7HejX0oOZkRyfkdU8GwNyepOkuBNyuGAkczjq52J
	 xgPEoZpEgQfqTcWSIFTY0Uyh5yDVYifYiuRGcVk31Z/5R44lRYK+S1X3IgX3R2ff+L
	 KeXH9ej7vAe+mYsnwkQ7ibs6hp+GnnAsXO1XG0FqSBsn24V4xFkOdb/TRRVyOAGfFx
	 /Sd+AwgI6ubG6VQVRaIvtXOkxWk3WvM5yuhgp1dmLB/82Iw2KSqglfGTqU8b1cZ6oc
	 8NYDOxSWyHVEArri255XOx9ok2345UurtGXXULI2fmV5J1cnEJGuhlOvb1bSUVEXoA
	 9d0JuLvGND25w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC1EBC30653
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 20:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171934880276.8483.5021533935799600448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb732ac72d5cc4562a3f2ec750e78317e065ce7574bf281460cc37652876c110
Date: Tue, 25 Jun 2024 20:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719348802
