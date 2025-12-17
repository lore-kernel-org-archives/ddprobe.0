Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C50328B6C
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 09:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765962235; cv=none; b=eMc760gQmZBTEqRh5YahqjO60WMBcP5Ba4YfOCUgIhOFpJIT9dhrQDJ/W4QU9EB5IsH5QChsyb4PL/HTiev0hLhsg7+KFRLV9uKmFHG+gq7gqyUNg/891hNnaYM19V1es2XaOHa08F8KJRRxLma8WMn7MH4M5vPH0WRDMVFNx2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765962235; c=relaxed/simple;
	bh=u3maFBieQ4Uatv5oqmTvgoGkoYwHuX8Uc3CL+TZuVj8=;
	h=To:Subject:From:Message-Id:Date; b=haXH6JgbK/uur+bEiWs4lC8ZHGzZ35fnDXbdO4gebuLXNz2oxo+mOM+aXEwUzfzbzgd8RW/Ro7U++OHV5KGRAzy/27SYjw1DY+/Uw72/7aEKQCpOWiDfj7gbYnFDN5NFJptU1fyin1qCjrvHz2avpj/3PUXBxXLxabLOW7TJa+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/e5nTtL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/e5nTtL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEC9C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765962233;
	bh=u3maFBieQ4Uatv5oqmTvgoGkoYwHuX8Uc3CL+TZuVj8=;
	h=To:Subject:From:Date:From;
	b=r/e5nTtLjZ3NPHpT16lL3xj1CZ5BOZWdLn6l3VA04XxGj633NSNIgxW34G68WJw/U
	 V/5fvj2RydM8tX9ISF8IvbItriJt2780jYG7gu8id0oCi8AE+W+tnNVsnoMB/R3SM2
	 HcnXPX9wAswPLgOnbaHaGQ3zJquQm87xbKGd0/zG+6ciOhgg0f5GP/0hunpCx8s11X
	 +CxRKHmDqO5JYwudIgfeTEKIUaPorcaJ+wYcAKz9jzpdvdo/dcJWvtyOV1q+RgHHEc
	 o0Tbv0XN/P9gVsBYBDx2Hf9GIFLFqkdHbs812F+RUusjYdlMFXoOL2OmOcGlbz5bHP
	 C8ZhDNOPeOYZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB6DD64093
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176596223363.30061.8159707496337702572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c301b4241846ee59db62a552f05178a67b90842d328ad53ea5c170db7c41cd39
Date: Wed, 17 Dec 2025 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765962233
