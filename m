Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EACE171C9
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753609794; cv=none; b=f+qHtFDqizSKEzaCrd3Wvb0vJifv5Wf4LSElWGS97yXQ+Nxrgmw6SBpbbPOVXQ5SCnyrzDFg1lcTf52dmHY0SPis1r1npuvfm+j2XK+yK0+TIA9lYYo55vXOmf2nSQ03ZvMcXIKKXAgS0o6fzf8BqSqmFw+wL5/B0plCFC9+sj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753609794; c=relaxed/simple;
	bh=NfCF1otQTZGgBZ9n/k9iDqXaFZPPblRZSyxbRmwEMHw=;
	h=To:Subject:From:Message-Id:Date; b=TWfmstyl9aU2f/WQdzAa9WI/NizfvleKOTcrRWB+QMHfoasz1Uk2hP5ifA/lcDubhzrneP+6+dLUen9HW6mw4Fi0Mz7aGW36sNmovB4EcwrL1+fT9MKvIbDPSP1JmYWeg6WWldYKUjvwkDzHgPbJDZ2ustj6KkAkXBfqcrr74HU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZPqfHiFq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZPqfHiFq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33ECC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753609793;
	bh=NfCF1otQTZGgBZ9n/k9iDqXaFZPPblRZSyxbRmwEMHw=;
	h=To:Subject:From:Date:From;
	b=ZPqfHiFqb1LHW8OwDLPUqYSvkThL3r4u5JQL87kGsK5ZBX66Qt7lZ4g9vTzeR3ZBu
	 zWTjgtEiapI2kyk1MgUoMVf4V0QA4B+QYglldXXlmn1eWcauTD41TO489VAIuKx83d
	 ozglFHmGsoXYdyGAT6mdxJNnzRIEFuqLi32ZeEy+iYqmjR1mDeqsbmJC+idWWmNutt
	 /k45uHo7/fGZO6U0KkMLP8j/nRGkv8tz6t15XnkntGyqKSBvEP+JDwoiu0KAaL1LPS
	 GV2hNjunkAEVUMfctIpMHK/DFOITdhUILGbotYF+4E/CVtjCfKuZCmnTQfOOLqcyya
	 rYnR297xlwWtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EA0C87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175360979357.10977.17792917639740864626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e45ab35bb368d141cbe80047cfdb76dfe9a0119494e99ec32ef00fc72d3e0fc3
Date: Sun, 27 Jul 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753609793
