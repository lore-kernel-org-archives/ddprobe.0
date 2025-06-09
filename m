Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154361E505
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749481794; cv=none; b=fAQDuq7UkskyxHJNTPj9X/RgL5vssIe406hIa4LP/w95CUy4G5hrxrES5Hc2S+oPIaRcDJBWo+RsjD2EqYa3OOR2OS3EuXm6PjIQ65uelHXyagbNCECjFWuLKQwnWwOSZQmuyaw9rnReKY+jjRTV1cro+swTlDbHkLaURIG3HVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749481794; c=relaxed/simple;
	bh=ZWaRsRBKIZp9F2b2LWudspdcUJ6dNKfe88+PqQ5RjEc=;
	h=To:Subject:From:Message-Id:Date; b=Yws5kUjx4nfTthAYjnm2HdpzyVzc18aXbKI5QYxyP5sODYYS2JyR/2X0i86VUzmvY6ij+U9mypS9nYAtUegB5hf8JunNYubDowjfrnGhMQ8of98Sp64etSj8UK1MuXnQqWaoyFL07YUGXIHIKyiqCdsat0z57dJxnzWW5330HKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lSA7Zp+4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lSA7Zp+4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0524C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749481793;
	bh=ZWaRsRBKIZp9F2b2LWudspdcUJ6dNKfe88+PqQ5RjEc=;
	h=To:Subject:From:Date:From;
	b=lSA7Zp+4cMh6qfdUQqYMET4H6tpIAPPK+k9Dicpz9/E44WQ7ZHfFP26/+KwbKJAWu
	 9KyjgvrdGqB/fPSiJUzfKYXbD94Wpo4QRV11FiD1yHoHYC+07XBaknTTcccf9KSptd
	 vUsFyxIUkXetgUQ0Nt+H1SaNP1JUE9XI7rJjU/Pn7NPACS3ZIyKEQMC3K51ZX2iAa3
	 03HoL1gyCn3JlHLn2VcAoDdFa3A7qb3L5RGlEOYRq3USlRBacAyWmW5rJ2LGePsC3Q
	 KvprFtiIUu83Yq9PJtpwS5kTkvCHgxJ4e1L4kdeszRISciwZ/lgHWmuVE2AsGBfbbM
	 pTNzBStd/AMHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F32EC5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174948179357.5857.13363809917467078002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c35de60b4489676a49bd1d22bedcb2aecb76078f0363b20dc8853ad3472c1d48
Date: Mon, 09 Jun 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749481793
