Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2FAA92E
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756171194; cv=none; b=Z4cgYj5+lP8QYEVh7yzwGUsxmEC9c6fwr2RPAMa1bzi1A9WcYN3e7F3AVhq/1zWvqkTjuzy8KsblubTvsAUByQeYn3j8gNjOCKB2I7jyMbQkh4H1WAZlXo6gouoyR95zqF6US9cSoVnQUSMQ0cSYz3srRuiuE381kq+gflZ6qB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756171194; c=relaxed/simple;
	bh=A8C9OQLIAnU5wTv1uv6UodHXtOLrR019oX8VJyULJS0=;
	h=To:Subject:From:Message-Id:Date; b=qVuRVLNRBSJUQhugWtxhIdKWA1+B0bFjtkG8l7BHWiGWIJHxJAiZTM44bFRgFadFekGY45sB8so6IM0ulLP9u9SkIJ6kd1RBH6zhRjha9dJtaJVQZ2g6YIj7zbqexrSYgPIwfLOM5T2Xi5JoSiQt3B6PGw1IDn6JYkLzNdq0pIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N2L29ygK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N2L29ygK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A718FC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756171193;
	bh=A8C9OQLIAnU5wTv1uv6UodHXtOLrR019oX8VJyULJS0=;
	h=To:Subject:From:Date:From;
	b=N2L29ygKRtq9kHiFiTgDvMBjEE4O8lzPPAFnvJoM0wW6Bq+y8sx1pLhWyWieFyFgG
	 ahD9S9fsOxUiiCrBj/jUXhusPoIcXXl9yA9jM+ztzb1fiv4OL7Wk5QkxOPERGDdfas
	 OkepSIHSTOcalTStpQNTbHIBXVNqzCtaNRZuDIFrOLwMT7iMGJucOOGBYC8EBWdVfj
	 xwgikLEyJ3QZpIvNsNfPT17R2C/p425sVGHeYkeO0WVTu9xFuZkadISzYjucVV0e7V
	 5sP98sXjrofrRuRdsoyeSmS5xgAQqSS60Du6ca2oBi2bYu6LHZRDG9YDoXpo8I+dgK
	 sseX3xJyRPsEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91573C8303F
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175617119358.13565.18059325058222950515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a87ccb7a07b920df55124ac5a9eb6da9052dfcb13a8a7f33d88ac373dae37e01
Date: Tue, 26 Aug 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756171193
