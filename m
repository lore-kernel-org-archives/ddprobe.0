Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1560433C52A
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766156034; cv=none; b=unHvpPYnJTAafwTtIoGjvQgEWJdARPcCs7dM7OYsclgHN0AGlAPmIYpary7vbUYXx+nVeHJTs1rRjEmM2VBm+9Z94KELh5Spl1r4rWvJPj8lhNErGsN0leqmKAV3SwJ1ldY0RtrxPD0kWou4FmCiVyG8p61dXc6BX0Uf4u47n1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766156034; c=relaxed/simple;
	bh=Ttm72FSo3r/i8xJVQSqEGsLDUnWS8JVkTSxAhQPUrF8=;
	h=To:Subject:From:Message-Id:Date; b=D213Bf/NDVxpqWZK3cOyE4K98Erx0fDIwa97RuEeu6h5O8JzQZ+t033XX/E9ayu4hlD3GWm00BBgxE7MLm8TJQstVvnlNa7xBEaMJKNleoeDt+na6XwM52E4ukqcvq4KV8+az10QfAgZsV31Q8yOCRKnyYKheJZ/lfIPjrvM6m4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KDk539tn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KDk539tn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7A8C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766156033;
	bh=Ttm72FSo3r/i8xJVQSqEGsLDUnWS8JVkTSxAhQPUrF8=;
	h=To:Subject:From:Date:From;
	b=KDk539tn38lI0dsNCLWzgCLNXyatZJqoKu4ja2vSig5PiQ4Ko7I2PO4K/V+b2XTeg
	 HavpeXRv5iqXTX4LkPiZtgaUsVaASq+rId9Jx9dtgu6DDgUHAEcp6qoiFZiaJQxMMl
	 t0DmlID95RctZjw8f3NOyfsoDs3BvUfwVZfy+LLrSE9auywFSoNPK5Kr8AbrgVUrpP
	 ZzxUQCRCQLspcNZWVBA008c4/6ZC2+WS0wYgiaRwNQGNIFJ/VORE2r0Udscn65AWJm
	 l3gk/avMfYnmjcy/sLAeAtiqTvKb1Dp/RU5+vw4qGDOlX41U6P9dJqewawaycAa93J
	 xzubKNQmkkiiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCD0D78785
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176615603358.31314.18402574972639278034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 894ecc06e51f28e94ab368118806e89fc5d01cd46ce6e1f8b7efccf404d06e61
Date: Fri, 19 Dec 2025 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766156033
