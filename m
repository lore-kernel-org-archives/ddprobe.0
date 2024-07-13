Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7270818E20
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 19:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720899023; cv=none; b=kUBFEaxQ92U6N4bl/18MchfmgahAH8Z5XfNGuiW8g7dgIh8suhwoOYgpEkMCO9z3V1lMCtCb82i8Exo24qGhB8sWMUncm4i04ZCq2gU/Bh1YKPSTfjKk1p5igQ5yQaUiSj8MHQE4xdXFrznG1ghP+wOTQud1XB3DBCrktgifXhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720899023; c=relaxed/simple;
	bh=Y04Iq/dti+VnLNuNSKleSmUpBL+Uv+qc4d/XyyhX2aY=;
	h=To:Subject:From:Message-Id:Date; b=IV1Lg/a9XdQo6zKUVpDOWdZnRuBl7cafLjw/m1pMvVTSEvvVYx3Ouy850Qcg2MMSYNGZh/J5QFgE9mhg+an2dh0kECrA79n2qO4RjJuJbYv7yKKcoYOl1kHlBuGrL/UvVQNruqMY9UfKm5crLiMLFrre+HhO279UonVegoTwCNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLWyMdJS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLWyMdJS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09E46C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 19:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720899023;
	bh=Y04Iq/dti+VnLNuNSKleSmUpBL+Uv+qc4d/XyyhX2aY=;
	h=To:Subject:From:Date:From;
	b=jLWyMdJSHdL4yiKA390RU8JhPmgj/OPTr57/H/uUWTHALWDuKGd36KjDy+gASVUCS
	 F69cQpbdTDcKs7nKoFqZRXTfWek/DUDOj2SWiQi9Y/b3c1R96MP50mcJXI6WhkIGmB
	 cUgm6fYTQ+QEYBGdpmpuBQjEkN/+Kf1I/W3a2qyaHazgRB/NWiN/dWV3ki3/ud0805
	 wvnIaWqs6EHBQsPlNw3UIsifD3+ST1N8KtcLMF1ZksE93QVLjgNT0u/tyvKW4xuwcl
	 7kNp8j3p8qojn8h4MZgBGWEUB16vGm467rotsX6oaa0QVgtkUuyCA/k9J+F3e13Whd
	 axCzTzXUc6mJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E034EC3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 19:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172089902287.24394.6552219676148870886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c54c41c4aa8618f905a6b9426860e1b1e0ac5566149e8d2baf3a553a181f048c
Date: Sat, 13 Jul 2024 19:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720899022
