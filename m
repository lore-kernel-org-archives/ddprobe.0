Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A9794A32
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790704834; cv=none; b=bRrtXl82KxZYuI/V/NYQTEes2e1iQb49EVI6WD/0Np4u2dIysKNZeFPosnVZDUgv21zhBF/5/56WqnbG0kfWrvDZ1Xe9By4juEfavxwm9W2xTPwU/xHX6K4I4JpEo9g0ws4LRq1On1BTw99HrE/xx1iAZstofAg8lxTKqAyvk8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790704834; c=relaxed/simple;
	bh=nePSWbQlcMtZoWdTTTC8k4ssjYWVlP7EReUWuNSCW3M=;
	h=To:Subject:From:Message-Id:Date; b=TyWyVsbiJgGv25qaRdciyeLRbORiXwhqYTJjmtBX57fI/W+yUB67mZO1sY1YYBaBjB/CAL5HYT+zSYB8Y1KaJlJHzhv/9tWIQVTwwf9dz9WQYT0NDgDKsqfC1j8/KGlF0tTIc6fxj0Ur0d73Fwa8cDVEQAall6GeOXrEGUcZTVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PaYVCqLm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PaYVCqLm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB1EC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790704833;
	bh=nePSWbQlcMtZoWdTTTC8k4ssjYWVlP7EReUWuNSCW3M=;
	h=To:Subject:From:Date:From;
	b=PaYVCqLmasE9l2xB3EHRSWNX5igFyp9UhUQ7FHDTGmn76yfuOjpdcVBIOGjZT1NJl
	 n3ZDN/93NdZ8vrO4EP1baRLeWH9eAH6sYkFTi6MmKKfLuuzuQuWyFENG6LFL3LC7N4
	 M3aktLACAbS4hb7jpj7b4/UdpdvvFg7PGH/jqAbTSfMkHAlD1UpraPpiUYMXZhFJUI
	 mE/5VNQwwDs4oJ9WnLI95iV03Xpo59U1adxoO/b/0PRUZeqm5bcdKFC7neHUrlYlyj
	 CWCM7Oo+A4nM+dRGCr9sqR0UjsbcRem2NoLyqkCa97cs+LXuvjHj2lGX27ISGDSz64
	 vBO6aHtc887rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9453CA5FA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179070483368.4123.4726005955695951601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd19959ff8a859c2869d8efc8767f6b330965da5b44ca2231e1266d3a2e9337f
Date: Tue, 29 Sep 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790704833
