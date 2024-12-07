Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233EF4A1C
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733552154; cv=none; b=Yhu31V/Rif75/EI+2caKK7U+SKadK5qhKkYA+iazT8srRBqt1L8pXe9+U5h/HROWanSx2lp8oPok19VJrg/m56RCP2vYkAAStyup8YlTJhkn377Ry5Dx/1kBtyRciz8vVjJAx/O6yb2hQguvTQn+gMytfy3FWTeSnb2Fpt73iF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733552154; c=relaxed/simple;
	bh=aYVC6NB3kuTvpiGO7eHKcH/uWXylA+AMqvVAsAlCoAk=;
	h=To:Subject:From:Message-Id:Date; b=XZA9MX69XWkuIoX2LZH1FEnhQn+6Bex8HSMS8vkVDixw51WENmMtQi+TD5Ia1KtkNaXr/dZYYw9BxsCOOcohB56UmuzsauoHnxXBtzZpBuCxwHyI/X0TZiyQb1btm3zLlCo0C/I0i2Fk9+xAyYPJvEAjisnqgpHJhc61VrOpdf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hLZ/5mrm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hLZ/5mrm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29ECC4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733552153;
	bh=aYVC6NB3kuTvpiGO7eHKcH/uWXylA+AMqvVAsAlCoAk=;
	h=To:Subject:From:Date:From;
	b=hLZ/5mrmbAgbyA8JCMkl1LXbwY4KcvBL62Z0u4ExSpNeidbIsX58i5A1woRwmIAJ0
	 ERROX9YVSIpdPBmJ3XtnRP2DB8KplRDw1QPIH7NAXirUxnWGJgtwGUoYjEXGJOXRVk
	 Mr2XLATR3UUofHXY5LYDMDZ8aIrSribGcVDmj+0K6q0ckp8TaHMHst7Gdkhz9LuOfK
	 gorhp/Zr/u1VlxDTGrp57WZugb5m+sw0SbPrrbedr3fuSTlwLNORxx/YQxQIeEBKi7
	 X42FKXcqDges2+dlomN51yJOXUVRW1SBrSdRIWffVAX06+0yKwAiSurVVQPJLwVetT
	 8g8Jr10Ap1cSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F051E7716E
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173355215357.706.16648250479545035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bac14a21375809283bb39d59016c988e326f9c1aba4ea3586b78d87aec9676a
Date: Sat, 07 Dec 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733552153
