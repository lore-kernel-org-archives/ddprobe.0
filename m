Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24ACD32B128
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 11:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779190234; cv=none; b=pNlDeB5e6aTp5AyBnr8LhOBmdlwTXCZsHgh/yhcEoOX856uai3gFloIxrq7t1yncIvtMjAT8kNfM0U9ysAM9cxuOGUGr+5CetFCIgH5fDZKGuXaHSKRQaGU+N9sXKq7410PilMHnUa86+UMBYxMqRwd9zhop4ADAfQofNhmnMpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779190234; c=relaxed/simple;
	bh=5QYejUXqwVUonElU+zmrMbdod+WPlwIBcPB46u99poY=;
	h=To:Subject:From:Message-Id:Date; b=c+X7dcWMC6r0k1MUrR4uC80mU0VYWBvqzcCIBgdSW1pXFCb37iLXCuWnTTVREdhqGFj1GnBsjgSEGLdHp4M2fqnDZEwhBYpmGa1GrFWAg7pYwk5Gpl0qRI8a/Z0DPK4lRD+6Vj+A6VlBIe7vygz/dSy0Cg36ohtpEt8LO0NZkHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ssdPDPRO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ssdPDPRO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7232C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779190233;
	bh=5QYejUXqwVUonElU+zmrMbdod+WPlwIBcPB46u99poY=;
	h=To:Subject:From:Date:From;
	b=ssdPDPROcVjECZePhIEAiCqjAeCF/xNM4XW32Nfd/+l2ol0AoL/mlvZ8gkLS/gdYE
	 Z0ObPBtsfPoMIfEC80LovXVno52bLem5AJWcZo4nvtK7S3aZe9uWOlj4wAM7QrYD9N
	 59NEUkRj7INKMKE1fekgiWJhpo56+AMPQhiMspr4EgJAdGj3GikEw7fzuEhidIMOje
	 X/wwoDqbTIO9bAUmI006BlRmfLpxJqDN5qEyX7vYDQu6xbZ+fE9s3oW8hcagTQNc9z
	 KJwBobz1pBhPzUcm+IR7Q8A3FHrlwphIJbbTZ7Fcip08Lh/Q64FtJ3mkIeBjzpT04S
	 Vx0AngXh5fQMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B663DCD4F57
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177919023373.6830.12127973943296022157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5c9fd470a7e087a8bc198b20f197c33dfa01302a0723d0326484ed02849c7cb
Date: Tue, 19 May 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779190233
