Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E61861D078B
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727876754; cv=none; b=H0aq4+8b+rq5o71T6P5FinBXJdsrPq+R864WRrmyu34aZ9DenWuEsJQPtY3SVKn5MvnlsNQrDaNhwgwVUV8g4bL27hKEScaAddgAPHfGYBYAAYRWacC/dMPjeJcTZ0D/0+dwYFqysgS7vBpsSmdOWraOKZ3W6rFjB7nnVDsPU5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727876754; c=relaxed/simple;
	bh=rShV/WbMbf/h+MzR70fFw9L3rMLaECPiMZihXpk+mig=;
	h=To:Subject:From:Message-Id:Date; b=TC+ms82U3dMETgqQaDPNKu3NjCo8euPed+pekfGxHFl99S6aD5ItGXNPVCNPcVUgDpwP/ExVJDQe3f+IpsyHCU2Wo2ZDZpoXzSON+ttvzDjN/w8dxQynkHJR6BqsiwkYXOt6XR/Zhrlfps095PCgpP+N3hQEVyTYqi4P7ARBf/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CalH09zp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CalH09zp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2297C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727876753;
	bh=rShV/WbMbf/h+MzR70fFw9L3rMLaECPiMZihXpk+mig=;
	h=To:Subject:From:Date:From;
	b=CalH09zpje//kp3grrZo17WV5v5VgORY+2BM64+avl+UM28fdZB96BdipvzFoM/Br
	 43s2Jp5ONaR9ucS9SfCwRs21PG47gc8ZZeH8dq8MdLCkjrXZR7yd6WREhc4aY3FVPV
	 OEzrL5JNNjBChzjHkiwOpbgT7yokQ6NK/3XZClK05fQTm4wK9tkhYS5Pn0EAjURgcE
	 yKh8qUwoi8FqedR0NFKszpSpYKo8O9Y8juWMeDzLwRso3XsgBUJruY4OjycLH0IzSw
	 qqLhpJtOBJ8Vza47jg3JkZ06sOODlE9c3dLiKXhueNuc26fOFWJlVFIOg2oH22AFNL
	 Y/PkhbPxIAD+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB51CF6D2C
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172787675362.1313.14601767777886148587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 356124079b119b44d3fea95fdc4b5179149615e7a6f3f1612195f59d72b35862
Date: Wed, 02 Oct 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727876753
