Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6FE2D0C61
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762155594; cv=none; b=gBegFU0ABzKBGGkaoIdUXPcUw7wV3hRia9k1CVkeWQo7Qd2hI69O8JK6kOj7vmScnbR6Aq7DE48DswfYooA6dFY0cdsG3kU5la+QQ1DB64vd8Wn5fKA0qFb/+JAFaFNOOehMNjrRYkBK0YqYLc82H2zzNOac3sitnx75PaSQBZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762155594; c=relaxed/simple;
	bh=07f9rBhsNgj3zlkVy2xJQf+IyyeNzXnsM/scuaHlKo4=;
	h=To:Subject:From:Message-Id:Date; b=GT7GXDSrB1jKI8h2qo309rE16UI8A6++fHPLvzo4szUrFDcJcqxyaHr9LlVNf8OSUrHxlr0I1FfB6oyls/+X8hJtJ30x3ByRCLhv0oQ/olnIFkavTTgVVQi/ze04y6ASiyhkc11+Gv4G+gQW17+SuzC3CPTWImi2ET5FsTJA358=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RBS9Icb1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RBS9Icb1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD038C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762155593;
	bh=07f9rBhsNgj3zlkVy2xJQf+IyyeNzXnsM/scuaHlKo4=;
	h=To:Subject:From:Date:From;
	b=RBS9Icb1nHRiyVMj5ev9KLFeULnvi9HyGDnJpxve+jsgDV7YZBj1tApUQGqOOrBbz
	 pyLG+MMeh6nHrV7PlDabyWCyNpuDjR4w+GtmcyTCu7iBoTCaBXIqOCZ4wtNz/BOZRZ
	 DvU+tFwgTAD/Fy+ieRMO3ObbAkpB+drcUrnGGd2JU4WZD9UYUiGrfgSFEn34EzUSOk
	 WI0L3tAUsudpx8Hjpan1E+tOhyAIPVPiFmUJHLsLh5zoAo5QeilK62hZD5HUKwNAzO
	 BU+bBiNlkDFG9Zybpp0nlV3Bdj3bS5Q2AnKwaKwWkYsA9KbGBSwwZLj7p5dQP4yCVa
	 cZVsQuuZ/Wxog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7C8CCFA08
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176215559362.21458.8598711426350922380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65c8b5feea38caff902dde32f0d06732f4db4898b878c1bea93fa85dde8a5b83
Date: Mon, 03 Nov 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762155593
