Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC3AB471266
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785875434; cv=none; b=K3coK62smQpRyf5EVIzG7GqMa6IFRLB+Gjck7PvqzWMMtT2fqtSBIbuMCtuLjZmm8mrTVf+oPOkUPc9tU5JuADMzUIcA/qWBWKPJRnMibkOQ5hc5R2es61jACavIRVCoDrNPv414N0O9rQLcMIbejn+PKOKzIloOcouKPTw/UHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785875434; c=relaxed/simple;
	bh=/RAYriR7kMX4unqWe/sfbHa1W+u7Ezs7X+vxfiNy3Mo=;
	h=To:Subject:From:Message-Id:Date; b=sLYQnhcw+b7HRTe0Py6jfVobSRGS77SQr9pg594GvT1JR8wtcT6lQs9uSTegN6/GymMvWlwchuW9RI5PCjRvbQO6zilRDRNO7dxD9sKzlog1eM/d0Y2KDJiMnUvfjWlO8UZ6hF6b3P2oF7RAA9VpnC5BH12/hvaF2Y04gCWbLX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vAGTAj5D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vAGTAj5D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D43B3C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785875433;
	bh=/RAYriR7kMX4unqWe/sfbHa1W+u7Ezs7X+vxfiNy3Mo=;
	h=To:Subject:From:Date:From;
	b=vAGTAj5DwAR7gIR4j5NJ9eICYIfN5GvfycmvVQt0kqW5OHQAyf09W2De9AUNFvFaU
	 rlwAI5A1z2Lac3BkI4q1KBkojq1OJuQD6LzmxD5iLX6EBaRX7H+H6u/xDSyA9uM4y0
	 z986v65/BMFBycdnJRTBjVBZa29yAlrOPBJMgXNGXXYlCC1VVmZyWUVv4r7nrKRw/p
	 YfOrI9wKWiboMtX+hcBb7WIBwZFSWYo+9BUbIhEXNUKgNeYeln8oJqKZmocv9lOuir
	 98DLlcQbmIV/+tphg5kpZFOjaUyUa6ksM2Tg0iB5IPUW4EmzvlzD3N3w12Gd9cWJ2X
	 96FPITC0xumUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF60EC55822
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178587543370.4585.8981067455297240898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9047f010c3dd88022fc0c1de8a5c405ebecc561eb41204b8a86f055775b0f21
Date: Tue, 04 Aug 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785875433
