Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B103FB8B
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 20:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716323003; cv=none; b=n6Qy4QeZF0cen1wKECuHaTrsqRAB433x4URP0+UOJsLcuD9//iR0f9m1K0yBV5KQcnZ1G8MVDjosf7XVfy3OQyOXhypXnazczwc7sdDR7KBJVVsr5/9afNgX/jbrVC2PyJFgN5YrneFBui+pRXEg7KicPuHibVSzfeoC7o8GI+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716323003; c=relaxed/simple;
	bh=Jeo3NlDTMpwonZhMsrEafHqLD+e2zf2hdAUPjFx3gQ0=;
	h=To:Subject:From:Message-Id:Date; b=QLQgk1Tgdld4waU8k4sq8gNTuRGRw38DbcOlt30v/5u8yJ1gSvbHRFL8LHQUSt45on6VIzl2bnCcwKuMqcj+rw1ZCfVDB0IAD0zpJw5xA8mgD5MuneUkj8SN+jSEb5nWd0xqVoBOUCC2NZ2Yvchtrf0eEKPd+8uCFrZdsk9HX8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+lqBSvJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+lqBSvJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D51AFC32782
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 20:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716323002;
	bh=Jeo3NlDTMpwonZhMsrEafHqLD+e2zf2hdAUPjFx3gQ0=;
	h=To:Subject:From:Date:From;
	b=J+lqBSvJqrhvOxWrRP0x6oHEXF12CBGociLYyGgCtyccywZa6wkoTsb2m41YjcIN6
	 iQIGyNYsy8llM4dQAiMd40JzNB0YytiVuKgKMb3W8ByWFqneF1KJwjb+Z/qTLt183R
	 s7gngFvYg+sTyUOjb0smCwUHjiJvxNetas0mAHOvZD589PD5cEH3hQBcRis9oLtXtW
	 g9ea+TFkqv9Akd92otm7MR/mezTP5aWJwvJ/JtY6Hb328V0N19ksd7/xSGfleB1OTu
	 z80gEU2t/wwnmdVxRojyUF2ABt12pT6ag6Bcg0Va7GJOWxyEFCLHoc9TZdik9iIRSF
	 GlDLjBOTdU3rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDCCAC25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 20:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171632300276.573.14304124636003830027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28d2eafe18da10cad53e87bca5bf62c328c578d64d62ec8900fa8b9b0adb98db
Date: Tue, 21 May 2024 20:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716323002
