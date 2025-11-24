Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B5E1400C
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 09:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763976714; cv=none; b=okyYP6vThR3Bc8X1xpponqldSRe9ee5S8WwCQm7rW5L42o7C7MYqiOb33Q041LEpPi5WdxfEOm7LwSCQdHKoS9zcxnSGWzxR2oUApoeDo3yhpDzuVuZX9E7aKSWh08Qw6L1FGyMaQ6lIT9LYz17pvWxhjm5sD3Tu+Jy3n6JiIAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763976714; c=relaxed/simple;
	bh=agD7FRkxY0FnHlEBdYaMWnPn9eN4lcs/bsywr//ZiGA=;
	h=To:Subject:From:Message-Id:Date; b=OzaQ7w2noYWo6IUuhUJrCWALwYpLNeA+4BsKZKABlnlnQdx9SK75IrVcvf1wPiiS+07FDAYJf2hNpHi2L3hMhlZwUgpa+Sdwuep90op+35zAsWvrwcaQXIaZNEl/cEMEDXJciQgTfstGR21QE0hc/zjXQ8Q2EViiTn2ybp6/YX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DcxSJHls; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DcxSJHls"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6982C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 09:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763976713;
	bh=agD7FRkxY0FnHlEBdYaMWnPn9eN4lcs/bsywr//ZiGA=;
	h=To:Subject:From:Date:From;
	b=DcxSJHlsBDmC0H4zB/90kxHWDGtG8c7+oHnASVO0soKO3iw1mwhRRy+l2v91c3gwC
	 XhvAOoviUbtv470Dkxe1IzjufRoRZ89yZIj/dYkxKNlAratGAb2f1q6c6M9k0X/1Vl
	 siubec4oYyXnqujoH+stJ/Ghqq9kQWXrOYNrEK5K8qKmePtXSjoehLYnr7IsdGgkP3
	 xryi8sxInlEkjlGQNTuDXYy1Iey7ILizt2REyKxLVsNA+H6RT2xAhBNX0xcigpaCgM
	 FOtDL1XoPpsbfck/6xTbPXfHS/qDUoNiVy1Xnf0h30gKsbyrM7WqHnW9xEcp+q6Kcf
	 QNLpaRgIOdR9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94102CFD31C
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 09:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176397671359.9411.3512227319683844821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf801c94792cd8e798fafa1a77c8e28569a221e9b2138a8e4791d38d9bd5a4ad
Date: Mon, 24 Nov 2025 09:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763976713
