Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FEEC35674E
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784971834; cv=none; b=fLQZ9H7QSONfQUe9mBljUK8r9y0lALiw27o9R8CSeLoX+Pn0n8xBYmKaGGPsOseJxH0+HffFT+O7I6F6YL0Zv4j1DU/OgJvrP3E1VASB8moFzJYnak8D2Q9tsCLBHKom3/diRy8U+z/UEL3m2Huzpbhb+jq5DLB8yI+7mZAjigU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784971834; c=relaxed/simple;
	bh=edO4lTBh5dkAd+1kktxFxNejYDBfICg0LPEw28zRXCU=;
	h=To:Subject:From:Message-Id:Date; b=PquLB9TWe7ar9fUJdgEns6xAVUtFIWqMtiQoZvXjNFgQwTXHTi0cWRHlGu/Q+FGgo2nj4gj8j7xsdxD8Xy3GKw41rdHuWO9M1RAgE07Dkt6NgqAcWdUlRhpyBrR38AW8itLlA4UDzmhCPBtPV0JFHrW91Ueiwd5YCIMAjxTHWVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C/kBvPSc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C/kBvPSc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD845C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784971833;
	bh=edO4lTBh5dkAd+1kktxFxNejYDBfICg0LPEw28zRXCU=;
	h=To:Subject:From:Date:From;
	b=C/kBvPSciG3cWpqS8E5nnQ+UtFyg+Ovd1fQI9/tWaoziUSN0/FbBkc1GJmh6eHdNz
	 nJTZT2lQvoIxw84JetasoX6gXW3CAw3j7FF9KwIZ2ddomP+pApOPc7/FcFqaB8KVgx
	 vPbj7jb0cTwMRzcGpWav7NYFjEoxz2I+YPfTdN86nRpwHvUmAZtmI11pZmjJqsrC6e
	 UWUd6u0xgtJ1zLLfVMbxLG/y+P+dLDH/P8vi4SyCYSRTrMIH3L/QqFTitpe0lp3i75
	 8Jba+cdkizTjUQQrK2GuNEdMIZODJ/HjMZa7ejcJ1RfH5jV8zIqXzGHDQcRqx4ASAb
	 HWIgIveieu6cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2EDC531F9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178497183368.2204.16916228109623713139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be69b11c5434da35677629d36f27046e1c7641f7e4c0eaf3b6bd9ae5136f5318
Date: Sat, 25 Jul 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784971833
