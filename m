Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F757143C61
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 05:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763530914; cv=none; b=EV9LwvyL32PkddTJLz1nu8iJSap0hLg0boIkdr8CnM10BG3ZrgQ4BRkJV1bxta2whnVqjhaLXxn5AwrvR3xXxm8CZ5msW9fZRiMu0Qf/wwN1ytny0EdWr51sivjbfW0KZjCfF8lEoNEiRar/5uV4chlMaoDE7oMR0CxGDRLWXr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763530914; c=relaxed/simple;
	bh=++aBvMYN1L8T8OuXl43A3NlV7MKnRies98SIQVfC55c=;
	h=To:Subject:From:Message-Id:Date; b=jminx+npNjV/3yschNyW5u71oQGbbr8T69hXN8ruYRRQ6XHThODGpufB2RMpLjUbAnyfjuEtORKcE5ozAO5OADyfwkco6iqI9Y70EO0HnntqrQHzOtvf6pscfwDDIrFut4M/fHDaFiLNHbb7YSsRav1GqIlnvIm6cjsxrLP/HMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f29E8qjy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f29E8qjy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C34DBC19423
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 05:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763530913;
	bh=++aBvMYN1L8T8OuXl43A3NlV7MKnRies98SIQVfC55c=;
	h=To:Subject:From:Date:From;
	b=f29E8qjylAn30BcpCeGkubtMCu8ixbLAM2XckFU4uDtixKMllqvMUhR51pSkkfvb6
	 BA+uQqMwEwG48xkcSEKpeSNoVQAUEexIabcol1oGE18dRihVKrP9hbUefpefFwDbKh
	 BDRdKJ/Gf85ifM2d4/H+IPXwku1TR2L5Mc7pXweELzeZ5KZzY4OdlMDXOjIMb7ipX1
	 b86+HVgwo9ZlMYZ9lYw8cW33XnMpeiDpPKVGeW4zwX4B0XPINT2nEhuRGs61Nmpu5c
	 B0LvBDCP9oq/dMUTir0U5A758GnVig0w3Z5UWDwplx9aVLYGjIa4iH/JSqtYFuKkL9
	 rj0oKWN61axOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931D5CF2570
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 05:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176353091359.23596.8684663815297822735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55ee5ed4b775945cf2103754acd82bd1878c8950ab7e908a36269ec413b2fc1b
Date: Wed, 19 Nov 2025 05:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763530913
