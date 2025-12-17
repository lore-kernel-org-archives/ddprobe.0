Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2099236C5AE
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765979034; cv=none; b=hhI8DRPeQVrPt4vjUbCywtiSkICG/Bbz6kIP94iqVvUo4kYwBS+j9lRsuQNf2S0NEFm+QbntQECqN09tLfO5XeYP1NrPndIPJcQxnY8F+Zqpmn4E029uqnp1LB6U09VuMX4lF6WkQK6GgveVyhCghkz+za1QiVA4mq6XzB1zxcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765979034; c=relaxed/simple;
	bh=ivYvs3/gC0IiX3ibiHgsQ84OaGrkiKYAbt78ryRbVrY=;
	h=To:Subject:From:Message-Id:Date; b=QAwyaDkT8AyyMrEg/Lmw9g7dqisFQ1YtakG1fotNjU8kWL5BKUEbYN26n3PA0lAO/ZlUNpTTvwc+lS9ifop6m/J1x166+f9KfjzFqJJi0c55+9Xnxqvih2rwELgNEnuVZePVTvku9T669Um361VD0ioGundwDUsPoRaYe8CJqJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODBMh+wQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODBMh+wQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC40C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765979033;
	bh=ivYvs3/gC0IiX3ibiHgsQ84OaGrkiKYAbt78ryRbVrY=;
	h=To:Subject:From:Date:From;
	b=ODBMh+wQ9eG1biIkvX6yg7aPf6jyGRGIvS/BB/UEj8ZIHhVZI2750ogJyHtKjKxaE
	 UiBWNNllhAU4prIsZmPUa8d297Pkh0Y5LMPZC44KQWK3ymU1WSn07SFhWVGCgJZ3O2
	 KfQvz08HXTpFFHgGRF+qbiXQ6iemrA3yBwZhvQ54hDCGuxnyOAdeadGOxLWKVzIivV
	 6yUecFfxCjbG51xL/A1zH+Aai2BEG8HH+1ThZIcYHCIjJbgaynAU61xIFFLxwSEEay
	 gLFywFTCbVw0unwDB1Zo/pNBMRkwbZFWAjN5Rglyld4Uv2w/2hLddDCbVsbFZyOEOc
	 D4SL+MHreUC9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC6ED65C46
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176597903363.8703.8102389859735823022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8630034c9ec6b05fa4ad7d2599d3ffb0706e80429e0c5c0e12a39e3ba705b0d4
Date: Wed, 17 Dec 2025 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765979033
