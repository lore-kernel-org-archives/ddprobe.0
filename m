Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D0B1EF39F
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751858394; cv=none; b=jWa6qjb8uakUA4iZAb6HkfHjkqjuNpPfSDVQtLKlMkogCWIOm5N/aNaZNEP7oauXHxK0pzNAJSinmDw7mb5gbG4PAUc6+wH0Yx3C8EYuHlVQgH2RU62oDgfQmEFKt71Ro6U0u5n4PhsvCOP5+QCuR4ckwUBOiTkKwj8kZObeyEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751858394; c=relaxed/simple;
	bh=Np1h4HwrbM34l3H8tjfW4SPLC1FqhG6nqKQkm0kexyc=;
	h=To:Subject:From:Message-Id:Date; b=UMFtnom4GsqoQPlrrF1JgImwFoeBuu0Au2uZGvgXGLGwBlNt15EpELdEVQKOfyFcSCrhYi6J3YVjwbvBLt2lar9Ai9R/758aUja8oNAIpD89HH/jDtfRLaWHD+VMGDZRPUJSEt8XPusGRqcWYM3b/Cork6djhB0q2ifGRq7cFWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fXjv7S+d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fXjv7S+d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D47C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751858393;
	bh=Np1h4HwrbM34l3H8tjfW4SPLC1FqhG6nqKQkm0kexyc=;
	h=To:Subject:From:Date:From;
	b=fXjv7S+dg+kj9ipQ0twmpgiXPr5WObNqb2HMnMy67JekLU/YzPQTfALXtuairlGLQ
	 GRRz/XNW6RZLuTXsAcS62BDHVwwwOsYPJpmJpL6Fwri9S0wtplnIfm8jzOa5N/LL5r
	 R3sNUtOGux2MGUNpO/FnwDcCoEBW7Zwt63AfLdKn6yBjEmBoFPlW/uj4b+eT+Kr2zY
	 EOu8aPqliuB9RcHuzxiwkYBm+TChKW0KUjGEzHfbIbaB23jQaNeyv2/KCMXc0Ep63g
	 6XOm2EY1OkwOWgFTOfRy3waZs2QlgX3CWjSn7xvAAUWr9ZHlStQdQRfUCQsaeS77B6
	 Bx9Gkw/NneKSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEE1C83F09
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175185839357.714.2702579324655810880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab17c72c5fb1f3eea1936af1b80ea1b128e112bd77524912b1b19d865c3f8b06
Date: Mon, 07 Jul 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751858393
