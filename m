Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3722AE7F
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753004394; cv=none; b=fcjq75ew80NfeGad5ySfs5JgxFjPkNiGV3M4q1Pv1uwRYq8bVhv3e8rMGIrYLLHSXA1PA79P766IPyPYsdp+e33GxWg8gNHHdc8dZBvsaZfcUUhsvSEZhTaKKeYXB/GhhySEfPSunLKwQ3axjB9L00RWZEn3Lw3fesSjAu51jL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753004394; c=relaxed/simple;
	bh=73v+MKii9Ats3hGmFFJ3m/QABGz1Y9FavtV09yGzV10=;
	h=To:Subject:From:Message-Id:Date; b=DCA62/8tI7HTvKC0+k/w8isFjwehlPsGFniTdsmSzl0rDYJD/xh9VizFKgH6iXrEF4rZml9lBzPlhOiOzbFZy4X1RazrTe3qh0eH2MEHksZzSHefF0xxlUqAGFadJlwZA8j32BBbInwnBE+Z1a9idi2Uv8MoDYjoCbOWndhfoyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FX/Xfsdt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FX/Xfsdt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BF1C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753004393;
	bh=73v+MKii9Ats3hGmFFJ3m/QABGz1Y9FavtV09yGzV10=;
	h=To:Subject:From:Date:From;
	b=FX/XfsdtBjadytIs/T9lWHmJ83Fp2QvvA2y2DxsKETduh+9yFsI9gVSvUSoyJu/gK
	 SDx6B3+qoTsObiRlo6ncl4PEn5doAcHjnpC3seNzyATLnNCzOb/h7Fk9pbsRXO/VE+
	 wUaBB/TKa2AAh/qGyCAyXg8k8dttGcM9h93mrNgY91jyr0v1X6eqZfij2oC3qHgdS6
	 nr7qVEG32oiykQ3E8nMEwx7R4l+cFtVPFNLwKklDsboBc7NGLdqerux1YYr+iHDdBe
	 e2bd4smLeExZmMypkzFIbD+jz72KhPl2adybUNNU/jKeSE/upDhdxvn8IVUOuaN8we
	 TmKv6H4NTjyrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92936C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175300439358.27372.10669933797882846489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b1982565e6f5ea5e6bea934b312b554992ff0b6fe7bd454e83822b25f1068e8
Date: Sun, 20 Jul 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753004393
