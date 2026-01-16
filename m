Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131EA3612DE
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768564434; cv=none; b=pQoGywxABqEUqlvQy47FOgjF2AjQPrP/WPUguGL6+WhzqXnEz9tedU2woWZM4LUZrhqCAbictQ+crHHdEMHmhUebcoW1mK/5Iv+AOyfh7zknnraPwml23/rrDyLK6J558k34JbyOBAorv3iHX6G72Pz68ReCfP75gHrFK7PhuNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768564434; c=relaxed/simple;
	bh=qQaR8xsOCdoNPOqlZVfRZC5kN3/B/xCX1SQKAqlgOyY=;
	h=To:Subject:From:Message-Id:Date; b=FM5qEaMCV1n6r4MTJ/Uqw9NiQ7uHP8TuBn9mJHvudp314s8aC/CGmBkQpqU+ahfl2hGYT/FFKYP+uj393rZma5aGRzygSZyoL6i0A7VBwcM+G/XNSailLx0+i0+HW5+Jml2hUYtRm/J4FLoaMZCmQhdUbGd8xUHzFhQEj9/BVNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dx+jrQDn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dx+jrQDn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1E8C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768564433;
	bh=qQaR8xsOCdoNPOqlZVfRZC5kN3/B/xCX1SQKAqlgOyY=;
	h=To:Subject:From:Date:From;
	b=Dx+jrQDn4Q7LBZM3vdGKS2V8yFDWrXScBRmoz2gd+939ZIQRsJuWU9buAAZ/bfz1B
	 BvfXdtIR+qZm8zbxV2GZlb8VS7Ifb+BT2s5t9wqPtQlpFK/c74isENHaxVpT1Cw84j
	 qjnSH74IYjiM/Zof2h2qgyAoDNjPsvgMHCSdq9WHT5hY5dxHVOE0oFae908kOJyMGu
	 3I+wrF33ElJayV+UcBDT4xHRigxrUTDDC124rTJQZLgx6qgwVCq4m1BH+yzIHGPJjf
	 8HUCYwD7dydcvhwKjaqScSpt2uyNJjvBfTWvhXAKqPddYmi0eIG5A/4Pdr+TscgwP9
	 gzZXNAzDM0X5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90349D48986
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176856443358.26793.10280386296436432502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d42be26d4766521fef95e6aa7c82090203d3793fb6d90fd2097fa6448dafb5bc
Date: Fri, 16 Jan 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768564433
