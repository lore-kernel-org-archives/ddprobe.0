Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA721396D16
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 10:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776680254; cv=none; b=TiCZIjfEFpWGZQOdh/XhoeA7I6SJZ7xLj6keErCkyZbBGcSdDdTtTcwu7W9PSuFY1aheYcgbUKuoG0utfCtaH4cuqeUAty8buo7ZAsmGFhLwIDTt2P5xWJZDDW4/Gdh55k1YNPxUxRTvY74LEGIPMQ8RrL8Zurzkm0xp0UyWv3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776680254; c=relaxed/simple;
	bh=Ijf1ePYxGRr6sOOxjemn0XbePTJPHAvk3oNzfQblqC0=;
	h=To:Subject:From:Message-Id:Date; b=Gtsx7eBXoozVakPlH3sffb8554jO9u9grBYGwRXzMVZ2RLwN+YWnWRupno3jM+kxuwVv2NxjEE1wk7BgI1sd6QbglCeIWhKvsgtJ04E6mEmpL0dLtjQEH8cdQQ7S/KSbSOk0gMAYczeVhWgxPeLRxmrP4soPqGhxf71DjYnKvJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DicIBU27; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DicIBU27"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F83C2BCB6
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 10:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776680253;
	bh=Ijf1ePYxGRr6sOOxjemn0XbePTJPHAvk3oNzfQblqC0=;
	h=To:Subject:From:Date:From;
	b=DicIBU274luu76UIW17S9fQDe+ehUNdlHNTj4AtbZHOmg1Qz1SmFuYxMMjxhaMcw2
	 ieu8DeKa+hohelj2hzF1qLF5FB4ZSDpyuebnKnzmUqjbH+ptMVSC1VTzGcCvmLSIcv
	 VQf2PTaQ+jQ+TX407DAFihWPvNJ75Sh1By4noHBa7oF3vCGAQnH9Uicak4IYDWz4L4
	 rJ3ohWaR4nnPgByZHreI4JYVE24mW4XLi2l8FMSKj6GzipOE/0lDGDAeqk6lcUmeWd
	 Nb9KgQdJBzfPenVUO9lKf0Y3cm6L5Hz4IS9E1OgE3M5AK2rMpg0LEwvMP0fSAtSQ2W
	 RFDvM+dNOdkrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA477F55807
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 10:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177668025368.20247.17404516090381257143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b4f75437f26c8506835df0a77ac4559fa710837e27f617328f2ca1cf035f0e6
Date: Mon, 20 Apr 2026 10:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776680253
