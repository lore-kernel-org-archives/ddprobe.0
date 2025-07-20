Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A571DDA2D
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753015194; cv=none; b=Au73tcgDXTEGlU0rBWkW5Yrz1f3vVQAoIDhh85yJIwdG+AtpX+3lHKeqTt0LgUe6kWopsBf13/6a9Kgl74ZE/lzXSgMdcEw4+cXDxYGSkUfCLLF/DUaZqCJfDcZV9Bx6Xs3vu/rwaYFWJEwjl8NzNk2qlO80OkeUhc0c2z40a4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753015194; c=relaxed/simple;
	bh=/7Vg6L6pQBlb6jPs1qyMml8e7/4C5/htcbdhtMxgyeM=;
	h=To:Subject:From:Message-Id:Date; b=hDiJV66GIlBc4UxAR57dJjIM7q60GvoIpbajo2MwBjhdYmn7VpqglB+0ZE1g0Y74nl5pWetCRUxEj72tm7StSsU1pA7c6XbpqiQKpVp7t7MihF1HlmCkqVTZszYQP71G9KQk61shWTIxuYlkkFOO58Bs18KdwH/lH2oQy0NSjpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZDX051aQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZDX051aQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC4FC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753015193;
	bh=/7Vg6L6pQBlb6jPs1qyMml8e7/4C5/htcbdhtMxgyeM=;
	h=To:Subject:From:Date:From;
	b=ZDX051aQnzEOg4lLMSG2fQcwo7q1NNy+JKXn5wZWg22Vcj3SXLrTllsOK/GcmX3Sc
	 BZv1PZr8k2AUVIpQRn+nJ7tv7jyn2w2kRDqdbsi8KnpyoALZh73pIASFBXOyiAI6Sx
	 Co2wG7kT7Kulz8M5vKcKfrGsNAeApmNz9x0RzsaRyApu8OHrdKmwrWoo8wd8TMFzPf
	 LbE2lwMs6PAGMUvbPNVIiigOBXIV2G231Wj9x0Q6IpjK6px41lk/gSvrODaEPkHS4y
	 nHRx69bxOV/Aiu4emx57V1TjDTfAo71RAKmlB6aPYTJMqTezpmHyYET6Ppa9y72UTD
	 gb8fzES3a/uzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F02EC83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175301519357.10821.17928319888586084634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aa345712ccf9936d4f0dd47bc2f371dd26edc1469c53533d9abac6d39e10b26
Date: Sun, 20 Jul 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753015193
