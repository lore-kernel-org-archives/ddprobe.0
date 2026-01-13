Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF49354AF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768334034; cv=none; b=KiigNrTOSL+pZo8xf0sbd4Hs/L15yOk9WMvJWWI52J2pl5oIhT/sx4zajVpa1n9yjc0KxpgvYqD9iJCqMUExsZ//BLmH1FtXY+kW8UbMWILsvgX+dCXkGcBLJZS8ry9P/XjORZ302lL3h/9YQsCPk1bq3i0Ayh9Tu6Uax2Qp+Ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768334034; c=relaxed/simple;
	bh=QhrvnfjSLXW+ndNJnCeMmCWWIs1KRgdN14BZBH1+lRI=;
	h=To:Subject:From:Message-Id:Date; b=K28BCK6nrnQASXDxSL4vlhuv4vIDFKk5H68Gji+vE2T9W7YSLAbuONGjobBBZEEufS5AkVg/pufjHXA7oPqLR41DxhnbNzH/OuqzLQOiYzKd8hGLTLrXP0zYwD7ABWjKyLy7uqO5/AxTYSF47HXznhEK2B6cViht7jjXiMS69tI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QN79pwzZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QN79pwzZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF4EC116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768334033;
	bh=QhrvnfjSLXW+ndNJnCeMmCWWIs1KRgdN14BZBH1+lRI=;
	h=To:Subject:From:Date:From;
	b=QN79pwzZKvq2Ne4IaqQwsdwa2JhXCqikHCjCfdhBzxg5JWZZ5ZSWqDW2QHfl/v7GD
	 J736ATxlPcwzv9H/8PhczoJb7nKxoMTURDFayE4ApA3oNyjE21jihbLlCD/mVPoYWL
	 aCIeEZXBea0JyJi5l0W7OkHhvXQIbuHFZxfCC9s+NmTzviwZ000zS4gM0lcOz215DK
	 oJXI0/BcLoaVWXZxpEcBms2ZKD26lZ7wrh3bsr6WzpRnMAHvSTBMlbxOwZSV1RtULb
	 3SlTRtJ/2v0b3g2qdkhMRdkH4W05w/Hw7l6XfcC/5L9ikhb4tM4koy1CFTdV57PVjr
	 jdnRNsDT3cYZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904D6D2F35C
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176833403358.22418.13172629226109506408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c35ad72490e7d3efc1d21d0cd37d6d3851b01d1d00f9f2f0c81499031408bbe6
Date: Tue, 13 Jan 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768334033
