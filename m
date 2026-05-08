Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C14110F1
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 01:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778203654; cv=none; b=smKjfGGYKBFy2Cmow9NEWrOSWL+T/z0NAJ+pkCtH7h3ZLKZDtD6SxKacLyfXOoWrdDVPUFkDl0YzFGXVa0jQ/FHw7KM4hkrTBIVCmRNQ02T3AXtd4UX/o7FPECInwouGEb7DsDwd0JtauV3Eh2hWqG6L378dm39CQzn788gBltQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778203654; c=relaxed/simple;
	bh=EVr7bpuKSl6KfJvOMoTYZHZjHIqN8uMFLkMyEdZKnlQ=;
	h=To:Subject:From:Message-Id:Date; b=YcHIh4sqSnxbjBtweXWxeshLjzOcigIDZw5eg0nGiPYVaXRGRZ5y8Khi+vUuT8TmaWHtlVq5rfonmOMRgJXNWEXfgigK5M6iBvqUp0kWn4/tvr38CCe4pqAvfmO3XvuAIxzJt/1+Ec5EXTPq6bOYCsopZWhDcmDqiA2XW162jrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pSkNqoOG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pSkNqoOG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA192C2BCB2
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 01:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778203653;
	bh=EVr7bpuKSl6KfJvOMoTYZHZjHIqN8uMFLkMyEdZKnlQ=;
	h=To:Subject:From:Date:From;
	b=pSkNqoOGEGastJi6J1JTYf5PxZC6IkTDPP1TJjbv/uqQDDSClx1EHfOhj9J/8cSoV
	 nvlaiJtFyWg0ovDmNTK7Zc0JPlT1LMUbGTLWTycptdcj4XjDW6hcIzxsBw1eYpM5Ee
	 Mdz4VthdB4QeR86Nh9rSfUvHAZYudqWnxAume9xCX/5Wk8GPnPH81Xh65qj+et3GLq
	 l2xTM0BC9Fx2C6tR8VTQyCc7/r08Ze7uIXElMcXZ3CuQJN3QZgRXvs4SUmoYKQ92Nu
	 /nQZ2ikJweNnE9cMVTtEZgwNh+A6mjrDf68qXLkUOV1ioKnn529Cpk9el7CN0Phtzy
	 NmKEW4UoS0VEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9954CD343F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 01:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177820365368.29889.12863602732311932762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9125387ee9ab32449e375320e0e260c81b12cc4b96317828b299c0b7255bb8b6
Date: Fri, 08 May 2026 01:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778203653
