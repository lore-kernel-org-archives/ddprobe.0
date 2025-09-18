Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2803A1DE3AD
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758206994; cv=none; b=Z5s/uDo0epTRJCs1x8nUlQllM5mBl37zWuE1kbihMmVEgPd2RRFNPsdlQtuemIAelcjvCve5Qd73EhlTDfzqhcXQFiRr+DtG22Yu883TfaQt+2j6aw4rdElKDz149WGR2pco4OxzMlcXZVv8+NqdyErrs3tb9N38y5qt6/JJA30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758206994; c=relaxed/simple;
	bh=ztlHHuZLcJsPcg5uY7d8jHDhf7ZsGpqv4/9MzzMKKS8=;
	h=To:Subject:From:Message-Id:Date; b=sHfdSAq7VpKaoB5Py8rTLaKWM82mRoheqZhHHYdgkDhFdSYldBfkC28zjNS0xWfTV9NbtW+ux+o3AcQBFrstaKe9NspicEI8lH+rCQYCPt5nQVVPL3nBjVXxXRqNbWcLfEj40vVEJ7OvfLnE6uEgV0jdnekvK426nRs2jMO24EA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXC2al/D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXC2al/D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FE2C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758206993;
	bh=ztlHHuZLcJsPcg5uY7d8jHDhf7ZsGpqv4/9MzzMKKS8=;
	h=To:Subject:From:Date:From;
	b=SXC2al/DbxQgC+pZhjjSXB64hv2CKsbq/aMyiTlX+lbRR+5zSHbIYZny1AJ2+yUco
	 i1/ANKrfywsRniB3mdjjYmhW5AnBC9hXa7L5kswvramABX85zb6EmFclKRx8Bk87s0
	 Ld0oxMpoPqNfeQlQ9xrxOeXzOsmf41cw0Rd1GSXU2yLmSdvSPZ+cc8nEkMWLZXoBZ2
	 AdlsMJsizXQ3D6cxjF1zxm9dA2ogdrEwm757ZcTrWh1f3mB7dSelRgFnYvI/USe+ZX
	 YEGwvVQs2vATLXh2w3UAxgkWBmzMs9YwVd4YFGQtRiCjTATJmC+FPZK43EU5a8UG1N
	 fHX26yNsub5rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F99CA1013
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175820699358.24989.16168628724513169477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f204718b29f824aa1637a29242f91526a8e7e2e1df84017108d1ef45f23c4063
Date: Thu, 18 Sep 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758206993
