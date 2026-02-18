Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6572FD1DB
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771394094; cv=none; b=i3EzGnlJKzjWyXCqY2sJMJoprRxLdRKdJhQHsIHROaP2azQj4gRLYQd7meNriSSvYgV2wx/cxu5wnzjdij/VflS1zDZwJmV0qly80Pzif3mwUoeDYYoWRjGopMc/IKw5HxIcJHBqrbcDZpIi8TALSuvQarizWew5Q6M2M1oDn38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771394094; c=relaxed/simple;
	bh=1ru1cRJuIRDqLXUnIU7N72NsKM46O3I6DG1jce3ViGE=;
	h=To:Subject:From:Message-Id:Date; b=nMnftZXRIZxm7xwkJjtY8uGUWy7ehjX7bZQMcnoVT86J4apKYU98dQkGjUsFlQyusfPkD34q9d3MD68YGipnaBZEHtPIBq07zM2hVyaLCFePdL/S/K07ps5M7cGd/rDnRtlksdsoBegcUYuoobojEQsj7XVU352IYyKZi5TOifo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iijLE6CI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iijLE6CI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76A2C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771394093;
	bh=1ru1cRJuIRDqLXUnIU7N72NsKM46O3I6DG1jce3ViGE=;
	h=To:Subject:From:Date:From;
	b=iijLE6CI3+zQr/Cp+CNP7TM2timpz2O9QJdraD9znTs3WqMdoZE/1MDma1Mt/dqWg
	 vTTBv0n1lpA/6ddJ/Bs1d7K+B1uPzB+F/jowRnMpoiuZUVfJoM9HSi2BT/SkNM6rbQ
	 8wtfbIWLzBAltpQAf5Ao+vqcXB39z3Lisqd2fMsdKDL8Onl+h+6mnU9YuGHDmltJsd
	 CMLYfDaO2+aOSgjORIQoq8f47c0ioWZWElDREHvtsnsZL8zCtpjDAEMtYb9vE875YN
	 6TcuI7jLx8nXUWhskYFDDHsaaBMHrGve2Hffbl5r9FRueRYcECQUqFpJDefdqpqnsb
	 FHaUSoZ6Ka3Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947B5E9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177139409358.25127.13068774575730435139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb864c0dde87e3182a7a673049d6dfc94b7a2cec949ce45885a13031df7871eb
Date: Wed, 18 Feb 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771394093
