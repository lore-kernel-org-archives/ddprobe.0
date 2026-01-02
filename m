Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5C22D8DA3
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767384834; cv=none; b=QZHStEDmBOk3arv2Z0onNW87R+H4FFaVMYjioNfd3gle+ev8Ody21zQJwYuIWuXqS0p8exUIQJOb6YnmAIa6i1IIzYzlxad3o7WpNEpqtLwK3Qt2qhNr9IF01NndjxIbizP1lYQRLduTep94Aa/KIzycX14xJwXWzK6IbgJqaKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767384834; c=relaxed/simple;
	bh=pltj+zRPU4ZbMtW16CNy9aCft5C6PtaJuNH0DBlXqwY=;
	h=To:Subject:From:Message-Id:Date; b=c2xI/Asep1PQLoYfck7KMLHCP4JkK+NhU/GyJFmrZYdhDYz70bRmUh8mfWlqhjx5mzwi8mMFAkpeK+pdrejHpegTTQv5ha/Ymq9GdXIaMIPLIaTfhz97Q0LcVUxQshe3/UpTW8otRfImVfIMDvZNRLAavg46pdFK+vXHcS0QFZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LN47oooh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LN47oooh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38E9C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767384833;
	bh=pltj+zRPU4ZbMtW16CNy9aCft5C6PtaJuNH0DBlXqwY=;
	h=To:Subject:From:Date:From;
	b=LN47ooohNCbqJYfPh1UbiRqMX3xmawB7lBcT+AbeBwWgjk079kRp/vUjQNB3xdp7J
	 HHFko9SA5JKAHVT1Lio66EhzVuQIZr3InhFoIYEOUXgpaYYShnWwaxN5NKoGzvCR8M
	 piIh5hndFze4RQ6UjLVTAKg2wHuX7jdYRQVc1yK53b0JozqhlfghmK1lP5E3xoPQpl
	 1H8OrCvtIQiUgR9M35DhWh9XivLsGDkA9MbTwc2gbgegILG4waforLjsQSdPgI5fx/
	 DjyppgUSMMvkRfo4vIIl3rQ1HIjzDhryBykShq6nIhEMGu6wVzjJvFQ1QMeGkMCf+3
	 HNtHIrI+CdH/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D88FA3758
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176738483358.28740.9191780214086531732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9532084a50d08b3466758068dfaff9462d69ed7afa23918e0f8bb4404fd0b7da
Date: Fri, 02 Jan 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767384833
