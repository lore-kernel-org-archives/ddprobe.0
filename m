Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD02364EAB
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 17:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779903754; cv=none; b=KVhmt8YCnn0yNKbeYE2xJZn2mZq6btE78eC1nzYWe4ZX73tx8NuL1Q5xrx+TGof1m9g+XtvpQaGyl5wB4LZ6GjfU8eT7MZUngz21GhyVnEwgREUUHhlk1UvAMXCkI5i8ciQRg4anFFCSIkyFVqGlqrdVmSrKnmpo/aAvkc9R+6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779903754; c=relaxed/simple;
	bh=elDAaPBzaDNLpqu5jK8Bqpu1dlXqTntUXRXii4SUZo4=;
	h=To:Subject:From:Message-Id:Date; b=CJOyX+IZ/7D0nOjKobGjqvY62DdjZ08sIL2gow7Kxl46MUfTh0KITaJKFwKr6lOoDYr2SYxOQuXg0zyM7SYE8AHAhRSxJe8SQKcZdvKQsPY1cvklp0En2gjMTpCbFkXBkdmYsJppnCtYwe/LfiMmPiYgfAC6mPlowQH7LQDusL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S4rDVVC1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S4rDVVC1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA42C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 17:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779903753;
	bh=elDAaPBzaDNLpqu5jK8Bqpu1dlXqTntUXRXii4SUZo4=;
	h=To:Subject:From:Date:From;
	b=S4rDVVC1TXHW14GnYkZUMVqA3WU5ACVw4rVCRTrkSkMFbAeCCDrwKrdZZosUG0op6
	 fM0r56BzMvK35sQHN62w4rVbCKt+WKJvfBqshBRvT6Ys0RlKkdJ9X3G6Y83fL/K7oj
	 5d5JCpMmDg9vVxpsA+eNFYKkjq13uLLWmqWHCN4nPNs/7rYkoxAXoy/c34I2Vm8UHO
	 hLAjHYseS4HtYfNzqGMmRCuhcqCJ2FfFfduWh6808LZyiRh+jbjtaJ8/4DlqsLJSic
	 oayt53lz/XqodfMILwb9U2VM1tbt2mZXw2W4NALZEm14F0agYKmZwbtwchX91JSGUW
	 FUWdeYaW3w5wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC09CD6E43
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 17:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177990375369.19835.16948226456416944015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c40cba3fe8b9c49bea9dc138c2ee2eb62c79549a95dd142cae33e1ec82ece3fb
Date: Wed, 27 May 2026 17:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779903753
