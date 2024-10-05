Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F1B196
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728087354; cv=none; b=SXTxrE5/sUDPuGPTK46fa9dw80htqJ1o8Gls4gGHE5xn4TG3Sn2Mo6tUeZ0y1RZ0/NO3oEt1UXwZMoEgt5NYljqNDjL/Smvqe3MOkStFF9wFHWRr8GLy5mEnA1qajRF+nMf2uwBTU6k3B5fdylYIPcSF2cdrlvMoWcD33eXh0hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728087354; c=relaxed/simple;
	bh=zK0ko+ytyDTgtg5Cz90mLEpqZFwX8t/OtMMWz8PDAKk=;
	h=To:Subject:From:Message-Id:Date; b=WOyaD6tv8m5M36MLSFBt45tw8lqyipQjnwx2khhcvX0EQtOWvpyfUHOKWNC9cRGfZMgwpiU5FY+CsWo2zCrHGFMzU9hnKWRSfSfJvb3ywgU6gCN2KYmmsQTaXaDe4EUwINv3XFQgnwVdP3nvALNNSKFejA/SlWXcZEHtyj8SRQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yxg/A0qd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yxg/A0qd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB600C4CEC6
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728087353;
	bh=zK0ko+ytyDTgtg5Cz90mLEpqZFwX8t/OtMMWz8PDAKk=;
	h=To:Subject:From:Date:From;
	b=Yxg/A0qdIXs0nPU7rqqa8uVqXBP3X3WNk1TdjZHEh15n+l31leTMW/hIMb7vC1dcH
	 dJDoK4EjmiP5MCv5oQGTSfi12X8xf2tHgZPULw4S1TEXl/3Ow0OvbFnaMh1kcVWWbx
	 68PHI2LjUx2yoJp/R012hq9ovkjLDPXcLY0xIMh0AXuyhUZvs2RUk//b1ijUnjfrK0
	 fF/+33JWr8XkbT4vCQU5vuupGtCPI9xIg0etHA2/+P4LpQRxQD/nqN3J9Ylx3TX2gm
	 7Ucj+XsDkFq6eIk+rSdeddWiaih7DnNkMNxT5PyuRElqLNBKyf5RlWC+vvEZyDNssc
	 hCArpIUCKuXZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977D5CF8860
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172808735360.801.17844319389301963667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed6da3c687dc6c16b23349576869b48a42c1384c690efcfb922240e796a8e028
Date: Sat, 05 Oct 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728087353
