Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B73303CAB
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787814034; cv=none; b=VcBCG1DK7MYW8QCJYmIwIwG5I1puZ2VUjQanJpSyhjqkOc8WLTm6M5YGP89qGaMnytYWsSFA3U+lrqAsHUPZ4CW82pHdScGTOPHPfytf5a5LHL6Cc5Kkf+sFTOX32mTNhfaHmbEvZZs5ez7+MOt7xwWZSalW13/5fZ0rKZajDRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787814034; c=relaxed/simple;
	bh=aVoTVPHe9JSqrFWM6uQqnlI9cDF/b0zKTmUzTjViYn4=;
	h=To:Subject:From:Message-Id:Date; b=OG6fwtDQxhqDbhJ/Xp9Mwtk8PJ3DbnEn+SKaNwT9dN+QErIesLnsFbOmXYiY+WyQRV3WENB5V5RTNfN5bnCui92HDk/kWuqq51RHXTAK/PH0dblR8+f2y6+5nOMwXzsXpFklJjnbkut6rgDdgnL2OEGuKEahhbtd03KyUi3jcZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fVVZUT+b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fVVZUT+b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D107DC19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787814033;
	bh=aVoTVPHe9JSqrFWM6uQqnlI9cDF/b0zKTmUzTjViYn4=;
	h=To:Subject:From:Date:From;
	b=fVVZUT+bUeA0VF2wEWxI2zHtIVTCFzIRxaF6LWI1qFyF/jGTfBfmc7MWq4NLNN2bv
	 AjtwpOlUvsqpkI+6WAiXrBKKbrXwrquRXdQAcwSe9j6Y01TLtJ6+wt6s9/knLfsTEu
	 PrIWVUjJKEidACTGiUXK8ayomOLBvZItHjzdgnWw0w3o5tXCgy0xPQ7f8U/TKXyGGN
	 10znuO1sCI0BL53HSpE4irxuAvLKzbjG3hfllrtBIIhxMnU8pzyS3M9TlmCF6/KLiN
	 9Vts4suysLlekp5Dt4JsEoFM8IhfEZnfxknmsY5ivtihuNlMcoFQVyDXHoDQzYF637
	 vL4LK/at7QCpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA69DC61DC2
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178781403368.31125.16679789193847655585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99fcbc8c0154a0c4c64a08a49b56c4df437ad08df71412c052bc3f7b4696debf
Date: Thu, 27 Aug 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787814033
