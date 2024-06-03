Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CF110F1
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 11:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717415123; cv=none; b=HCIR1+Kh3hOCvciUSsiPfJyiNgHDlYR4B/6DXt/Up6szFlQT35X7ZSD8tJVBBNKCprr3QXU5rO44gF446yZbAfqZ1oDe11FxR6xTf4gpPyKI8Zyw+Bo7B+HMOst/YXKKkVCJ1OcosAHmJ9iDzqbwxO8YKXJkWWWijga2AXz4AkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717415123; c=relaxed/simple;
	bh=IhlSF1aUzBxxYhPzLVS/6qqMe6hsdTZYGfUGpz6YxbI=;
	h=To:Subject:From:Message-Id:Date; b=H6NJYjWugmbiVL3L+HBB8JLNjaigQkH0z6mfCGXrVFEi9lvh5YQAp04b7bGGDob9ywq3yPVMJb5OTacdg2OPdSgptUj9ph676rEa9Yr2ohzdRZanbQ+sAuslKIADiLcKPPIwi2Hmq7lpGvM/y5ffkIYvO3NU02gjFxPJjKkxGUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nacq+HCY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nacq+HCY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E74C32789
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 11:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717415122;
	bh=IhlSF1aUzBxxYhPzLVS/6qqMe6hsdTZYGfUGpz6YxbI=;
	h=To:Subject:From:Date:From;
	b=Nacq+HCY7Jo5KEabELkwgq2f3hjGln1JozvasJr1gUkTNXEVHKlfXzKWaB717KWW7
	 xe9DMSLqfMPouNST/2YNzCEOQEOXKSpkqFpRXlLABr5l4U3VwPB4cwRE9Lx5bsGshe
	 W568Fe39H4902PvSuaTKEdDTshpQGqt4q5SSRCDbmUhG1avN1KDK3ENPrF47sfjuSB
	 0ngjQvKhz3yzh6dWWCXr9u2HPMd/8Wlywl5mQUf+fQCwzzfOqRNV7lsBPaqvEChicu
	 3doY+UzQw8z7lBoJ1qQyUgOFrm8Rka5JG0K7e6qzz4VMudAzxEmRSsH13O5btV9tX5
	 H5K5oW8yO8OMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1CC3C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 11:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171741512278.22367.322215166952026162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 564eb0f30981a8417a560500c481292ad5314865687bd725d71eef46656b9243
Date: Mon, 03 Jun 2024 11:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717415122
