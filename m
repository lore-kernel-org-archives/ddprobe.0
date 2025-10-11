Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F717188580
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760221794; cv=none; b=oLdRBIj/nfetpD3UthDvFeqnsBJJQXXZN7FNR0ojBPpbLyN6/JrZOUaXVWqtwYHwKmPr76Uhi3XpzHTLRgCdalONgTJ4wWkB/4GI4nqLc6cRzX/o3s9/PmBWb2QmkAYrY4nKQ0rFtkwSAWmmsxvuv5Aa9ZgcUz4kk90BeAM5ko8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760221794; c=relaxed/simple;
	bh=o81Ri1gyQE2mECNXg3UMaAQrXl4wE1S5g4CYVnAXyKo=;
	h=To:Subject:From:Message-Id:Date; b=Adg6ApKCLwwtfy3td7inq1ihvfXVNlsgEnHqxyjwfa527vFfE1wevL38B6PB48Rf4V3nG4MSxr218bjTSuCl/rc3VCcpEA/8go8DlSUDZuvnDn+ONoG5t2MI8inWMrXPJwnbHYkaFUb6Q2jiyJuLCv9jqJwlaGFpe1zMzQkoucc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tb9diO+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tb9diO+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46CDC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760221793;
	bh=o81Ri1gyQE2mECNXg3UMaAQrXl4wE1S5g4CYVnAXyKo=;
	h=To:Subject:From:Date:From;
	b=tb9diO+mraCV1kynsVGIG24ganuROxdKQWtUSQW6clCPJuBjn9u0oHbxiph/7pHni
	 AAP5vOXCwdtfYkM5abqP/0Of9ETmsS1pNgbS843ziDLLgJ8x1jfhUW1GCaBSW6i9I1
	 V8DhbE6hNlglhRSifxmya4D3sOVGM4Xkmv2nMdVwts9qJ/nouZTFB1VPOrxyKM/aID
	 H/6W+o8LupTGd/XV09MH6ln6djVtokHBR4IoSM3A8EV9hH3yY6RUwklh7zESkbSzJg
	 TkKqb9AuVEyCs7xexgmTPuDaRllkof9yBN82bly/Phbz7bW2DCT4NHWWMsmo6nQe+w
	 DGakcjYkZCn8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9072BCCD18D
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176022179358.10034.2293384932384459397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e5d5164ad52ba22ca015b606f0fe99cde382dabf05b08599e433e3a17ee350a
Date: Sat, 11 Oct 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760221793
