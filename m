Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171913246E9
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762865394; cv=none; b=oNYeJeIxZ0spIbWMiYgT4lJ5A5WWo6M9T6XFbRIZ6U+gxb3mYooeWwClFvrR5i1wwpfZrdViSTk4e8zpBWmHmnfAinqHeswSLB5nUxJf8AEwirWpR644IZ+RtByFDRpJp7ESH2mjZZOnXBzbGyVBatEHJIQgZLzh9HTDWAFudr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762865394; c=relaxed/simple;
	bh=x0OxKsk961S7xPUHqgri5r6Ln9/96NUDu2LeYCjG0B0=;
	h=To:Subject:From:Message-Id:Date; b=UA6W0VTNvbgUrfCt+p/N3oUsq4p4r7hcdCY3EKG5H8Y2TTSxM78GgrVwSWSPZ014+oshfKRGKghYzb2Di283qhv/lAY4QzBAXWki6AXCJvdbDMx8VdwReILbh9C4SqYhQxI68tnulIALCgNaZ6sgtavA126fWGwD8MJBpCPS/rY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F80Jsv1i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F80Jsv1i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BFB2C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762865393;
	bh=x0OxKsk961S7xPUHqgri5r6Ln9/96NUDu2LeYCjG0B0=;
	h=To:Subject:From:Date:From;
	b=F80Jsv1iSwf85ncqnrVyhibtnubhQiTkLsOP+oaRXQyRvp85nYLKDKeq0w+l0qhMH
	 TqCuiFGD8FnXKPa/KTEYOhwxr3ATu0UIPg1t6/ynjZzPKsQHzY12tSb4abgHxjBbwF
	 WelICFP/yHmOWbnTvg31am5Y+755hrQgDeZDh2DhoD2FOPrTimPBW/2m8SJAgQjQ2D
	 LvPIxdl6BZuvl2aJejnaCELGChoyp+2uV1SY3CaUkkIO7Ecak3VMXytRF7NxfZNqPl
	 6lAyKrt65DdO2kOG0i0KVqJafP5IP5X69y8v+nvh3mS8B6Sp7oKI9X8SinF4tts3x9
	 dVQAGElPr4aVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5ECCCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176286539358.23591.11536408436891373081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89c7bfaddb80138b0333c79e396ca28ac0b2131d162d59702376eae995f92e30
Date: Tue, 11 Nov 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762865393
