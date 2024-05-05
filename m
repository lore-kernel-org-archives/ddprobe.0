Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5082E1E861
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 18:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714932143; cv=none; b=NTXcGAVthTpD1oKFPyEMbIdn/CUl0lRXuvdfC43vDW8QBJoQ43rFv3zTi3DIjUtQ1JpF/sP0MTEJJi5Fe7C8B3Xw01/YUynnUNTu9rVyygMHphJBybv1Q++MLEclwA59jG4IQL68PQ/Q/isJ/2h5rUKIowFOsfRLKcxRV1Qz1Ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714932143; c=relaxed/simple;
	bh=A9yWs+Q8kZsU3CYUcEaSWeR9NeCV/kXOxVcUEPNe7fk=;
	h=To:Subject:From:Message-Id:Date; b=hW7GcIn+gTthLlFP5YShfF7ruCjQT6dBxvEiZrcL/kXujEW7kywVdjpBP8BXkWXRxHzuXJmMjwGvyzU+Cj/XyR8bcgPMApeEYQwzww0tfS+cJyrcmLOxZcVSKDW5XjY9rM5LyNO7AvGQHOMmiguQfUkIF5eOHjHF5WjyEaVfe1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zmw4Bgw7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zmw4Bgw7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D71EAC113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 18:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714932142;
	bh=A9yWs+Q8kZsU3CYUcEaSWeR9NeCV/kXOxVcUEPNe7fk=;
	h=To:Subject:From:Date:From;
	b=Zmw4Bgw7+dW4KSqEMUNFqMUjlVm8ukGzjKkjskcJVrHdK8WLWTHsvaKqr2hdUYw0N
	 Trwb3TN0ZfEyKdeg8iCXKuE/LFpi8A00nCjNRz1FSolc2lsrBIs1zIwQRHEPpluzaC
	 hAhN+/qsmHRy5ljihu6PeB6wkAT2a0i4O3udG1cy5QJq+aM7xF5gpEDhIXBxJr82e8
	 6VrBFPH9u37Q3mW75kTwHvyew1luvIdjAx1KcpynsQCcPKChYplNT4/fnpKDTK3ZAm
	 DPsFTl+aBFDBcBxFztGrRyq1Ndks0ki/KsoRvSMYibZpt29YDBEttvwy8HgKtic0Ar
	 Zyr0KUu3osE9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1DBFC4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 18:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171493214276.31964.4744849804283936966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b845d408809a9677497a6c7b0c4f9a4d5f20daa57a5e9820411f0ee1eeda3f88
Date: Sun, 05 May 2024 18:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714932142
