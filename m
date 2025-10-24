Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26918244692
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761286794; cv=none; b=sL1NwuFsRlQMaS6CXRWj38VywvQi/aqlBDgzTJwJXRpJ5KOBEQlrdP8Qun7aj9jdqmZvVcVWivDmButEHOM/XWpm44EHTyQ6dVFvOWYH9mBW8l778IRoltks6Hsuj0TdeM8VRE1xHc5SkxFlR2VmvmCPoA5XtfmeX3m1V/lzVhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761286794; c=relaxed/simple;
	bh=Em1oeO/1FY5VtwTuC3Wl1wyV0gTzVoRipJOP8B7+8Qg=;
	h=To:Subject:From:Message-Id:Date; b=TX3vgeTWKKmx1arZOAmvOf0RwjHEFCAcSU/uzfXH/FeUDhsu+GyIm5O7XS9EMNbxaDhB4oiQDanTLmPSu+vLvx/LyF5m62IqLtiPtLpbYD090rnQ2NOzphgHfEqMzViZ2Nn+Kooj/k2RYIAxgF19hbZ9vM3XyHRlBEK1lcAvw9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=um6necWC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="um6necWC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF188C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761286793;
	bh=Em1oeO/1FY5VtwTuC3Wl1wyV0gTzVoRipJOP8B7+8Qg=;
	h=To:Subject:From:Date:From;
	b=um6necWCG0mzJNOnifE4XDW3aQCpBwGDbQthu0GHCEaAhJ773gAZHDDJFVTrg8GAS
	 EFJx9kyXIvRIxOb638Hq4IYzE97DjY1i1YuMMW16ZAoxvo8K0eA1d43+QtAAp/5z7x
	 Ottd6e1dS2YsMsZiQQfpBadEY7KKS1CtnpqR+Qj2k/58XQynfl46JLEUptL2QQ7Oeu
	 i/LE8aWyOW2/mbJM0JvnHiLzI5+Ul69NX4OVtR/x/KkzU6sFpLEJrce0lZ4fy1n6wA
	 I7UWip51TGggfnD9tQOAY2yHcA028HkchrL0c5HhYs2BrGQcrfqif/V+Agf8Ns0nVq
	 /NDsYtLFxO4DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A14B7CCD1AB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176128679364.12327.16701504867572099382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8504353aa9ba5f89be26087b07bbfd7640e53aa6dff0ad28f844b89e9c3e866e
Date: Fri, 24 Oct 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761286793
