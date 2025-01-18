Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B27910F9
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737195354; cv=none; b=lIHABMvmwUytcLRp/qKM87HGIH2S9Z8x62aDKDvGIu8GnWg71WBQgvAxYQgkzwEl0l1RRSda8xqqUmMFq/Hrp0V4uGr2c3l7n6y5Ic9jO45J5vXZcogwyQP5WOvVcgqEf6Om1ZKQjGL1tDahjWrnVXDdUfBo6Gvf0nyM0BaiL1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737195354; c=relaxed/simple;
	bh=VIQxRJ96Yl5XU58MDNF4cqAeZHil9H2elAF0BDawvGQ=;
	h=To:Subject:From:Message-Id:Date; b=FqU55hd3lXzBly9N+62nQY3G97A7vuc3zo+v/6iMoqF1pnBZP4BrpnnL+sHQNHKTNlsCKogMsrv8EUFaIP8SFKQEz4wMk1LMeUxMJbOqXcTzfCqunTipL/uJ7Z4CuU/5Vz04+87R9EYaB1MXK4+g51xCzRv+506PP7wTJx8lFEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5VBO+L8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5VBO+L8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1ADAC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737195353;
	bh=VIQxRJ96Yl5XU58MDNF4cqAeZHil9H2elAF0BDawvGQ=;
	h=To:Subject:From:Date:From;
	b=C5VBO+L8Z/Pugvq3XB0JNdylGdxVCXTiqVu46AZB4uZx5lvGsZ9CunGKaGZOFk2Uv
	 mw88gMOM/ih7wm1lHsp8hsrbZczRNhXl3f3SPKUte+dwScpDZEjK80Dk2xmb9sn36m
	 5gqBJszyzx2ijPzO5+EYjbIMKq1bynpG8/J/gj+gfpqMAxKwIxy9LKfbf96zUpH6V9
	 HzSdnbh7j0Jg+WTzOI8QguVHRr5Oasgf6hWkpfe7XYK9DK5RrB14F8YIvCpZ9MbdZK
	 ggnozrCFG3vJuTwMDYM+ByeSEdwnetJq1YHFAUVUK3HK0xQhEL4fzzrgOjtlI4J10B
	 Oke8UPb8VXOPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92368C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173719535357.32292.4025595629799355475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdf389b73e6d0dc9179fa1b19b62319ba72196a5d5612a6d32718262edef199e
Date: Sat, 18 Jan 2025 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737195353
