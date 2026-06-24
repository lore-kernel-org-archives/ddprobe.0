Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552232D3727
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 10:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782295654; cv=none; b=bvudn4eWf4QvtwOhBhP+iqQw8fSCsAnnPTxTsxMfewFHgK0hH1zGgn/4T1pdOLc/LENMWNnoFbbE7VeOoN3/JUQ70CZe8bfyXcbYKVf8LUMPquqhMWx7zFE7G5ePuHAthmJGS2OO+ryiddAw+rIt+kqG0pJquKwlMUbaoQBAjas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782295654; c=relaxed/simple;
	bh=FbydEMrM9KWeqmM8uI1skVjmAvAa/kpyAU9gZNGUlNU=;
	h=To:Subject:From:Message-Id:Date; b=OaT6mAvXx1BqPAfHq9CQAggiRUfX+8pXEcOhB5Ky7vgH0GR55VJ9sZTMiT6ztqB5ApkXQoWatl8WhgpqSQgP/jxtNgt3zTUXAvkC8kB/7WL9mBuYZmQ3su3gPdnSA7TwdtchZfiG/OZRPn0ASN9MzcCknEEun/E5lCeNfnnSsSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vpsw4MYi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vpsw4MYi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03B7EC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 10:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782295654;
	bh=FbydEMrM9KWeqmM8uI1skVjmAvAa/kpyAU9gZNGUlNU=;
	h=To:Subject:From:Date:From;
	b=Vpsw4MYifN0i1fLOhAAJTIFjsCVFnGPyfyw3+YN8GHD7e9bo1ei8b3Uq/dik0Jyj8
	 R3+4bHGVfdodHnEkMjE2UsKeHDlSrUwxjkmSGDVtxLnrq+hfNMfVrtlZcpYt+8gicy
	 I4AJOIl58+zjO6ws515ouuBZrrUqKLD7BO/H053RpjyDHbAWAB4JWzNh0gd29DwD1R
	 vfUjdcXTYDK1jbGomJHL97+oiXLgU9/JkaK2rqxRZzZISqLDohBoXKLVE9+8u3RBb6
	 2UZI9VHQRnKWuAs3gS0F/DP0b6xa5Gh7Rl7vreim5Wr/O6Q8XThwFXJfwHHwDna6ez
	 d1ULcVeomBFhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D65F1CDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 10:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178229565386.21255.1664343441560022014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 735001e09e4e1784aaef891c841b9a18c79b8d4422c1b2481bd9285fba6ee732
Date: Wed, 24 Jun 2026 10:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782295653
