Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E91C377555
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786945834; cv=none; b=LvlT+/xYfU6dTN9j9YgBrr1mIGk18SarRz3uNLKflpcwiEoAXSn4HSHKgA2wClBC6DXUztiCdqDhkc/B5Bxa+b52lhEUjbcaWodxeRzBKfw1aLk2D6dJBZbGPxf82B/Dd4Kdd1j6XKann18ly6WoH3mr9kRLMXAOyrN3haV+5wM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786945834; c=relaxed/simple;
	bh=W+bwaFzATUe0P7coMKS54tAdr7sGlf0WBrzL6AIbNPM=;
	h=To:Subject:From:Message-Id:Date; b=IFGwHqO8Ktq0jOVICUMppYdWhWrfAW6ldHhU9P2h7AEgFca7Ffl7FASnAWFLcr0C99GPINRIsYoR+44y0vjIJ5r1NVIx4faTM/Ofw8G0hjIfdPpDlIGAuKtSAsK7XOY0gD7V4gz9L7wkXc7IVi4b044Z5TyNJhDMiwrzaYoTY6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BR94Ir0R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BR94Ir0R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D548FC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786945833;
	bh=W+bwaFzATUe0P7coMKS54tAdr7sGlf0WBrzL6AIbNPM=;
	h=To:Subject:From:Date:From;
	b=BR94Ir0RqCZt+Xo5obNzKPC1qIH09+Q/7fljNVhXH/CYXRFpQtItThkImjd8wfAnf
	 ry8OCRAkS/FsUW5xw+68By5o6WbyrzoFfwQFdISaKLxENppykT5nZxL/LrZchtUofy
	 ye6f3yS4jGOeVpaf7I2kSaRWeUl9KcEQ9xK8EIH9jzHo0QdBpWffBeoV9b8A1fpt60
	 QZcy2Qd0KqNfNVpbYLmQ3qfPXdPmxqPCOvzYuq1TyFAfZ0UnUsNUpDuy9QL4lilAm0
	 xN/ONSRK6gHlVkCSdhHE0zzj1xl/toRs45tfqc9089QqdgW7yZsPmIbe9Ojuum0BB3
	 K4xsEkS4g//UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0299C5CFC1
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178694583368.13945.8417310274415032532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27c4022c334b3bec4a0b29cd702c2879e46a459058b6ea65a7940e689f3870bc
Date: Mon, 17 Aug 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786945833
