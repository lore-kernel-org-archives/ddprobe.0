Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A5838DD4
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 17:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717696643; cv=none; b=H6aa1DIy7diji9cGboEX2udrrr29kveoEMNfSknWc8GMHjusYO6h7igXmMro8BrxszW8D53cXLDsuN3aElgbL1CjIU4GBRJz8Sk/9ZYDg6nCTgc+5W3sfYhVNG7Wto6ig0JtsPBnAP0+JZb5nwkkv6ZUF1hXrNViQRE2uQjiOys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717696643; c=relaxed/simple;
	bh=kqrcSvYaCZL48GJFDQMzBimAyJn4iWPA4ZwpnX1memo=;
	h=To:Subject:From:Message-Id:Date; b=pxXrp2zEcMfYnnPkQUh2dxOUYi6gy7Y6Zsdv8+Up4lSudHrRuAohl8WMenZxyOUiBtkeU0c6VgSsvuMydGcH+ZtCCjX1kFiO+Rtzs1Y0c9AYrEeSbIeyVoyIlO5JGGfji4YbTXs548FpNM1Er1xlpPzWI7U2N8BTKUxOMr5ZNY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z9kvefKe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z9kvefKe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2564C32782
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 17:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717696642;
	bh=kqrcSvYaCZL48GJFDQMzBimAyJn4iWPA4ZwpnX1memo=;
	h=To:Subject:From:Date:From;
	b=Z9kvefKe6iaOVKvBMNmbw+Se2YFQgpm0mcbWNj7CY/nkLP2ZJx7HFIUmTKdssdQOM
	 U/1BDwa1zeqhjevqiHoY/O+bjgQbiGEflgxhABNK5nrkFMgZIt543QikH7Vz52NU34
	 Lw2/itE11TeDTTEf3lsxJ3CcKIgOgvGr6Srx63YE2+b7OnbuRGbT0/8lnMgGgJObn/
	 LUDv75hMg4PuG0deaLQb+81q7nmdFqb2DIXp7My59jSXGqig/48MtUuCCO1tNQY4hV
	 kJCJkIv5hRVpKGHjHTAGfom3ITVoK4c5i1ylsgT5gIsdabAOG8ecpFQoxWvjZUd7rp
	 q7XnL6XRy3MYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C141CC27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 17:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171769664278.13218.7259262465296765908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb438fa6873a5da656e84b8a258691e6b512beeb6fe8abe60204a5055cfb87b2
Date: Thu, 06 Jun 2024 17:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717696642
