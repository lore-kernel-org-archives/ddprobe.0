Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C35364A9
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728761754; cv=none; b=XLXu37nYYafU6IXrTzBWp2rKmM5wUVpd4cbFjCluls6VHK1H2FGrugFx3hPfBTXFc1GQNXGN1o9WGNcuM1vPW+0oqwINO4gRhQfPXOD058aDBdMaPYA7rLYmkbEPRRBN24/RNeWbwdk23HgmXRhgKCqYu3Ci3OmEOwIZEcWwU1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728761754; c=relaxed/simple;
	bh=VYIWNljWv36ybB+Rp8AdORLAkOYvy0rzYV7hx4QH7cc=;
	h=To:Subject:From:Message-Id:Date; b=I6jKXfD/NgCzhNXWoE6fUIILK/hXWHNPMgBdXlUNHZWper0upxe8NuYHDMKP117lCjHrZOtQIbGjOY/Ue1zowH77EaCyFp665QfaKlnyK/JSq9GGhX+N84f4NYGya2Esjc05K1/MTa+mNm8oize6txttMvKNNXMGbPD2+k6VIBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HPJhglV0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HPJhglV0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD72C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728761753;
	bh=VYIWNljWv36ybB+Rp8AdORLAkOYvy0rzYV7hx4QH7cc=;
	h=To:Subject:From:Date:From;
	b=HPJhglV0mkh3uo7zTOO2gfbZQdDoggUHx4YHkA0f3rC7q4/m02cFraJ+rDNXqo0uS
	 8VLFBXA0S9wnAStX5hdsyXNjvOcvL8WuOIJgwyT5Zkj0Iy89I15xd+mCJOPcs/SsUX
	 /ypTtSwYSl/SGD84Tn0EBvhlRvS9rtaqgVADVuIXPk6+a+boeF7FeF6mKiYUQLRhMF
	 hQI2MwZUwfzN5iLsY17OG/hysB/kca+4/Y8tklnooYMhkWUymsqs0ticd/T1O7fwKh
	 bu8PHPMePYJtaxLIe4kO1DOhG0GjTxQSGWhIQqTkmmmkiBOwx01TgAcY/BRTbGgW8s
	 dlx4K0j7hfFlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D7ACF2578
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172876175359.18778.10781538020649180824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb62895fd99b5229b3bd134f78265b9a7e8eb0235a9016fa4a63a548a2b18a15
Date: Sat, 12 Oct 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728761753
