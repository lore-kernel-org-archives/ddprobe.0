Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217EF79F2
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751675394; cv=none; b=LHJHg7mpsBaqI+LVqH2UOG2hYMHeSFn+WYmgX0Uwq+antc8GFcfIFD841DPTGXjFpdiQnRk4gCMKkEZPNlJMqBMfkohhmEXuys6w+MfGYJ+TdI7RVaTZAlMm7E8G1M4SSuy9c3ziKOOtPa5JNGcdpdEaIKr5n+yTRaGbRfOg/R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751675394; c=relaxed/simple;
	bh=8RMn58W6dX8JJd5o4kYBeCT3lNQ9flS3E2SFq9C+eOA=;
	h=To:Subject:From:Message-Id:Date; b=kzvlS6ZIbEdD3DG7GeJCWGLp9BM7L6WKrVKxi+PDE8h1HPWecTJ2gS76qzTC4oHlcib8ZbDHLI8odTzsPIAhNuARnVQx6QnG3DMANaXJE4yeyKM4eQJr9NCXM0Enhbnxzx9eG7lFooc+oK8N6BAaGE5oDqG8m2dEqqnqahhoa50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Csg1L93H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Csg1L93H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E225C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751675393;
	bh=8RMn58W6dX8JJd5o4kYBeCT3lNQ9flS3E2SFq9C+eOA=;
	h=To:Subject:From:Date:From;
	b=Csg1L93HpjfEH3h2Hh8MuNyf3R3mlJB6F1VzZkyCwJS4NDThCt0XF/gy13VaA1gYQ
	 AM+XQg8KPIeKpDchITm1WrYiBQ71q0ErYUtU8zUV1tccNTozfcAek8gOOH04Drd6pR
	 +pAnecH9XeGGBruDKERtaOvLtB5JLTCZXXscUP7jAWhQldAKwN7xv31tzQXzaa+VIL
	 MaRhT8jUfBYF8JZOeOrOiAapbtdnP/45NeullKFNROF9qs4xeOdvo1M4/OLctODFGd
	 O5wO08IJyewAn3pByglUYtf4T1TJws7lz5NNgMNQr7pRtM5l2fjqYylCAs7EfXVUhY
	 +296gakRn8NRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED6FC83F03
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175167539357.26362.2712985009451069316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77f3827da1349cbe7822fe5b4a8a0419613d8b245e33d2ec4ffc6b7643bd93d1
Date: Sat, 05 Jul 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751675393
