Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C87C21CC64
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770864294; cv=none; b=AmSdVUvUwQl98UvN5i0lcZa7i44YPWt99/j8qtlHerVL2yftu7rku9Pkj++3o1u4zZuIh9NAafEE/TB33KXZr16D+RwCdZsNtefKQYFtm40+MR1XEU99lWbA+L46+RYnloUlpwz8Pa0qL8svCbnNfRUglYzAQE+XxFQFVwaLtwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770864294; c=relaxed/simple;
	bh=iemvPDwlp0ZmSppNZq9bI7Vlqaxs7nUn9xDS48jrVKU=;
	h=To:Subject:From:Message-Id:Date; b=LoTCnKomUSLCJIpHWOFoJd3otfzVUQuNa7BKRssP5FIgnYmw9mAaksX4grhqAzMEZlWCR6BYtGkQZJgqpbgdDmqbcz+/82ib1Ms2AuGIAvX75EF6nrnzafYBIjK6yvsm0aL1tZ1H8OTjcYVUWjLULYpsg/uHq/f3BFxLi6239I4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cnb/SgXF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cnb/SgXF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF3FC19424
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770864293;
	bh=iemvPDwlp0ZmSppNZq9bI7Vlqaxs7nUn9xDS48jrVKU=;
	h=To:Subject:From:Date:From;
	b=Cnb/SgXFb+f9F9zhVAeOyxA8Hwg2L22ufrxofaPYHS+xODjqiwG5V5ISDPn8s2uDh
	 nVLjNTXOt3vKBh+VoiO349h97f8TvQr5pK1q8fcfh5Bz18P0ihbu+Bo4XeTSmcJnHo
	 vrh85fAVzaUl072ecY1+ab/hDrcycnLZ4b+ePt8ayo3RH5+Rm8SwOvRfeUfPAnb9rG
	 Egi3cTP7mEkaI+wjgjr5ZNtNp0SU4pDvj4lY82gr9rIrxSewnCY6ugfOP1wJRyk2bm
	 xgn+vV1rTx8FQ4YsRj4rXJDZL1gb63pBWhLzFY9PGLHY9tzvrxhFgycKC1d+3HcKsi
	 6eUbhqCCX/XAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4C5EDF020
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177086429361.16164.7363985113445286621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b547fb1efac2e0a877f7aaae0518a667c39d750c613c8b0723bbb5dcbdbe6fe6
Date: Thu, 12 Feb 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770864293
