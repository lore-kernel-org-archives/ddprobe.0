Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF40534CF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756431593; cv=none; b=S9UWtgffcSUdBh2AySiFxQ+NqiisWKyWwmbenQJNSiY86440254adVl+8+/IJNf2/91GoyoItszxi0MUgNdaSl5my8LBz40M9Zxks8Ts/AjziJnMvilb6M19m2/3nEIVf949fu6dLb2eSZjWs9zJL8IB70LDVzhQDHZ3LllDFls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756431593; c=relaxed/simple;
	bh=9e6t3tj1LqZjIjXG10E0tc22gds93VR7kWHM1X5w0cU=;
	h=To:Subject:From:Message-Id:Date; b=N3MrE+M1CSGX5gH5VYDOzWq1E5VtPucYi7Bv5Owoq9ki27p5wt9rQU5KpHvudXUG+BCScRUFoNkTqe700EKOLtiyP4zGuJzb7eG8z1FFXQGRky42NmeRRm0IikR2qOPFzt+P/0XJYXThGF8IZF8v0w5sIqpkeWR+DeyAsALxWa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+UQstQs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+UQstQs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A570AC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756431593;
	bh=9e6t3tj1LqZjIjXG10E0tc22gds93VR7kWHM1X5w0cU=;
	h=To:Subject:From:Date:From;
	b=I+UQstQsH2LkHjAyyGpBipeq0DPEpyby19Ga6taG5NWQv63n0gLC/5FbDYNICrJqZ
	 dHWmW0UtcCK2SMB4X6ewa7KbDDbNUS5mjWol2NSMKLFd+SB+skFasRxL1kLkjN+qIv
	 pL22gDh+G/n+3o5OFj9RZfXxihaLWb8ehHZMH8W0dmUJjV1lDdBDeeYYcH1XIUdlJA
	 8sfNZgUhNJSv9oqm8g7XBBjqibu4mp7qH1+JLmDCFbdkI7LZPP78i7Xto2sON3YHc4
	 i6oPu8ogjB20mZzyq82itqscoCsAD7TBMr9uKv23wnZNYCr5wnJqpZVMNG0mzNv0A8
	 GKUez4l1XlpRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E879CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175643159357.26554.12263885443270598007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 148320afdd8cedd571e519a6c0a4a16578f3ae4b102e0c5f1312c94561b745ee
Date: Fri, 29 Aug 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756431593
