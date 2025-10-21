Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B5A16132A
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761007194; cv=none; b=SMkX2mLMVYtVJNggibJbYP9MMbeiG/bUvo3lw58kOEO4StTJR8K+0ekjy/rE/MReFgBawVtZzzZDbXTMftGZMcV8avaXFGeTBnEtmpKlVGBZ3jXcGzXv6oZihSN4ps0JCmCLhM7mTtFI9P0ISVGmtPCv5ZzClKQAo6d81vmDwUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761007194; c=relaxed/simple;
	bh=3V4AFgfquZWT+PV2xnPhMcwWiKsSbbvG8DE/dVjO6JA=;
	h=To:Subject:From:Message-Id:Date; b=FEW7TLzjcuNqrLoGl5GqZnd6UCpaBIitaqcSJMva4teBQsX4Zkgsv0luV8FlVRc854rR6GOA1G/fH0OWf/8ekleGVM2hctCpt7kPAbl0Amvc1wWtk3+nNnL4W+wViYFIcInlf3aNFs9JcA4meDIOss9XlBjLOlVJVQjzZdysDuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OogiLLnj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OogiLLnj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C31C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761007193;
	bh=3V4AFgfquZWT+PV2xnPhMcwWiKsSbbvG8DE/dVjO6JA=;
	h=To:Subject:From:Date:From;
	b=OogiLLnj2Z2Oz2FTAIVRt2o7n9Zr8Fhfr5XZQtDB6LMJQ0xLpAmU8q3hbTQncnZ8V
	 eeSAFbJGYcMWPOJZRFzHP6QiWJambanL3nc2T5h2/gnUhW32asMWwfbbXFQOwxmy0Q
	 izdVdUq8WYAPPZLm+0HnQOx8Xn79uzlo768Z4AuM2hJVas+DPQ4PdIViuVhU5PESp6
	 tkvKjVYzCAzhz9vSh+uUH/ZRArW43XX1BQypMWvbgZanlw/d4xpCF2mKQDXPwWAE5t
	 yTxPS4BI+HKxkMcJ1wdqjyDHfLNumSv5OnCveSPoOBm+hLjNRdQvO/HB4t+Sgw6WVt
	 cJvaxIjIvBpwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955C2CCD1A2
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176100719358.13075.9795482046491916546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 837e17bb3d4c950e2482f1e97ba87ea167a522681303d300a90443e1f93e0d0d
Date: Tue, 21 Oct 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761007193
