Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0E6DDDBC
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712195296; cv=none; b=BwfTN300CiRQAckncwMsYKT/e+z/tNzuRmZ017Nik2ewmqNEHKxOxDGj7HCgqw6QMBsM6aHDAueELICeKjmVvgBWwysQ8XvhK3cIQFFz/ErIZQ6Nkya4PC2Yo8mDbaf7Emq2+t9xPjvurQRE4XMJwrXrIuw2VQYqat+2zjHCAc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712195296; c=relaxed/simple;
	bh=aIH1o7a0PzAYTHVPS0Oqfq2p2S3VSX2ZajUfcMmqE4I=;
	h=To:Subject:From:Message-Id:Date; b=GOSKbkRAq3zNtgYcaM6sWi2zPwhsAJORk4/YyXS8WOOJNa9XNoGds/91bHjJ8yyqrk+qEP27yE7wq9gvXvjfzON2XSvZHSKV+xQFQ4f95KrZ6T+c1QcN+JLPK079yV1mQ0DntQ00zZB5yJsxQwHylx2GLmDpKaTfCsXhOA3uAUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YX/2z+va; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YX/2z+va"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75FFCC433C7
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712195296;
	bh=aIH1o7a0PzAYTHVPS0Oqfq2p2S3VSX2ZajUfcMmqE4I=;
	h=To:Subject:From:Date:From;
	b=YX/2z+vanUIxTduGAMZmMdE5pFty5+gY8Ywkwo6F7d2satg5GDBraJ/nfg6Y+V9Ba
	 61tdimL32HzpFhHw4Nl6IPih10K7Bp6NQV7rsJuyD0TVhk6QWxG/bPoYiZamQiLi8c
	 v5s/HlkMxauYyrdQ/flSA6gtIjsc6KXS9yruaaYK4l5F1iXhR1InMc8yylmjnw3y7c
	 LNC0oLwminVbB9pKp/Lj8p0xLcKqoT8I02+I1/wBs6sV7HcLUqUdbOZfHfBo+7mCLI
	 uYNekTadsuMgqMeuRTu2eBAtTwiJRm2ia0hTNCLB3dsnS0Qqxu+6WFzOHR0uDkG91K
	 7PU6nmO36dShQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61884CD128A
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171219529639.8291.3420131030874519885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4f94443a87067ebc6be2bf0ef1812b876b99d5fe5db69a3e8b7f4070780ba73
Date: Thu, 04 Apr 2024 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712195296
